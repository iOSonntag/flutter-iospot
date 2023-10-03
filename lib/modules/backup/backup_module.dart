



import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iospot/_packages/extended_theme/theme_data_extension.dart';
import 'package:iospot/_shared/extensions/widget.dart';
import 'package:iospot/_shared/module/module.dart';
import 'package:iospot/_shared/route/builders.dart';
import 'package:iospot/modules/backup/pages/backup_cases.dart';
import 'package:iospot/modules/backup/pages/case_add_path.dart';
import 'package:iospot/modules/backup/pages/create_case.dart';
import 'package:iospot/modules/backup/pages/home.dart';
import 'package:sidebarx/sidebarx.dart';


final _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/backup-cases',
      builder: (context, state) => const BackupCasesPage(),
    ),
    GoRoute(
      path: '/backup-cases/create',
      builder: (context, state) => const CreateCasePage(),
    ),
    GoRoute(
      path: '/backup-cases/create/add-path',
      builder: (context, state) => const CaseAddPathPage(),
    ),
    GoRoute(
      path: '/create',
      builder: (context, state) => const HomePage(),
    ),
  ]
);

class BackupModule extends StatefulWidget {

  const BackupModule({
    super.key
  });

  @override
  State<BackupModule> createState() => _BackupModuleState();
}

class _BackupModuleState extends State<BackupModule> {

  final _sidebarController = SidebarXController(selectedIndex: 0, extended: true);

  @override
  Widget build(BuildContext context)
  {
    Color canvasColor = const Color.fromARGB(255, 255, 255, 255);
    Color accentCanvasColor = const Color.fromARGB(255, 236, 236, 236);

    return Module(
      router: _router,
      buildBaseScaffold: (context, buildBody) => Scaffold(
        appBar: AppBar(),
        body: Row(
          children: [

            SidebarX(
              controller: _sidebarController,
              theme: SidebarXTheme(
                // margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [canvasColor, accentCanvasColor],
                  ),
                ),
                // hoverColor: scaffoldBackgroundColor,
                hoverTextStyle: TextStyle(color: Theme.of(context).primaryColor),
                textStyle: TextStyle(color: Colors.black.withOpacity(0.3)),
                selectedTextStyle: TextStyle(color: Theme.of(context).primaryColor),
                itemTextPadding: Theme.of(context).dimensions.paddingSOnly(left: true),
                selectedItemTextPadding: Theme.of(context).dimensions.paddingSOnly(left: true),
                itemDecoration: BoxDecoration(
                  borderRadius: Theme.of(context).dimensions.borderRadiusM,
                  border: Border.all(color: canvasColor),
                ),
                selectedItemDecoration: BoxDecoration(
                  borderRadius: Theme.of(context).dimensions.borderRadiusM,
                  border: Border.all(
                    color: Color.fromARGB(255, 191, 191, 191)
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.13),
                      blurRadius: 5,
                    )
                  ],
                ),
                iconTheme: IconThemeData(
                  color: Colors.black.withOpacity(0.3),
                  size: 20,
                ),
                selectedIconTheme: IconThemeData(
                  color: Theme.of(context).primaryColor,
                  size: 20,
                ),
                
              ),
              extendedTheme: SidebarXTheme(
                width: 200,
                decoration: BoxDecoration(
                  color: canvasColor,
                ),
              ),
              items: [
                SidebarXItem(icon: Icons.home, label: 'Home', onTap: ()
                {
                  _router.go('/');
                }),
                SidebarXItem(icon: Icons.cable_sharp, label: 'Backup Cases', onTap: ()
                {
                  _router.go('/backup-cases');
                }),
                SidebarXItem(icon: Icons.add_circle_outline, label: 'Create Backup', onTap: ()
                {
                  _router.go('/create');
                }),
              ],
            ),

            buildBody(context).expanded(),
          ],
        )
      )
    );
  }

  @override
  void dispose() {
    _sidebarController.dispose();
    super.dispose();
  }
}
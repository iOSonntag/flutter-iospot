


import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iospot/_packages/extended_theme/theme_data_extension.dart';
import 'package:iospot/modules/backup/refactor/list_with_add.dart';

class BackupCasesPage extends StatefulWidget {
  const BackupCasesPage({super.key});

  @override
  State<BackupCasesPage> createState() => _BackupCasesPageState();
}

class _BackupCasesPageState extends State<BackupCasesPage> {


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Padding(
        padding: Theme.of(context).dimensions.paddingM,
        child: ListWithAdd(
          onAdd: () => context.go('/backup-cases/create'), 
          itemCount: 0, 
          itemBuilder: (context, index) => null
        ),
      ),
    );
  }
}
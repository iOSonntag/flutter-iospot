


import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iospot/_shared/types/builders.dart';
import 'package:iospot/_shared/types/functions.dart';

typedef BaseScaffoldBuilder = Widget Function(BuildContext context, WidgetBuilder buildBody);


class Module extends StatefulWidget {

  final GoRouter router;
  final FutureBoolCallback? onAllowExit;
  final BaseScaffoldBuilder? buildBaseScaffold;

  const Module({
    super.key,
    required this.router,
    this.onAllowExit,
    this.buildBaseScaffold
  });

  @override
  State<Module> createState() => _ModuleState();
}

class _ModuleState extends State<Module> {

  @override
  Widget build(BuildContext context)
  {
    return WillPopScope(
      onWillPop: widget.onAllowExit,
      child: _buildScaffold(context),
    );
  }

  Widget _buildScaffold(BuildContext context)
  {
    // TODO: add architect
    if (widget.buildBaseScaffold != null)
    {
      return widget.buildBaseScaffold!(context, (context) => _buildBody(context));
    }
    
    return Scaffold(
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context)
  {
    return Router.withConfig(
      config: widget.router,
    );
  }


}




import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iospot/_packages/extended_theme/context_extension.dart';
import 'package:iospot/_packages/extended_theme/space_widgets.dart';
import 'package:iospot/_shared/extensions/widget.dart';
import 'package:iospot/modules/backup/refactor/list_with_add.dart';


class CaseAddPathPage extends StatefulWidget {

  const CaseAddPathPage({
    super.key
  });

  @override
  State<CaseAddPathPage> createState() => _CaseAddPathPageState();
}

class _CaseAddPathPageState extends State<CaseAddPathPage> {

  @override
  Widget build(BuildContext context)
  {
    return Container(
      padding: context.paddingM,
      child: Form(
        child: Column(
          children: [
      
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Name'
              ),
              
            ),

            const SpaceM(),

            ListWithAdd(
              onAdd: () => context.go('/backup-cases/create/add-path'), 
              itemCount: 0, 
              itemBuilder: (context, index) => null
            ).expanded(),
      
          ],
        ),
      ),
    );
  }
}
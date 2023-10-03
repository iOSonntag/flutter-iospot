


import 'package:flutter/material.dart';
import 'package:iospot/_shared/extensions/widget.dart';


class ListWithAdd extends StatelessWidget {

  final VoidCallback onAdd;
  final int itemCount;
  final NullableIndexedWidgetBuilder itemBuilder;
  

  const ListWithAdd({
    super.key, 
    required this.onAdd, 
    required this.itemCount, 
    required this.itemBuilder
  });

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children: [
  
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: onAdd
            )
          ],
        ),

        ListView.separated(
          itemBuilder: itemBuilder, 
          separatorBuilder: (context, index) => const Divider(height: 1.0), 
          itemCount: itemCount
        ).expanded()
  
      ],
    );
  }
}
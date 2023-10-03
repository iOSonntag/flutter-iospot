


import 'package:flutter/widgets.dart';

mixin StorableConfigEntity {

  Map<String, dynamic> generateStoreConfigJson();
  void loadStoreConfigJson(Map<String, dynamic> json);


  @mustCallSuper
  void save()
  {
    
  }

}



import 'package:iospot/_shared/data/storable_config_entity.dart';

abstract class BackupCase with StorableConfigEntity {

  bool get hasUnsavedChanges
  {
    return false;
  }

}
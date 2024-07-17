import 'package:flutter/cupertino.dart';

class AppVersionData {
  String? localVersion;
  String? storeVersion;
  String? storeUrl;
  TargetPlatform? targetPlatform;
  bool? canUpdate;
  String? releaseNotes;
  String? appName;

  AppVersionData({
    this.localVersion,
    this.storeVersion,
    this.storeUrl,
    this.targetPlatform,
    this.canUpdate = false,
    this.releaseNotes = '',
    this.appName,
  });
}

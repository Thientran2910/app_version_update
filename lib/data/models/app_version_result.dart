import 'package:flutter/cupertino.dart';

/// Return of [await AppVersionUpdate.checkForUpdates()].
/// * ```storeVersion``` app version in Play Store or Apple Store.
/// * ```storeUrl``` link to update the app in its respective store
/// * ```canUpdate``` is true if exists avaible updates
/// * ```platform``` [TargetPlatform] for determine use in android or iOS
class AppVersionResult {
  AppVersionResult({
    this.storeVersion,
    this.storeUrl,
    this.platform,
    this.canUpdate,
    this.appleId,
    this.playStoreId,
    this.releaseNotes,
  });
  String? storeVersion, storeUrl, appleId, playStoreId;
  bool? canUpdate = false;
  String? releaseNotes;

  TargetPlatform? platform;

  then(Null Function(dynamic data) param0) {}

  // toJson
  Map<String, dynamic> toJson() {
    return {
      'storeVersion': storeVersion,
      'storeUrl': storeUrl,
      'appleId': appleId,
      'playStoreId': playStoreId,
      'canUpdate': canUpdate,
      'releaseNotes': releaseNotes,
      // 'platform': platform,
    };
  }

  // fromJson
  factory AppVersionResult.fromJson(Map<dynamic, dynamic> json) {
    return AppVersionResult(
      storeVersion: json['storeVersion'],
      storeUrl: json['storeUrl'],
      appleId: json['appleId'],
      playStoreId: json['playStoreId'],
      canUpdate: json['canUpdate'],
      releaseNotes: json['releaseNotes'],
      // platform: json['platform'],
    );
  }
}

import 'package:flutter/cupertino.dart';

class AppConfigs {
  static BuildContext? contextApp;
  var isDeviceReal = true;
  var ip = true ? '192.168.1.11' : '10.0.2.2';

  get endPoint => 'http://$ip:5000/api';


  static const KEY_RECENTLY_PLAYED = 'recently_played';
  static const KEY_DOWNLOAD_EPISODE =  'episode_download';
}

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:package_info_plus/package_info_plus.dart';

class Configurations { 
  Configurations._();
 

 // determine if the app needs to be updated or not .
 // by copmaring the 2 values fetched from info_plus & firebase_remote_config Packages.
static Future<bool> shouldUpdateApp()async{ 
  final remoteVersion = await getFirebaseRemoteConfigs(); 
  final appVersion = await getAppCurrentVersion(); 
  return appVersion.compareTo(remoteVersion)==1 ;
}
 

 // get User current app version.
 // this is from info_plus package.
 static Future<String> getAppCurrentVersion()async{ 
  final appInfo =await PackageInfo.fromPlatform(); 
  return appInfo.version ;
 }
   


   // get the version stored in firebase.
   // this is from firebase_remote_config package.
  static Future<String> getFirebaseRemoteConfigs() async {
    final config = FirebaseRemoteConfig.instance;
    await config.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: const Duration(minutes: 1),
        minimumFetchInterval: const Duration(seconds: 1),
      ),
    ); 
    await config.fetchAndActivate();  
    // value I have stored in firebase console , and set its intial value for 1.0.0 
    String remoteConfigAppVersion = config.getString("app_version");  
    return remoteConfigAppVersion ;
  }
}

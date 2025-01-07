import 'package:firebase_core/firebase_core.dart';
import 'package:supplier/core/utils/configurations.dart';
import 'firebase_options.dart';
import 'package:supplier/app.dart';
import 'package:supplier/core/utils/constants/app_const.dart';
import 'package:supplier/core/utils/service_locator.dart';
import 'package:supplier/core/utils/storage/shared_preferences.dart';
import 'package:supplier/core/utils/widgets/custom_error_widget.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: "supa_keys.env");
/// SUPA_BASE_KEY=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFjc2RrYnVnd3NwcHltcWZvenRtIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTczNTk1NjUwMCwiZXhwIjoyMDUxNTMyNTAwfQ.333LJShDsspzgq9epORxxP2CbLIyXElorPbhz4P55-c
  SharedPreferencesManager.init(); 
  ServiceLocator.setObjects();  
   await Supabase.initialize(
    url: AppConst.supabaseUrl, 
   anonKey: dotenv.env["SUPA_BASE_KEY"]??"NO KEY FOUND", // Replace with your Supabase Anon Key
  ); 
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
   FirebaseMessaging.onBackgroundMessage(_handleBackGroundFirebaseMessage); 
  await Configurations.initializeFCM();
   FlutterError.onError = (FlutterErrorDetails details){ 
    FlutterError.dumpErrorToConsole(details); 
    runApp(CustomErrorWidget(errorMessage: details));
   };
  runApp(const EPrinter());
}


Future<void> _handleBackGroundFirebaseMessage(RemoteMessage message)async{ 
  await Firebase.initializeApp();
}
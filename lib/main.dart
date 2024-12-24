
import 'package:e_printer/app.dart';
import 'package:e_printer/core/utils/constants/app_const.dart';
import 'package:e_printer/core/utils/service_locator.dart';
import 'package:e_printer/core/utils/storage/shared_preferences.dart';
import 'package:e_printer/core/utils/widgets/custom_error_widget.dart';
import 'package:e_printer/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: "supa_keys.env");

  SharedPreferencesManager.init(); 
  ServiceLocator.setObjects();  
   await Supabase.initialize(
    url: AppConst.supabaseUrl, // Replace with your Supabase project URL
    anonKey: dotenv.env["SUPA_BASE_KEY"]??"NO KEY FOUND", // Replace with your Supabase Anon Key
  ); 
  
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );  
   FirebaseMessaging.onBackgroundMessage(_handleBackGroundFirebaseMessage); 
 // await Configurations.initializeFCM();
   FlutterError.onError = (FlutterErrorDetails details){ 
    FlutterError.dumpErrorToConsole(details); 
    runApp(CustomErrorWidget(errorMessage: details));
   };
  runApp(const EPrinter());
}


Future<void> _handleBackGroundFirebaseMessage(RemoteMessage message)async{ 
  await Firebase.initializeApp();
}
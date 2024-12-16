
import 'package:e_printer/app.dart';
import 'package:e_printer/core/utils/constants/app_const.dart';
import 'package:e_printer/core/utils/service_locator.dart';
import 'package:e_printer/core/utils/storage/shared_preferences.dart';
import 'package:e_printer/core/utils/widgets/custom_error_widget.dart';
import 'package:e_printer/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
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
    anonKey:"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFiZG9jamZ4eGljb3d4YWJ0YWlxIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTczNDEzNTM2MiwiZXhwIjoyMDQ5NzExMzYyfQ.CS7d0Azw6yj4HkqUtUpB2LeOKuX1nB263FNjVMafz_k"
    // dotenv.env["SUPA_BASE_KEY"]??"NO KEY FOUND", // Replace with your Supabase Anon Key
  ); 
  
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ); 
   FlutterError.onError = (FlutterErrorDetails details){ 
    FlutterError.dumpErrorToConsole(details); 
    runApp(CustomErrorWidget(errorMessage: details));
   };
  runApp(const EPrinter());
}



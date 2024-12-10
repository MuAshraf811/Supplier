
import 'package:e_printer/app.dart';
import 'package:e_printer/core/utils/service_locator.dart';
import 'package:e_printer/core/utils/storage/shared_preferences.dart';
import 'package:e_printer/core/utils/widgets/custom_error_widget.dart';
import 'package:e_printer/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferencesManager.init(); 
  ServiceLocator.setObjects();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ); 
   FlutterError.onError = (FlutterErrorDetails details){ 
    FlutterError.dumpErrorToConsole(details); 
    runApp(CustomErrorWidget(errorMessage: details));
   };
  runApp(const EPrinter());
}



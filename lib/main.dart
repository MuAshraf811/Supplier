
import 'package:e_printer/app.dart';
import 'package:e_printer/core/utils/storage/shared_preferences.dart';
import 'package:e_printer/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferencesManager.init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ); 

  runApp(const EPrinter());
}

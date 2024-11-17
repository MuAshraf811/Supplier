import 'package:e_printer/app.dart';
import 'package:e_printer/core/utils/storage/shared_preferences.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferencesManager.init();
  runApp(const EPrinter());
}

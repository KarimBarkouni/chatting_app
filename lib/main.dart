import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/services/auth/auth_gate.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:whatsapp/themes/theme_provider.dart';
import 'firebase_options.dart'; // Assuming this file exists

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ChangeNotifierProvider(
      create: (context) => ThemeProvider(), child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthGate(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}

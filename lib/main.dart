import 'package:flutter/material.dart';
import 'supabase_config.dart';
import 'login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SupabaseConfig.initialize(); // Inicializa conexão com Supabase

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Supabase',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const LoginScreen(),
    );
  }
}

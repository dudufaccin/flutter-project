import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseConfig {
  static const String supabaseUrl = 'https://cklqlxnalfcaxllzajxz.supabase.co';
  static const String supabaseAnonKey =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImNrbHFseG5hbGZjYXhsbHphanh6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDU5NTMyMjUsImV4cCI6MjA2MTUyOTIyNX0.Tn9q9CgIflCMc5tyUDyufjQCKh73P4nlJqFAyc-gZQM';

  static Future<void> initialize() async {
    await Supabase.initialize(url: supabaseUrl, anonKey: supabaseAnonKey);
  }

  static SupabaseClient get client => Supabase.instance.client;
}

import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';
export 'storage/storage.dart';

const _kSupabaseUrl = 'https://dqpkeobtzyycgdxtfpqu.supabase.co/';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRxcGtlb2J0enl5Y2dkeHRmcHF1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzUxNjI0MzgsImV4cCI6MTk5MDczODQzOH0.1kGWjfHkk3jgT87Hfo9-2GcH-E-l7QEr6CEWT0mYXT4';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
      );
}

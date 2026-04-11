import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:get_storage/get_storage.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> setup() async {
  //----------------------------------------------------------------------------
  await dotenv.load(fileName: ".env");
  //----------------------------------------------------------------------------
  await Supabase.initialize(
    url: dotenv.env['url_supabase'].toString(),
    anonKey: dotenv.env['key_supabase'].toString(),
  );
  //----------------------------------------------------------------------------
  await GetStorage.init();
  //----------------------------------------------------------------------------
  // Initialize Gemini 
  Gemini.init(apiKey: dotenv.env["gemini_key"]!);
}


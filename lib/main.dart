import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_app/views/menu.dart';
import 'package:supabase_app/views/themes/colors.dart';
import 'package:supabase_app/views/menu.dart';
import 'package:supabase_app/views/themes/colors.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: ".env");

  String supabaseUrl = dotenv.get('SUPABASE_URL');
  String supabaseAnonKey = dotenv.get('SUPABASE_ANON_KEY');

  await Supabase.initialize(
    url: supabaseUrl,
    anonKey: supabaseAnonKey,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quotes App',
      theme: ThemeData(
        primarySwatch: MaterialColor(
          0xffFEF0F1,
          <int, Color>{
            50: MyColors.secondary.withOpacity(0.1),
            100: MyColors.secondary.withOpacity(0.2),
            200: MyColors.secondary.withOpacity(0.3),
            300: MyColors.secondary.withOpacity(0.4),
            400: MyColors.secondary.withOpacity(0.5),
            500: MyColors.secondary.withOpacity(0.6),
            600: MyColors.secondary.withOpacity(0.7),
            700: MyColors.secondary.withOpacity(0.8),
            800: MyColors.secondary.withOpacity(0.9),
            900: MyColors.secondary.withOpacity(1.0),
          },
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const Menu(),
    );
  }
}

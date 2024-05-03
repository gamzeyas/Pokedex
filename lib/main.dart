import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokebox/pages/home_page.dart';
import 'package:pokebox/services/pokedex_api.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    PokeApi.getPokemonData;
    return ScreenUtilInit(
      designSize: const Size(1440, 3120),
      builder: (context, child) => MaterialApp(
          theme:
              ThemeData.dark().copyWith(textTheme: GoogleFonts.latoTextTheme()),
          title: 'Pokebox',
          debugShowCheckedModeBanner: false,
          home: HomePage()),
    );
  }
}

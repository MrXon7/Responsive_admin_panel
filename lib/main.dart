import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:responsiv_adminpanel/constants.dart';
import 'package:responsiv_adminpanel/controllers/MenuController.dart';
import 'package:responsiv_adminpanel/screens/main/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Admin Panel",
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme.apply(bodyColor: Colors.white)),
        canvasColor: secondaryColor,
      ),
      home: MultiProvider(
        providers: [
        ChangeNotifierProvider(
          create: (context) => MenuAppController(),
        ),
      
      ],
      child: MainScreen(),
      ),
    );
  }
}

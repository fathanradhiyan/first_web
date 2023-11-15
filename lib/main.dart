import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web/locator.dart';
import 'package:flutter_web/shared/shared.dart';
import 'package:flutter_web/ui/views.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';
import 'package:google_fonts/google_fonts.dart';

// void main() {
//   runApp(const MyApp());
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  unawaited(
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]));
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MaterialColor darcula = MaterialColor(0xFF3D3D3D, color);
    return GetMaterialApp(
      title: 'Flutter Web',
      theme: ThemeData(
        textTheme: GoogleFonts.interTextTheme(),
        primarySwatch: darcula,
      ),
      home: LayoutTemplate(),
      // ResponsivePage(),
      // HomePage(tokenJwt: tokenJwt,),
      debugShowCheckedModeBanner: false,
    );
  }
}

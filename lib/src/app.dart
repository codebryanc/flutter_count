// Va a contener toda la logica de mi material app
import 'package:count/src/pages/contador_page.dart';
// import 'package:count/src/pages/home_page.dart';

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      // home: Center(child: HomePage()),
      debugShowCheckedModeBanner: false,
      home: Center(child: ContadorPage()),
    );
  }
}

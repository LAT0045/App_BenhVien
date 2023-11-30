import 'package:flutter/material.dart';
import 'package:ui_appbenhvien/screens/dang_ky.dart';
import 'package:ui_appbenhvien/screens/dang_nhap.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    debugShowCheckedModeBanner: false,home: DangNhap(),
    );
    
  }
}

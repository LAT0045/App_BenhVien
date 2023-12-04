import 'package:flutter/material.dart';
import 'package:ui_appbenhvien/cards/lich_su_can_nang.dart';
import 'package:ui_appbenhvien/cards/them_so_can_nang.dart';
import 'package:ui_appbenhvien/details/bieu_do.dart';
import 'package:ui_appbenhvien/details/cap_nhat_thong_tin.dart';
import 'package:ui_appbenhvien/details/tat_ca_lich_su_can_nang.dart';
import 'package:ui_appbenhvien/details/theo_doi_can_nang.dart';
import 'package:ui_appbenhvien/screens/dang_nhap.dart';
import 'package:ui_appbenhvien/tabs/suc_khoe.dart';
import 'package:ui_appbenhvien/tabs/thong_ke_can_nang.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
    debugShowCheckedModeBanner: false,home: TheoDoiCanNang(),
    );
    
  }
}

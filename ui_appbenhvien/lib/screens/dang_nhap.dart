import 'package:flutter/material.dart';
import 'package:ui_appbenhvien/screens/dang_ky.dart';
import 'package:ui_appbenhvien/utils/color.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DangNhap extends StatefulWidget {
  const DangNhap({Key? key}) : super(key: key);

  @override
  State<DangNhap> createState() => _DangNhapState();
}

class _DangNhapState extends State<DangNhap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Stack(children: [
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.31, -0.95),
                    end: Alignment(-0.31, 0.95),
                colors: [
                  AppColors.lightBlue,
                  AppColors.mediumDarkBlue,
                ],
              )),
              alignment: Alignment.bottomCenter,
                child: SvgPicture.asset(
                  "assets/svg/luon.svg",
                  width: MediaQuery.of(context).size.width,
                  height: 200,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    const SizedBox(height: 60,),
                    SvgPicture.asset(
                      "assets/svg/logo.svg",
                      width: 100,
                      height: 100,
                    ),
                    
                    const SizedBox(height: 80,),

                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.lightBlue.withOpacity(0.7),
                      ),
                      child: Container(
                        padding: const EdgeInsets.only(left: 25, right:20,top: 10),
                        child: Column(children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                           decoration: ShapeDecoration(
                            color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFFE1E1E1)),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              shadows: const [
                                BoxShadow(
                                  color: Color(0x3F000000),
                                  blurRadius: 4,
                                  offset: Offset(0, 4),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Tên Đăng Nhập',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: const BorderSide(
                                        width: 0, style: BorderStyle.none)),
                                fillColor: Colors.white,
                                filled: true,
                                contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),),
                                style: const TextStyle(fontSize: 17, fontFamily: 'Comfortaa'),
                            
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            decoration: ShapeDecoration(
                            color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFFE1E1E1)),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              shadows: const [
                                BoxShadow(
                                  color: Color(0x3F000000),
                                  blurRadius: 4,
                                  offset: Offset(0, 4),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Mật khẩu',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      borderSide: const BorderSide(
                                          width: 0, style: BorderStyle.none)),
                                  fillColor: Colors.white,
                                  filled: true,
                                  contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),),
                              style: const TextStyle(
                                  fontSize: 17, fontFamily: 'Comfortaa'),
                            ),
                          ),

                          Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              onPressed: (){},
                              style: TextButton.styleFrom(
                                foregroundColor: AppColors.darkBlue,
                              ),
                              child: const Text(
                                "Quên mật khẩu?",
                                style: TextStyle(fontFamily: 'Comfortaa', fontSize: 15),
                              ),
                            ),
                          ),

                          const SizedBox(height: 20,),

                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              backgroundColor: const Color(0xFF018ABE),
                            ),
                            child: const Text(
                              'Đăng Nhập',
                              style: TextStyle(fontSize: 18, fontFamily: 'Comfortaa', color: Colors.white),
                            ),
                          ),


                          Padding(
                            padding:const EdgeInsets.only(top: 15, bottom: 20),
                            child: Row(
                              children: [
                                const Text(
                                  "Bạn chưa có tài khoản?",
                                  style: TextStyle(
                                      color: AppColors.darkBlue,
                                      fontFamily: 'Comfortaa',
                                      fontSize: 14),
                                ),
                                TextButton(
                                  onPressed: _NhanDangKy,
                                  child: const Text(
                                    "Đăng Ký Ngay",
                                    style: TextStyle(
                                        color: Color(0xFF3866C0),
                                        fontFamily: 'Comfortaa',
                                        fontSize: 14,
                                        decoration: TextDecoration.underline,
                                        ),
                                  ))
                        ],
                      ),
                    )
                  ]),
                ),
              )
            ],
          ),
        ),
      )
    ])));
  }

  Future<void> _NhanDangKy() async {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const DangKy())
    );
  }
}

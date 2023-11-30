import 'package:flutter/material.dart';
import 'package:ui_appbenhvien/utils/color.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DangKy extends StatefulWidget {
  const DangKy({Key? key}) : super(key: key);

  @override
  State<DangKy> createState() => _DangKyState();
}

class _DangKyState extends State<DangKy> {
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
                        padding: const EdgeInsets.only(left: 25, right: 25,top: 10),
                        child: Column(children: [
                          const SizedBox(
                            height: 30,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                hintText: 'Tên Đăng Nhập',
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
                          const SizedBox(
                            height: 30,
                          ),
                          TextField(
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

                          const SizedBox(
                            height: 30,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                hintText: 'Nhập Lại Mật khẩu',
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

                         
                          const SizedBox(height: 30,),

                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              backgroundColor: const Color(0xFF018ABE),
                            ),
                            child: const Text(
                              'Đăng Ký',
                              style: TextStyle(fontSize: 18, fontFamily: 'Comfortaa', color: Colors.white),
                            ),
                          ),

                          const SizedBox(height: 30,),
                  ]),
                ),
              )
            ],
          ),
        ),
      )
    ])));
  }
}

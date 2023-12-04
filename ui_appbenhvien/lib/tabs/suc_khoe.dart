import 'package:flutter/material.dart';
import 'package:ui_appbenhvien/details/cap_nhat_thong_tin.dart';
import 'package:ui_appbenhvien/utils/color.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SucKhoe extends StatefulWidget {
  const SucKhoe({Key? key}) : super(key: key);

  @override
  State<SucKhoe> createState() => _SucKhoeState();
}

class _SucKhoeState extends State<SucKhoe> {
  void _CapNhatThonTin(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CapNhatThongTin()), 
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.lightBlue,
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Sức khỏe của tôi",
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w900),
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Thông tin",
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        _CapNhatThonTin(context);
                      },
                      child: SvgPicture.asset(
                        "assets/svg/edit.svg",
                        width: 30,
                        height: 30,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 1, color: Color(0xFFE1E1E1)),
                      borderRadius: BorderRadius.circular(20),
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
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 40),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Tuổi",
                                    style: TextStyle(
                                        fontSize: 18, fontFamily: 'Comfortaa'),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Chưa có thông tin",
                                  style: TextStyle(
                                      fontSize: 18, fontFamily: 'Comfortaa'),
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 5,),

                        Divider(
                          height: 1,
                          color: AppColors.lightBlue,
                          thickness: 1,
                        ),

                        SizedBox(height: 30,),

                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Cân nặng",
                                    style: TextStyle(
                                        fontSize: 18, fontFamily: 'Comfortaa'),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Chưa có thông tin",
                                  style: TextStyle(
                                      fontSize: 18, fontFamily: 'Comfortaa'),
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 5,),

                        Divider(
                          height: 1,
                          color: AppColors.lightBlue,
                          thickness: 1,
                        ),

                        SizedBox(height: 30,),

                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Chiều cao",
                                    style: TextStyle(
                                        fontSize: 18, fontFamily: 'Comfortaa'),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Chưa có thông tin",
                                  style: TextStyle(
                                      fontSize: 18, fontFamily: 'Comfortaa'),
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 5,),

                        Divider(
                          height: 1,
                          color: AppColors.lightBlue,
                          thickness: 1,
                        ),

                        SizedBox(height: 30,),

                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "BMI",
                                    style: TextStyle(
                                        fontSize: 18, fontFamily: 'Comfortaa'),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Chưa có thông tin",
                                  style: TextStyle(
                                      fontSize: 18, fontFamily: 'Comfortaa'),
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 5,),

                        Divider(
                          height: 1,
                          color: AppColors.lightBlue,
                          thickness: 1,
                        ),

                        SizedBox(height: 30,),

                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "BMR",
                                    style: TextStyle(
                                        fontSize: 18, fontFamily: 'Comfortaa'),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Chưa có thông tin",
                                  style: TextStyle(
                                      fontSize: 18, fontFamily: 'Comfortaa'),
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 5,),

                        Divider(
                          height: 1,
                          color: AppColors.lightBlue,
                          thickness: 1,
                        ),

                        SizedBox(height: 30,),

                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hoạt động",
                                    style: TextStyle(
                                        fontSize: 18, fontFamily: 'Comfortaa'),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Chưa có thông tin",
                                  style: TextStyle(
                                      fontSize: 18, fontFamily: 'Comfortaa'),
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 5,),

                        Divider(
                          height: 1,
                          color: AppColors.lightBlue,
                          thickness: 1,
                        ),
                      ],
                    )
                  )
                ),

                const SizedBox(height: 20,),

                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Kiểm tra sức khỏe",
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w900),
                  ),
                ),

                const SizedBox(height: 20,),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(width: 1, color: Color(0xFFE1E1E1)),
                      ),
                      elevation: 4, 
                      shadowColor:const Color(0x3F000000),
                      backgroundColor: Colors.white,
                    ),

                    child: Padding(
                      padding: const EdgeInsets.only(left: 30, right: 10, top: 12, bottom: 12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/cai_can.png',
                            width: 40,
                            height: 40,
                          ),

                          const SizedBox(width: 30,),

                          const Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              "Theo dõi cân nặng",
                              style: TextStyle(
                                fontSize: 21,
                                fontFamily: 'Comfortaa',
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                            ),
                          )

                        ],
                      ),
                    )
                  ),
                ),

                const SizedBox(height: 20,),
                
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(width: 1, color: Color(0xFFE1E1E1)),
                      ),
                      elevation: 4, 
                      shadowColor:const Color(0x3F000000),
                      backgroundColor: Colors.white,
                    ),

                    child: Padding(
                      padding: const EdgeInsets.only(left: 30, right: 10, top: 12, bottom: 12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/thuoc.png',
                            width: 40,
                            height: 40,
                          ),

                          const SizedBox(width: 30,),

                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Nhắc nhở uống thuốc",
                                style: TextStyle(
                                  fontSize: 21,
                                  fontFamily: 'Comfortaa',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                              ),
                            
                              SizedBox(height: 5,),

                              Text(
                                "Thuốc đang uống: 0",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'Comfortaa',
                                  color: Color(0xFF979797))
                              )

                            ],
                          )

                        ],
                      ),
                    )
                  ),
                )

              ],
            ),
          )
        ));
  }
}

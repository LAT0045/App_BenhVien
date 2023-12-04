import 'package:flutter/material.dart';
import 'package:ui_appbenhvien/cards/lich_su_can_nang.dart';
import 'package:ui_appbenhvien/details/bieu_do.dart';
import 'package:ui_appbenhvien/utils/color.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ThongKeCanNang extends StatefulWidget {
  const ThongKeCanNang({Key? key}) : super(key: key);

  @override
  State<ThongKeCanNang> createState() => _ThongKeCanNangState();
}

class _ThongKeCanNangState extends State<ThongKeCanNang> {
  int selectedType = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.lightBlue,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
              child: Column(children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Thống kê cân nặng",
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),

                const SizedBox(height: 20,),

                Container(
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1, color: Color(0xFF02457A)),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),

                  child: Padding(
                    padding: const EdgeInsets.only(top: 2,bottom: 2, left: 5,right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                selectedType = 1;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                                side: BorderSide(
                                  width: 1,
                                  color: selectedType == 1 ? Colors.blue : Color(0xFF02457A),
                                ),
                              ),
                              backgroundColor: selectedType == 1 ? Colors.blue : const Color(0xFFF7F7F7),
                            ),
                            child: Text(
                              'Ngày',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Comfortaa',
                                color: selectedType == 1 ? Colors.white : Colors.black, // Thay đổi màu chữ khi được chọn
                              ),                            
                            ),
                          ),
                        ),
                        const SizedBox(width: 10), // Khoảng cách giữa các button
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                selectedType = 2;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                                side: BorderSide(
                                  width: 1,
                                  color: selectedType == 2 ? Colors.blue : Color(0xFF02457A),
                                ),
                              ),
                              backgroundColor: selectedType == 2 ? Colors.blue : const Color(0xFFF7F7F7),
                            ),
                            child: Text(
                              'Tuần',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Comfortaa',
                                color: selectedType == 2 ? Colors.white : Colors.black, // Thay đổi màu chữ khi được chọn
                              ),                            
                            ),
                          ),
                        ),
                        const SizedBox(width: 10), // Khoảng cách giữa các button
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                selectedType = 3;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                                side: BorderSide(
                                  width: 1,
                                  color: selectedType == 3 ? Colors.blue : Color(0xFF02457A),
                                ),
                              ),
                              backgroundColor: selectedType == 3? Colors.blue : const Color(0xFFF7F7F7),
                            ),
                            child: Text(
                              'Tháng',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Comfortaa',
                                color: selectedType == 3 ? Colors.white : Colors.black, // Thay đổi màu chữ khi được chọn
                              ),                            
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20,),

                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Hôm nay, 32/12/2023",
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),

                const SizedBox(height: 20,),

                Container(
                  height: 400,
                  width: 400,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  // child: BieuDo(),

                  child: Padding(
                    padding: const EdgeInsets.only(top: 40,bottom: 20, left: 10,right: 20),
                    child: BieuDo(type: selectedType,),
                  ),
                ),

                const SizedBox(height: 20,),
                
                Row(children: [
                  Expanded(
                    child: Container(
                      decoration: ShapeDecoration(
                        color: AppColors.pink,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color:AppColors.pink),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Cân nặng hiện tại",
                                style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'Comfortaa',
                                fontWeight: FontWeight.w900,
                                color: AppColors.red,
                              ),
                            ),
                    
                            SizedBox(height: 5,),
                    
                            Text(
                              "Cập nhật lần cuối: ",
                                style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Comfortaa',
                                color: AppColors.grey,
                              ),
                            ),
                    
                            SizedBox(height: 5,),
                    
                            Text(
                              "27/11/2023 03:38 PM",
                                style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Comfortaa',
                                color: AppColors.grey,
                              ),
                            ),
                    
                            Row(children: [
                              Text(
                                "40",
                                  style: TextStyle(
                                  fontSize: 40,
                                  fontFamily: 'Comfortaa',
                                  color: AppColors.red,
                                  fontWeight: FontWeight.w900
                                ),
                              ),
                    
                              SizedBox(width: 5,),
                    
                              Padding(
                                padding: EdgeInsets.only(top: 15),
                                child: Text(
                                  "kg",
                                    style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: 'Comfortaa',
                                    color: AppColors.red,
                                    fontWeight: FontWeight.w900
                                  ),
                                ),
                              ),
                            ],)
                          ],
                        ),   
                      ), 
                    ),
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: Container(
                      decoration: ShapeDecoration(
                        color: AppColors.lightgreen,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color:AppColors.lightgreen),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Cân nặng trung bình",
                                style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'Comfortaa',
                                fontWeight: FontWeight.w900,
                                color: AppColors.green,
                              ),
                            ),
                    
                            SizedBox(height: 5,),
                    
                            Text(
                              "Cập nhật lần cuối: ",
                                style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Comfortaa',
                                color: AppColors.grey,
                              ),
                            ),
                    
                            SizedBox(height: 5,),
                    
                            Text(
                              "27/11/2023 03:38 PM",
                                style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Comfortaa',
                                color: AppColors.grey,
                              ),
                            ),
                    
                            Row(children: [
                              Text(
                                "40",
                                  style: TextStyle(
                                  fontSize: 40,
                                  fontFamily: 'Comfortaa',
                                  color: AppColors.green,
                                  fontWeight: FontWeight.w900
                                ),
                              ),
                    
                              SizedBox(width: 5,),
                    
                              Padding(
                                padding: EdgeInsets.only(top: 15),
                                child: Text(
                                  "kg",
                                    style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: 'Comfortaa',
                                    color: AppColors.green,
                                    fontWeight: FontWeight.w900
                                  ),
                                ),
                              ),
                            ],)
                          ],
                        ),   
                      ), 
                    ),
                  )
                ],),

                const SizedBox(height: 20,),

                Container(
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
                    child: Column(
                      children:[
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Lịch sử",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),

                        const SizedBox(height: 15),

                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: 5, 
                          itemExtent: 35,
                          itemBuilder: (context, index) {
                            return const LichSuCanNang(
                              textColor: Colors.black,
                            );
                          },
                        ),

                        const SizedBox(height: 20,),

                        TextButton(
                          onPressed: (){}, 
                          child: const Text(
                            "Xem tất cả",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.w900,
                              color: AppColors.mediumDarkBlue
                            ),
                          ))

                      ] 
                    ),
                  ),
                )
              ]),
            ),
        )));
  }
}

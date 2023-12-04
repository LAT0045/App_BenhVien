import 'package:flutter/material.dart';
import 'package:ui_appbenhvien/utils/color.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CapNhatThongTin extends StatefulWidget {
  const CapNhatThongTin({Key? key}) : super(key: key);

  @override
  State<CapNhatThongTin> createState() => _CapNhatThongTinState();
}

class _CapNhatThongTinState extends State<CapNhatThongTin> {
  DateTime selectedDate = DateTime.now();
  int _selectedValue = 1;

  void _ChonCuongDo(int value) {
    setState(() {
      _selectedValue = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.lightBlue,
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Expanded(
                        child: Text(
                          "Cập nhật thông tin",
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'Comfortaa',
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(
                          "assets/svg/dong.svg",
                          width: 50,
                          height: 50,
                        ),
                      ),
                    ],
                  ),
              
                  const SizedBox(height: 30),
              
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Ngày sinh của bạn",
                      style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
              
                  const SizedBox(height: 15),
                  
                  Container(
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 1, color: Color(0xFFE1E1E1)),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 15),
                      child: GestureDetector(
                        onTap: () async {
                          final DateTime? dateTime = await showDatePicker(
                            context: context,
                            initialDate: selectedDate,
                            firstDate: DateTime(2000),
                            lastDate: DateTime(3000),
                          );
                      
                          if (dateTime != null) {
                            setState(() {
                              selectedDate = dateTime;
                            });
                          }
                        },
                        child: Row(
                          children: [
                            // Day
                            Text(
                              "${selectedDate.day.toString()} / ",
                              style: const TextStyle(
                                fontFamily: 'Comfortaa',
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
              
                            // Month
                            Text(
                              "${selectedDate.month.toString()} / ",
                              style: const TextStyle(
                                fontFamily: 'Comfortaa',
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
              
                            // Year
                            Text(
                              selectedDate.year.toString(),
                              style: const TextStyle(
                                fontFamily: 'Comfortaa',
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
              
                            Expanded(child: Container()),
              
                            SvgPicture.asset(
                              "assets/svg/lich.svg",
                              width: 30,
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
              
                  const SizedBox(height: 20),
              
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text(
                              "Chiều cao",
                              style: TextStyle(
                                fontFamily: 'Comfortaa',
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
              
                            const SizedBox(height: 10),
              
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(width: 1, color: Color(0xFFE1E1E1)),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      shadows: const [
                                        BoxShadow(
                                          color: Color(0x3F000000),
                                          blurRadius: 4,
                                          offset: Offset(0, 4),
                                          spreadRadius: 0,
                                        ),
                                      ],
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(30.0),
                                          borderSide: const BorderSide(
                                            width: 0,
                                            style: BorderStyle.none,
                                          ),
                                        ),
                                        fillColor: Colors.white,
                                        filled: true,
                                        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                                      ),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa'),
                                    ),
                                  ),
                                ),
              
                                const SizedBox(width: 10),
              
                                const Text(
                                  "cm",
                                  style: TextStyle(fontSize: 22, fontFamily: 'Comfortaa', fontWeight: FontWeight.w600),
                                ),
              
                                const SizedBox(width: 40),
              
                              ],
                            )
                          ],
                        ),
                      ),
              
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text(
                              "Cân nặng",
                              style: TextStyle(
                                fontFamily: 'Comfortaa',
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
              
                            const SizedBox(height: 10),
              
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(width: 1, color: Color(0xFFE1E1E1)),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      shadows: const [
                                        BoxShadow(
                                          color: Color(0x3F000000),
                                          blurRadius: 4,
                                          offset: Offset(0, 4),
                                          spreadRadius: 0,
                                        ),
                                      ],
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(30.0),
                                          borderSide: const BorderSide(
                                            width: 0,
                                            style: BorderStyle.none,
                                          ),
                                        ),
                                        fillColor: Colors.white,
                                        filled: true,
                                        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                                      ),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa'),
                                    ),
                                  ),
                                ),
              
                                const SizedBox(width: 10),
              
                                const Text(
                                  "kg",
                                  style: TextStyle(fontSize: 22, fontFamily: 'Comfortaa', fontWeight: FontWeight.w600),
                                ),
                                
                                const SizedBox(width: 45),
              
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
              
                  const SizedBox(height: 20,),
              
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Chọn cường độ hoạt động: ",
                      style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
              
                  const SizedBox(height: 20,),
              
                  GestureDetector(
                    onTap: () {
                      // Điều khiển thay đổi giá trị của Radio
                      setState(() {
                        _selectedValue = 1;
                      });
                    },
                    child: Container(
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Color(0xFFE1E1E1)),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/cuong_do.png',
                              width: 40,
                              height: 40,
                            ),
                        
                            const SizedBox(width: 20,),
                        
                            const Text(
                              "Cường độ ít",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Comfortaa',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Transform.scale(
                                  scale: 1.5, // Điều chỉnh kích thước dấu tích theo ý muốn của bạn
                                  child: Radio(
                                    value: 1,
                                    groupValue: _selectedValue,
                                    activeColor: AppColors.darkBlue,
                                    onChanged: (value) => _ChonCuongDo(value!),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
              
                  const SizedBox(height: 10,),
              
                  GestureDetector(
                    onTap: () {
                      // Điều khiển thay đổi giá trị của Radio
                      setState(() {
                        _selectedValue = 2;
                      });
                    },
                    child: Container(
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Color(0xFFE1E1E1)),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/cuong_do.png',
                              width: 40,
                              height: 40,
                            ),
                        
                            const SizedBox(width: 20,),
                        
                            const Text(
                              "Cường độ trung bình",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Comfortaa',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Transform.scale(
                                  scale: 1.5, // Điều chỉnh kích thước dấu tích theo ý muốn của bạn
                                  child: Radio(
                                    value: 2,
                                    groupValue: _selectedValue,
                                    activeColor: AppColors.darkBlue,
                                    onChanged: (value) => _ChonCuongDo(value!),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
              
                  const SizedBox(height: 10,),
              
                  GestureDetector(
                    onTap: () {
                      // Điều khiển thay đổi giá trị của Radio
                      setState(() {
                        _selectedValue = 3;
                      });
                    },
                    child: Container(
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Color(0xFFE1E1E1)),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/cuong_do.png',
                              width: 40,
                              height: 40,
                            ),
                        
                            const SizedBox(width: 20,),
                        
                            const Text(
                              "Cường độ khá",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Comfortaa',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Transform.scale(
                                  scale: 1.5, // Điều chỉnh kích thước dấu tích theo ý muốn của bạn
                                  child: Radio(
                                    value: 3,
                                    groupValue: _selectedValue,
                                    activeColor: AppColors.darkBlue,
                                    onChanged: (value) => _ChonCuongDo(value!),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
              
                  const SizedBox(height: 10,),
              
                  GestureDetector(
                    onTap: () {
                      // Điều khiển thay đổi giá trị của Radio
                      setState(() {
                        _selectedValue = 4;
                      });
                    },
                    child: Container(
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Color(0xFFE1E1E1)),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/cuong_do.png',
                              width: 40,
                              height: 40,
                            ),
                        
                            const SizedBox(width: 20,),
                        
                            const Text(
                              "Cường độ nhiều",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Comfortaa',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Transform.scale(
                                  scale: 1.5, // Điều chỉnh kích thước dấu tích theo ý muốn của bạn
                                  child: Radio(
                                    value: 4,
                                    groupValue: _selectedValue,
                                    activeColor: AppColors.darkBlue,
                                    onChanged: (value) => _ChonCuongDo(value!),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
              
                  const SizedBox(height: 10,),
              
                  GestureDetector(
                    onTap: () {
                      // Điều khiển thay đổi giá trị của Radio
                      setState(() {
                        _selectedValue = 5;
                      });
                    },
                    child: Container(
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Color(0xFFE1E1E1)),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/cuong_do.png',
                              width: 40,
                              height: 40,
                            ),
                        
                            const SizedBox(width: 20,),
                        
                            const Text(
                              "Cường độ tối đa",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Comfortaa',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Transform.scale(
                                  scale: 1.5, // Điều chỉnh kích thước dấu tích theo ý muốn của bạn
                                  child: Radio(
                                    value: 5,
                                    groupValue: _selectedValue,
                                    activeColor: AppColors.darkBlue,
                                    onChanged: (value) => _ChonCuongDo(value!),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 30,),

                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      backgroundColor: AppColors.green,
                    ),
                    child: const Text(
                      'Cập nhật',
                      style: TextStyle(fontSize: 25, fontFamily: 'Comfortaa', color: Colors.white),
                    ),
                  ),

                  const SizedBox(height: 30,),              
              ]),
            ),
          ),
          
        ));
  }
}

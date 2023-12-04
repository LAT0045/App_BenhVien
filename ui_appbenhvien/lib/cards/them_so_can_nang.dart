import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_appbenhvien/utils/color.dart';


class ThemSoCanNang extends StatefulWidget {
  const ThemSoCanNang({Key? key}) : super(key: key);

  @override
  State<ThemSoCanNang> createState() =>  _ThemSoCanNangState();
}

class _ThemSoCanNangState extends State<ThemSoCanNang> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();

  String getHourIn12HourFormat(int hour) {
    if (hour == 0) {
      return '12';
    } else if (hour < 12) {
      return '$hour';
    } else if (hour == 12) {
      return '12';
    } else {
      return '${hour - 12}';
    }
  }
  @override
  Widget build(BuildContext context) { 
    return Dialog(
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 7,),
                const Text(
                  "Thêm số đo cân nặng",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 23,
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w900,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.close, size: 30),
                ),
              ],
            ),
            const SizedBox(height: 15.0),

            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
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
                        ShaderMask(
                          shaderCallback: (Rect bounds) {
                            return const LinearGradient(
                              colors: [Color(0xFF1CD9B9), AppColors.mediumDarkBlue], // Màu xanh -> đỏ
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ).createShader(bounds);
                          },
                          blendMode: BlendMode.srcATop,
                          child: SvgPicture.asset(
                            "assets/svg/lich.svg",
                            width: 30,
                            height: 30,
                          ),
                        ), 
                        
                        const SizedBox(width: 5,),
                        // Day
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Row(
                            children: [
                              Text(
                                "${selectedDate.day.toString()} / ",
                                style: const TextStyle(
                                  fontFamily: 'Comfortaa',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              // Month
                              Text(
                                "${selectedDate.month.toString()} / ",
                                style: const TextStyle(
                                  fontFamily: 'Comfortaa',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                                
                              // Year
                              Text(
                                selectedDate.year.toString(),
                                style: const TextStyle(
                                  fontFamily: 'Comfortaa',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ] 
                          ),
                        ),
                      ],
                    ),
                  ),

                  GestureDetector(
                    onTap: () async {
                      final TimeOfDay? timeOfDay = await showTimePicker(
                          context: context, initialTime: selectedTime);

                      if (timeOfDay != null) {
                        setState(() {
                          selectedTime = timeOfDay;
                        });
                      }
                    },
                    child: Row(
                      children: [
                        const SizedBox(width: 10,),
                        ShaderMask(
                          shaderCallback: (Rect bounds) {
                            return const LinearGradient(
                              colors: [Color(0xFF1CD9B9), AppColors.mediumDarkBlue], // Màu xanh -> đỏ
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ).createShader(bounds);
                          },
                          blendMode: BlendMode.srcATop,
                          child: SvgPicture.asset(
                            "assets/svg/dong_ho.svg",
                            width: 23,
                            height: 23,
                          ),
                        ),
                        const SizedBox(width: 10,),
                        // Hour
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Row(
                            children: [
                              Text("${getHourIn12HourFormat(selectedTime.hour)} : ",
                                style: const TextStyle(
                                  fontFamily: 'Comfortaa',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                          
                              // Minute
                              Text(selectedTime.minute.toString(),
                                style: const TextStyle(
                                  fontFamily: 'Comfortaa',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                              
                              //AM/PM
                              Text(
                                selectedTime.period == DayPeriod.am ? ' AM' : ' PM',
                                style: const TextStyle(
                                  fontFamily: 'Comfortaa',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 15),
              child: Column(children: [
                const Text(
                  "Chỉ số cân nặng của bạn là:",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w900,
                  ),
                ),

                const SizedBox(height: 25,),

                Row(
                  children: [
                    const SizedBox(width: 70,),
                    Expanded(
                      flex: 50,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: TextField(
                          keyboardType: const TextInputType.numberWithOptions(decimal: true),
                          onChanged: (value) {},
                          textAlign: TextAlign.right, // căn lề về bên phải
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: '00.0',
                            errorBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                            contentPadding: EdgeInsets.zero,
                            isDense: true,
                          ),
                          style: const TextStyle(
                            fontSize: 45,
                            fontFamily: 'Comfortaa',
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                    const Expanded(
                      flex: 50,
                      child: Text(
                        "kg",
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    )
                  ],
                ),

                const SizedBox(height: 20,),

                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    backgroundColor: AppColors.mediumDarkBlue,
                  ),
                  child: const Text(
                    'Cập nhật',
                    style: TextStyle(fontSize: 20, fontFamily: 'Comfortaa', color: Colors.white),
                  ),
                ),

              ],), 
            )
          ],
        ),
      ),
    );
  }
}
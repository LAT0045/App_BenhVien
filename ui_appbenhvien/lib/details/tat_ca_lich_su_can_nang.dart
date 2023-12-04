import 'package:flutter/material.dart';
import 'package:ui_appbenhvien/cards/lich_su_can_nang.dart';
import 'package:ui_appbenhvien/utils/color.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TatCaLichSuCanNang extends StatefulWidget {
  const TatCaLichSuCanNang({Key? key}) : super(key: key);

  @override
  State<TatCaLichSuCanNang> createState() => _TatCaLichSuCanNangState();
}

class _TatCaLichSuCanNangState extends State<TatCaLichSuCanNang> {
  @override
  Widget build(BuildContext context) {
    final double listViewHeight = MediaQuery.of(context).size.height -
    30 - MediaQuery.of(context).padding.top - kToolbarHeight; 
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.lightBlue,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 30, left: 30, bottom: 30),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Lịch sử cân nặng",
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),

                Container(
                  width: MediaQuery.of(context).size.width,
                  height: listViewHeight,
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: ListView.builder(
                      physics: const AlwaysScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        final colors = [AppColors.darkBlue, AppColors.lightBlue];
                        final textColors = [Colors.white, Colors.black]; // Danh sách màu chữ tương ứng

                        final color = colors[index % colors.length];
                        final textColor = textColors[index % textColors.length];

                        return Column(
                          children: [
                            const SizedBox(height: 10,),
                            Card(
                              color: color,
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: LichSuCanNang(
                                  textColor: textColor, // Truyền màu chữ vào widget LichSuCanNang
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
        ),
      )
    );
  }
}
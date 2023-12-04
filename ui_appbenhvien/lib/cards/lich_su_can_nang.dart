import 'package:flutter/material.dart';

class LichSuCanNang extends StatelessWidget {
  final Color textColor;
  const LichSuCanNang({Key? key,required this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
           Expanded(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                "27/11/2023 03:38 PM",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Comfortaa',
                  color: textColor,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          Expanded(
            child: Text(
              "40kg",
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Comfortaa',
                color: textColor,
                fontWeight: FontWeight.bold

              ),
            ),
          ),
        ],
      ),
    );
  }
}
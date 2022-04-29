import 'package:flutter/material.dart';

class StandardCard extends StatelessWidget {
  final String? leftText;
  final String? rightText;

  StandardCard({this.leftText, this.rightText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.blue, width: 2),
      ),
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          Text(
            leftText!,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(width: 5),
          Text(
            rightText!,
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sit/src/utils/export.dart';

class StandardPage extends StatelessWidget {
  final Widget body;
  final String pageTile;

  StandardPage({required this.body, required this.pageTile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageTile),
      ),
      body: Padding(
          padding: EdgeInsets.only(
            left: PaddingSizes.introPageBorder,
            right: PaddingSizes.introPageBorder,
            top: PaddingSizes.introPageTop,
          ),
          child: SingleChildScrollView(
            child: body,
          )),
    );
  }
}

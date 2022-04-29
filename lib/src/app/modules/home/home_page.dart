import 'package:flutter/material.dart';
import 'package:sit/src/app/components/standard_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StandardPage(
        body: const Center(
          child: Text('nossa home'),
        ),
        pageTile: "Home");
  }
}

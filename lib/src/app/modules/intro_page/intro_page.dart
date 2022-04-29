import 'package:flutter/material.dart';
import 'package:sit/src/app/components/standard_clickable_text.dart';
import 'package:sit/src/app/components/standard_textform.dart';
import 'package:sit/src/app/modules/balance_page/balane_page.dart';
import 'package:sit/src/app/modules/home/home_page.dart';
import 'package:sit/src/utils/export.dart';
import 'package:sit/src/app/components/standard_button.dart';
import 'package:sit/src/app/modules/create_account/create_account.dart';

// ignore: use_key_in_widget_constructors
class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: PaddingSizes.introPageBorder,
            right: PaddingSizes.introPageBorder,
            top: PaddingSizes.introPageTop,
          ),
          child: Column(
            children: [
              GestureDetector(
                  onTap: () {
                    print('eittaaaaa');
                  },
                  child: Image.asset('assets/images/logo.png')),
              StandardTextForm(
                label: eMail,
              ),
              const SizedBox(
                height: 15.0,
              ),
              StandardTextForm(
                label: password,
              ),
              const SizedBox(
                height: 15.0,
              ),
              StandardButton(
                buttonText: login,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => BalancePage(
                        startValue: '25.0',
                      )),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 15.0,
              ),
              StandardButton(
                buttonText: createAccount,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => CreateAccount()),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 15.0,
              ),
              StandardClickableText(
                label: "Esqueci a senha",
                onTap: () {
                  print('olá');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

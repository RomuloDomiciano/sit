import 'package:flutter/material.dart';
import 'package:sit/src/app/components/standard_button.dart';
import 'package:sit/src/app/components/standard_card.dart';
import 'package:sit/src/app/components/standard_page.dart';
import 'package:sit/src/app/components/standard_textform.dart';

class BalancePage extends StatefulWidget {

  final String startValue;

  BalancePage({required this.startValue});


  @override
  State<StatefulWidget> createState() {
    return _BalancaPageState();
  }
}

class _BalancaPageState extends State<BalancePage> {
  TextEditingController monthIncomeController = TextEditingController();

  double initialValue = 0.0;

  @override
  void initState(){
    super.initState();
    print(widget.startValue);
  }

  presentMonthlyIncome({required String value}) {
    setState(
      () {
        initialValue = double.parse(value);
      },
    );
  }

  cleanMonthlIncome(){
    setState(() {
      initialValue = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return StandardPage(
      pageTile: 'Saldo',
      body: Column(
        children: [
          StandardTextForm(
            label: 'Entrada do mês',
            userInputController: monthIncomeController,
            onEditingComplete: () {
              presentMonthlyIncome(value: monthIncomeController.text);
            },
          ),
          const SizedBox(height: 20),
          StandardCard(
            leftText: 'R\$:',
            rightText: '$initialValue + ${widget.startValue}',
          ),
          const SizedBox(height: 20),
          StandardButton(buttonText: 'Limpar', onPressed: (){
            cleanMonthlIncome();
          })
        ],
      ),
    );
  }
}

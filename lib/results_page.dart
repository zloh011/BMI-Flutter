import 'package:bmi_calculator/Bottom_button.dart';
import 'package:bmi_calculator/Reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  
  ResultsPage({@required this.interpretation,@required this.resultText,@required this.bmiResults });
  
  final String bmiResults;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Text('Your Result', style: kTitleTextStyle),
            ),
            Expanded(
                flex: 5,
                child: ReusableCard(
                  colour: activeCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[Text(resultText.toUpperCase(), style: resultTextStyle),
                    Text(bmiResults,style: kBMITextStyle,),
                    Text(interpretation,style: kBodyTextStyle,textAlign: TextAlign.center,),
                    ],
                  ),
                )),BottomButton(onTap:(){ Navigator.pop(context);}, buttonTitle: 'RE-CALCULATE')
          ]),
    );
  }
}

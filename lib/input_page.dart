import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Icon-Content.dart';
import 'reuseable_card.dart';

const BottomContainerHeight = 80.0;
const activeCardColour = Color(0xff1d1e33);
const inactiveCardColour = Color(0xff111328);
const BottomContainerCardColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = inactiveCardColour;
  Color femaleCardColour = inactiveCardColour;
  void updateColour(int gender) {
    // male card get pressed
    if(gender == 1) {
      if(maleCardColour == inactiveCardColour) {
        maleCardColour = activeCardColour;
        femaleCardColour = inactiveCardColour;
      } else {
        maleCardColour = inactiveCardColour;
      }
    } // female card get pressed
    else {
      if(femaleCardColour == inactiveCardColour) {
        femaleCardColour = activeCardColour;
        maleCardColour = inactiveCardColour;
      } else {
        femaleCardColour = inactiveCardColour;
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          updateColour(1);
                        });
                      },
                      child: ReusableCard(
                        colour: maleCardColour,
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.mars,
                          label: 'Male',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            updateColour(2);
                          });
                        },
                        child: ReusableCard(
                    colour: femaleCardColour,
                    cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'Female',
                    ),
                  ),
                      ))
                ],
              ),
            ),
            Expanded(child: ReusableCard(colour: inactiveCardColour)),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: ReusableCard(colour: inactiveCardColour)),
                  Expanded(child: ReusableCard(colour: inactiveCardColour))
                ],
              ),
            ),
            Container(
              color: BottomContainerCardColour,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: BottomContainerHeight,
            )
          ],
        ));
  }
}

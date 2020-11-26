import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Icon-Content.dart';
import 'reuseable_card.dart';

const BottomContainerHeight = 80.0;
const ContainerColour = Color(0xff1d1e33);
const BottomContainerColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    child: ReusableCard(
                      colour: ContainerColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'Male',
                      ),
                    ),
                  ),
                  Expanded(
                      child: ReusableCard(
                    colour: ContainerColour,
                    cardChild: IconContent(icon: FontAwesomeIcons.venus, label: 'Female',),
                  ))
                ],
              ),
            ),
            Expanded(child: ReusableCard(colour: ContainerColour)),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: ReusableCard(colour: ContainerColour)),
                  Expanded(child: ReusableCard(colour: ContainerColour))
                ],
              ),
            ),
            Container(
              color: BottomContainerColour,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: BottomContainerHeight,
            )
          ],
        ));
  }
}


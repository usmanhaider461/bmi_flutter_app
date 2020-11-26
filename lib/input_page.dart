import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                      cardChild: IconContent(),
                    ),
                  ),
                  Expanded(child: ReusableCard(colour: ContainerColour,cardChild: IconContent(),))
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

class IconContent extends StatelessWidget {
  const IconContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          FontAwesomeIcons.mars,
          size: 70.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          'Male',
          style: TextStyle(
              fontSize: 18.0, color: Color(0xFF8D8E98)),
        )
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild});
  final Color colour;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}

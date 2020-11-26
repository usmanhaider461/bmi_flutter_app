import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
const BottomContainerHeight = 80.0;

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
        floatingActionButton: Theme(
          data: ThemeData(
            accentColor: Colors.purpleAccent,
          ),
          child: FloatingActionButton(
            child: Icon(Icons.add),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(colour: Color(0xff1d1e33)),
                  ),
                  Expanded(child: ReusableCard(colour: Color(0xff1d1e33)))
                ],
              ),
            ),
            Expanded(child: ReusableCard(colour: Color(0xff1d1e33))),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: ReusableCard(colour: Color(0xff1d1e33))),
                  Expanded(child: ReusableCard(colour: Color(0xff1d1e33)))
                ],
              ),
            ),
            Container(
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: BottomContainerHeight,
            )
          ],
        ));
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour});
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}

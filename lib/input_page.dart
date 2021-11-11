import 'package:bmi_calculator/constants/colors.dart';
import 'package:bmi_calculator/components/icon_content.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      child: ReusableCard(
                        colour: selectedGender == Gender.male
                            ? AppColor.activeCardColour
                            : AppColor.inactiveCardColour,
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.mars,
                          text: 'Male',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        selectedGender = Gender.female;
                      },
                      child: ReusableCard(
                        colour: selectedGender == Gender.female
                            ? AppColor.activeCardColour
                            : AppColor.inactiveCardColour,
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.venus,
                          text: 'Female',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: AppColor.inactiveCardColour,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: AppColor.inactiveCardColour,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: AppColor.inactiveCardColour,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 80.0,
            ),
          ],
        ));
  }
}

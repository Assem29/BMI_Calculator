import 'package:bmi_project/bmi_screens/bmi_home.dart';
import 'package:flutter/material.dart';

import 'constent.dart';


class BMIResult extends StatelessWidget {
 final bool isMale;
 final double result;
 final int age;
 final int weight;

 BMIResult({
    required this.age, required this.weight,required this.isMale, required  this.result ,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI RESULT',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        backgroundColor: mainColor,
        elevation: 0,
        centerTitle: true,
      )  ,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Gender :${isMale ?'Male':'Female'} ",style: TextStyle(fontSize: 20),),
            Text('Weight :$weight ',style: TextStyle(fontSize: 20),),
            Text('Age :$age ',style: TextStyle(fontSize: 20),),
            Text('Result :$result ',style: TextStyle(fontSize: 20),),




          ],
        ),
      ),
    );
  }
}

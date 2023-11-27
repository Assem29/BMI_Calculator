import 'dart:math';

import 'package:bmi_project/modules/bmi_result/bmi_result.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../shared/components/constent.dart';

class BMIScreen extends StatefulWidget {
  const BMIScreen({super.key});

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

var _changeNum = 0;
var _addWeight = 0;
var _addAge = 0;

class _BMIScreenState extends State<BMIScreen> {
  bool isMale = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        backgroundColor: mainColor,
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsetsDirectional.only(top: 30),
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: isMale ? Colors.deepPurple : secColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                      ),
                      height: 150,
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/man.png',
                            width: 50,
                            height: 50,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'MALE',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: !isMale ? Colors.deepPurple : secColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                      ),
                      height: 150,
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/womens-day.png',
                            width: 70,
                            height: 50,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'FEMALE',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 15.0, left: 15.0),
                child: Container(
                  height: 170,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: secColor, borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'HEIGHT',
                          style: TextStyle(fontSize: 23, color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              '$_changeNum',
                              style: const TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const Text(
                              'cm',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ],
                        ),
                        Slider(
                          value: _changeNum.toDouble(),
                          onChanged: (value) {
                            setState(() {
                              _changeNum = value.round();
                            });
                          },
                          max: 300,
                          activeColor: Colors.purple,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: secColor,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    height: 150,
                    width: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'WEIGHT',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          '$_addWeight',
                          style: const TextStyle(
                              fontSize: 30, color: Colors.white),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(40)),
                                height: 50,
                                width: 50,
                                child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _addWeight++;
                                      });
                                    },
                                    icon: const FaIcon(
                                        FontAwesomeIcons.plusCircle))),
                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(40)),
                                height: 50,
                                width: 50,
                                child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _addWeight--;
                                      });
                                    },
                                    icon: const FaIcon(
                                        FontAwesomeIcons.minusCircle))),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: secColor,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    height: 150,
                    width: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'AGE',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          '$_addAge',
                          style: const TextStyle(
                              fontSize: 30, color: Colors.white),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(40)),
                                height: 50,
                                width: 50,
                                child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _addAge++;
                                      });
                                    },
                                    icon: const FaIcon(
                                        FontAwesomeIcons.plusCircle))),
                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(40)),
                                height: 50,
                                width: 50,
                                child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _addAge--;
                                      });
                                    },
                                    icon: const FaIcon(
                                        FontAwesomeIcons.minusCircle))),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
                  ),
                ),
                height: 60,
                width: double.infinity,
                child: MaterialButton(
                  onPressed: () {
                    double result =
                        _addWeight / pow(_changeNum / 100, 2).round() * 2;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BMIResult(
                                  age: _addAge,
                                  isMale: isMale,
                                  weight: _addWeight,
                                  result: result,
                                )));
                  },
                  color: Colors.purple,
                  child: const Text('CALCULTOR'),
                ))
          ],
        ),
      ),
    );
  }
}

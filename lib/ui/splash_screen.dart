import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        color: Colors.deepPurpleAccent.shade400,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/svg/undraw_calculator_re_alsc.svg',
                width: 150.0,
                height: 150.0,
              ),
              SizedBox(height: 10),
              Text('BMI',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20
              ),),
              Text('CALCULATOR',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                ),),


            ],
          ),

        ),
      ),
    );
  }
}

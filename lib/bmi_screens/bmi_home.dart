import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BMIScreen extends StatefulWidget {
  const BMIScreen({super.key});

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

Color mainColor = Color(0xff101323);
Color secColor = Color(0xff202020);

class _BMIScreenState extends State<BMIScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        title: Text(
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
        padding: EdgeInsetsDirectional.only(top: 30),
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: secColor,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
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
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'MALE',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: secColor,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
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
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'FEMALE',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
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
                        Text(
                          'HEIGHT',
                          style: TextStyle(fontSize: 23, color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '180',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              'cm',
                              style: TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ],
                        ),
                        Slider(
                          value: 150,
                          onChanged: (value) {},
                          max: 300,
                          min: 100,
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
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    height: 150,
                    width: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '60',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(40)
                                ),                            height: 50,
                                width: 50,
                                child: IconButton(onPressed: (){}, icon:  FaIcon(FontAwesomeIcons.plusCircle))),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(40)
                              ),
                                height: 50,
                                width: 50,
                                child: IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.minusCircle))),

                          ],
                        ),

                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: secColor,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    height: 150,
                    width: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '20',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(40)
                                ),                            height: 50,
                                width: 50,
                                child: IconButton(onPressed: (){}, icon:  FaIcon(FontAwesomeIcons.plusCircle))),
                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(40)
                                ),
                                height: 50,
                                width: 50,
                                child: IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.minusCircle))),

                          ],
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft:Radius.circular(70),topRight:Radius.circular(70),),
              ),
              height: 60,
              width: double.infinity,
                child: MaterialButton(onPressed: (){},color: Colors.purple,child: Text('CALCULTOR'),))


          ],
        ),
      ),
    );
  }
}

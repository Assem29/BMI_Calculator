import 'package:bmi_project/modules/home/bmi_home.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Welcome in BMI App 👋',
                style:
                    TextStyle(fontFamily: 'SairaExtraCondensed', fontSize: 22),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 60.0),
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Enter Your Email',
                      labelText: 'Email',
                      prefixIcon: const Icon(IconlyBold.user_2),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        gapPadding: 5,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Enter Your Password',
                      labelText: 'Password',
                      prefixIcon: const Icon(IconlyBold.lock),
                      suffixIcon: const Icon(IconlyBold.password),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const BMIScreen()));
                        },
                        color: Colors.blue,
                        child:  const Text(
                          'Login',
                          style: TextStyle(
                              fontFamily: 'SairaExtraCondensed', fontSize: 19),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t Have any Account ? ',
                        style: TextStyle(
                          fontFamily: 'SairaExtraCondensed',
                        ),
                      ),
                      Text(
                        'Register Now ',
                        style: TextStyle(
                          fontFamily: 'SairaExtraCondensed',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('OR'),
                  const SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/images/icons8-google-30.png'),
                        Image.asset(
                          'assets/images/icons8-twitter-50.png',
                          width: 30,
                        ),
                        Image.asset(
                          'assets/images/icons8-facebook-50.png',
                          width: 30,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

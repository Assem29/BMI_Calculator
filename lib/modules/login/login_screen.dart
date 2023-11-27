import 'package:bmi_project/modules/home/bmi_home.dart';
import 'package:bmi_project/shared/components/constent.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

var emailControl = TextEditingController();
var passwordControl = TextEditingController();
var formKey = GlobalKey<FormState>();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Welcome in BMI App 👋',
                    style: TextStyle(
                        fontFamily: 'SairaExtraCondensed',
                        fontSize: 22,
                        color: thirdColor),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, right: 10.0, top: 60.0),
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: emailControl,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'password not be empty';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
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
                          controller: passwordControl,
                          obscureText: true,
                          keyboardType: TextInputType.phone,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'password not be empty';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
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
                                if (formKey.currentState!.validate()) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const BMIScreen()));
                                } else {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    backgroundColor: Colors.red,
                                    content: Text(
                                        'Something went wrong. Please try again later.'),
                                  ));
                                }
                              },
                              color: Colors.purple,
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                    fontFamily: 'SairaExtraCondensed',
                                    fontSize: 22),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don\'t Have any Account ? ',
                              style: TextStyle(
                                fontFamily: 'SairaExtraCondensed',
                                color: thirdColor,
                              ),
                            ),
                            Text(
                              'Register Now ',
                              style: TextStyle(
                                fontFamily: 'SairaExtraCondensed',
                                color: thirdColor,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                         Text('OR',style: TextStyle(
                          color: thirdColor,

                        ),),
                        const SizedBox(
                          height: 20,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'assets/images/icons8-google-30.png',
                                color: thirdColor,
                              ),
                              Image.asset(
                                'assets/images/icons8-twitter-50.png',
                                width: 30,
                                color: thirdColor,
                              ),
                              Image.asset(
                                'assets/images/icons8-facebook-50.png',
                                width: 30,
                                color: thirdColor,
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),

          ),
        ));
  }
}

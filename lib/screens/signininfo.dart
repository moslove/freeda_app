import 'package:flutter/material.dart';
import 'package:freeda_app/widgets/app_button2.dart';
import 'package:freeda_app/widgets/my_text.dart';

class SignInInfo extends StatefulWidget {
  const SignInInfo({Key? key}) : super(key: key);

  @override
  State<SignInInfo> createState() => _SignInInfoState();
}

class _SignInInfoState extends State<SignInInfo> {
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();

  @override
  void dispose() {
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 91),

              // creating text

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    MyText(
                      title: 'Log In',
                      size: 44,
                      color: Colors.black87,
                      weight: FontWeight.bold,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 64),

              // creating customised buttons

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 53,
                    width: 161,
                    decoration: BoxDecoration(
                      color: Color(0xffF5F6FA),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(3.0, 3.0),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.black26,
                        width: 1.0,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'GOOGLE',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 53,
                    width: 161,
                    decoration: BoxDecoration(
                      color: Color(0xffF5F6FA),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(3.0, 3.0),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.black26,
                        width: 1.0,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'FACEBOOK',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 29.5),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 2,
                    width: 62,
                    decoration: BoxDecoration(
                      color: Color(0xffF5F6FA),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(3.0, 3.0),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.black26,
                        width: 1.0,
                      ),
                    ),
                  ),
                  MyText(
                    title: 'Or',
                    size: 15,
                    color: Colors.black87,
                    weight: FontWeight.bold,
                  ),
                  Container(
                    height: 2,
                    width: 62,
                    decoration: BoxDecoration(
                      color: Color(0xffF5F6FA),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(3.0, 3.0),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.black26,
                        width: 1.0,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 25),

              //creating email text form

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                    height: 53.73,
                    width: 332,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        controller: _emailcontroller,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'mickey.moore@mail.com',
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xffF5F6FA),
                      border: Border.all(
                        color: Color(0xff314BCE),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    )),
              ),

              SizedBox(height: 13),

              //creating password text form

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                    height: 53.73,
                    width: 332,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                          controller: _passwordcontroller,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '************',
                              suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.remove_red_eye_outlined,
                                  color: Colors.black,
                                ),
                              ))),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xffF5F6FA),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(8),
                    )),
              ),

              SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forget Password?",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff5771F9),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 52),

              AppButtonBig(
                textColor: Colors.white,
                backgroundColor: Color(0xff5771F9),
                borderColor: Colors.grey,
                text: "Log In",
                height: 56,
                width: 332,
                value: 8,
                size: 18,
              ),

              SizedBox(height: 80),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    MyText(
                      title: 'Don’t have an account?',
                      size: 14,
                      color: Colors.black54,
                      weight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 11),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    MyText(
                      title: 'REGISTER',
                      size: 16,
                      color: Color(0xff314BCE),
                      weight: FontWeight.bold,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Color(0xff314BCE),
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

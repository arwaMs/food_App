import 'package:flutter/material.dart';
import 'package:food_app/SignUp.dart';
import 'package:food_app/homePage.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final formKey = GlobalKey<FormState>();
  bool isHiddenPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SingleChildScrollView(
        child: StickyHeader(
          header: Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            color: Color(0xffffffff),
            padding: EdgeInsets.symmetric(horizontal: 16.0),
          ),
          content: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Image.network(
                  "https://img.whatshop.live/user/logo/2151%20-%201612198227.jpeg",
                  height: 200,
                  width: 200,
                ),
                SizedBox(
                  height: 30,
                ),
                Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 250,
                        child: TextField(
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                            labelText: 'رقم الهاتف المحمول ',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 250,
                        child: TextField(
                          obscureText: isHiddenPassword,
                          decoration: InputDecoration(
                            labelText: '... كلمة السر  ',
                            prefixIcon: InkWell(
                                onTap: _togglePasswordView,
                                child: Icon(Icons.visibility_outlined)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (BuildContext newContext) {
                                      return SignUp();
                                    },
                                  ),
                                );
                              },
                              child: Container(
                                child: Text(
                                  " نسيت كلمة السر ؟ ",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.deepOrange[900]),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 50,
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff464eaf),
                              ),
                              child: Text(
                                "f",
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 25,
                                    color: Color(0xffffffff)),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 50,
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red.shade900,
                              ),
                              child: Text(
                                "g+",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 25,
                                    color: Color(0xffffffff)),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 50,
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue.shade600,
                              ),
                              child: Image.network(
                                'https://ra.ac.ae/wp-content/uploads/2020/01/logo-twitter-icon-symbol-0.png',
                                //fit: BoxFit.contain,
                                height: 40,
                                width: 60,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext newContext) {
                                return HomePage();
                              },
                            ),
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 160,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.deepOrange[900],
                          ),
                          child: Text(
                            "تسجيل الدخول",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "لا تملك حساب ؟",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff000000)),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext newContext) {
                                return SignUp();
                              },
                            ),
                          );
                        },
                        child: Container(
                          child: Text(
                            "أنشىء حساب الان ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange[900]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }
}

class SignFormField extends StatelessWidget {
  final String hint;
  final validator;
  final controller;

  SignFormField({required this.validator, required this.hint, this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hint,
        ),
        controller: controller,
        validator: validator,
      ),
    );
  }
}

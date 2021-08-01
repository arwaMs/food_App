import 'package:flutter/material.dart';
import 'package:food_app/SignUp.dart';
import 'package:food_app/homePage.dart';

import 'package:sticky_headers/sticky_headers.dart';

class ActivationCode extends StatefulWidget {
  @override
  _ActivationCodeState createState() => _ActivationCodeState();
}

class _ActivationCodeState extends State<ActivationCode> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffffffff),
        body: SingleChildScrollView(
          child: StickyHeader(
            header: Container(
              height: 130,
              width: MediaQuery.of(context).size.width,
              color: Color(0xffffffff),
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  SizedBox(width: 20,),
                  GestureDetector(
                    onTap: (){ Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext newContext) {
                          return SignUp();
                        },
                      ),
                    );
                    },
                    child: Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Color(0xffc0c0c0),
                    ),
                  ),
                  SizedBox(
                    width:50,
                  ),



                ],
              ),
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
                    height: 60,
                  ),
                  Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 300,
                          child: TextField(
                            textAlign: TextAlign.right,
                            decoration: InputDecoration(
                              hintText: 'رمز التفعيل ',
                            ),
                          ),
                        ),
                        SizedBox(height: 35,),

                         Text(" 1:40s ",
                           textAlign: TextAlign.center,
                           style: TextStyle(
                               fontSize: 10,
                               fontWeight: FontWeight.bold,
                              color: Color(0xff000000)),),
                        SizedBox(height: 20,),

                        GestureDetector(
                          onTap: () {
                            // OTP code resend
                          },
                          child: Text(
                            "إعادة إرسال الرمز",
                            style: TextStyle(
                              color: Color(0xff5200ef),
                              fontSize: 15,
                              fontFamily: 'Changa',
                              // decoration: TextDecoration.underline
                            ),
                            //style: TextStyle(decoration: TextDecoration.underline),
                          ),

                        ),
                        SizedBox(height: 50,),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext newContext) {
                                  //return navigation();
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
                              color: Color(0xff283190),
                            ),
                            child: Text(
                              "متابعة",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 16,
                                color: Color(0xffffffff),
                                fontFamily:  'Changa',
                              ),
                            ),
                          ),
                        ),
                        // Container(
                        //   alignment: Alignment.center,
                        //   width: 160,
                        //   height: 30,
                        //   decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(50),
                        //     color: Color(0xff283190),
                        //   ),
                        //   child: Text(
                        //     "متابعة",
                        //     style: TextStyle(
                        //       fontWeight: FontWeight.w800,
                        //       fontSize: 16,
                        //       color: Color(0xffffffff),
                        //       fontFamily:  'Changa',
                        //     ),
                        //   ),
                        // ),
                        // DefaultButton(
                        //   text: "متابعة",
                        //   // press: () async {
                        //   //   Navigator.pushNamed(context, Home());
                        //   // },
                        //   press: () {
                        //     Navigator.of(context).push(
                        //       MaterialPageRoute(
                        //         builder: (BuildContext newContext) {
                        //           return navigation();
                        //         },
                        //       ),
                        //     );
                        //   },
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));}}
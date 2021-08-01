import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Activation.dart';
import 'package:food_app/logIn.dart';
import 'package:sticky_headers/sticky_headers.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formKey = GlobalKey<FormState>();
  bool isHiddenPassword = true;

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
                        return LogIn();
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
                  width: 50,
                ),
                Image.network(
                  "https://img.whatshop.live/user/logo/2151%20-%201612198227.jpeg",
                  height: 200,
                  width: 200,
                ),
                Padding(
                    padding: EdgeInsets.only(left:0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.arrow_drop_down,
                        size: 26.0,
                        color: Color(0xff000000),
                      ),
                    )),
              ],
            ),
          ),
          content: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [

                Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 300,
                        child: TextField(
                          style: TextStyle(
                            fontFamily:  'Changa',
                          ),
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            hintText: 'الاسم ',

                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 300,
                        child: TextField(
                          style: TextStyle(
                            fontFamily:  'Changa',
                          ),
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            hintText: 'رقم الهاتف المحمول ',

                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 300,
                        child: TextField(
                          textAlign: TextAlign.right,
                          obscureText: isHiddenPassword,
                          decoration: InputDecoration(
                            hintText: ' كلمة السر  ',
                            suffixIcon: InkWell(
                                onTap: _togglePasswordView,
                                child: Icon(CupertinoIcons.eye)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 300,
                        child: TextField(
                          textAlign: TextAlign.right,
                          obscureText: isHiddenPassword,
                          decoration: InputDecoration(
                            hintText: ' تأكيد كلمة السر  ',
                            suffixIcon: InkWell(
                                onTap: _togglePasswordView,
                                child: Icon(CupertinoIcons.eye)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 65,
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
                        height: 40,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext newContext) {
                                return ActivationCode();
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
                            "تسجيل ",
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 16,
                                color: Color(0xffffffff)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "بالضغط على تسجيل أنت موافق على ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Changa',
                            fontSize: 16,
                            //fontWeight: FontWeight.bold,
                            color: Color(0xff000000)),
                      ),
                      GestureDetector(
                        onTap: () {
                        },
                        child: Container(
                          child: Text(
                            "الشروط والأحكام  ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Changa',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff5200ef)),
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

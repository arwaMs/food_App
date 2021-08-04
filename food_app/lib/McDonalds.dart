import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

class McD extends StatefulWidget {
  @override
  _McDState createState() => _McDState();
}

class _McDState extends State<McD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
      length: 4,
      child: SingleChildScrollView(
        child: StickyHeader(
            header: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Color(0xffffffff),
              child: Row(
                children: [
                  Image.network(
                    'https://yallabook.com/blog/uploade/files/210417_2396c9d7bb.jpg',
                    fit: BoxFit.fill,
                    height: 250,
                    width: 410,
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
            content: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  TabBar(
                    isScrollable: true,
                    labelColor: Color(0xff283190),
                    labelStyle: TextStyle(
                      fontSize: 18,
                    ),
                    tabs: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Tab(text: "offers"),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "|",
                            style: TextStyle(
                              fontSize: 30,
                              color: Color(0xffc0c0c0),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Tab(text: ("chicken Sandwich")),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "|",
                            style: TextStyle(
                              fontSize: 30,
                              color: Color(0xffc0c0c0),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Tab(text: ("chicken meals")),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "|",
                            style: TextStyle(
                              fontSize: 30,
                              color: Color(0xffc0c0c0),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Tab(text: "drinks"),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    height: 0,
                    color: Color(0xffc0c0c0),
                    endIndent: 1,
                    indent: 1,
                    thickness: 1,
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        Offers(context),
                        Sandwich(),
                        meals(),
                        drinks()
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
    ));
  }

 }

Widget drinks (){
  return SingleChildScrollView(
    child: Column(
      children: [
        SizedBox(height: 20,),
        Container(
          height: 120,
          width: 370,
          margin: EdgeInsets.only(left: 2),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 9,
                offset: Offset(3, 3),
              )
            ],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 100,
                    width: 90,
                    child: Image.network(
                        "https://www.mcdonalds.com/content/dam/ArabiaGWS/arabic/nfl/Nutrition/Items/Regular/coke-zero-uae-v1.png"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // SizedBox(height: 1,),
                      Text(
                        " Cocoa cola  ",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 15,),
                      Text(
                        "8 SR ",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 30,),
        Container(
          height: 120,
          width: 370,
          margin: EdgeInsets.only(left: 2),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 9,
                offset: Offset(3, 3),
              )
            ],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 110,
                    width: 110,
                    child: Image.network(
                        "https://www.mcdonalds.com/content/dam/ArabiaGWS/arabic/nfl/Nutrition/Items/Regular/sprite.png"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // SizedBox(height: 1,),
                      Text(
                        "sprite ",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 15,),
                      Text(
                        "8 SR",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 30,),
        Container(
          height: 120,
          width: 370,
          margin: EdgeInsets.only(left: 2),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 9,
                offset: Offset(3, 3),
              )
            ],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.network(
                        "https://mcdonalds.eg/Cms_Data/Contents/Ar/Media/images/Menu/large-Image/Fanta.png"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // SizedBox(height: 1,),
                      Text(
                        "fanta ",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 15,),
                      Text(
                        "8 SR ",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),

      ],
    ),
  );
}

Widget meals (){
  return SingleChildScrollView(
    child: Column(
      children: [
        SizedBox(height: 20,),
        Container(
          height: 120,
          width: 370,
          margin: EdgeInsets.only(left: 2),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 9,
                offset: Offset(3, 3),
              )
            ],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 100,
                    width: 90,
                    child: Image.network(
                        "https://www.qaym.com/54173.jpg"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // SizedBox(height: 1,),
                      Text(
                        " big mac chicken meal  ",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 15,),
                      Text(
                        "26 SR ",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 30,),
        Container(
          height: 120,
          width: 370,
          margin: EdgeInsets.only(left: 2),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 9,
                offset: Offset(3, 3),
              )
            ],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 110,
                    width: 110,
                    child: Image.network(
                        "https://assets.grab.com/wp-content/uploads/sites/8/2019/03/12120002/chicken-grilled-mcdonalds-burger-delivery-700x700.jpg"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // SizedBox(height: 1,),
                      Text(
                        "Grilled chicken meal  ",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 15,),
                      Text(
                        "31 SR",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 30,),
        Container(
          height: 120,
          width: 370,
          margin: EdgeInsets.only(left: 2),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 9,
                offset: Offset(3, 3),
              )
            ],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 100,
                    width: 90,
                    child: Image.network(
                        "https://dlwaqty.com/storage/116302/conversions/5b1db85b926851beca2dc1c6e4f1ed28-size900-thumb.jpg"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // SizedBox(height: 1,),
                      Text(
                        "mac arabian chicken meal ",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 15,),
                      Text(
                        "27 SR ",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),

      ],
    ),
  );
}

Widget Sandwich (){
  return SingleChildScrollView(
    child: Column(
      children: [
        SizedBox(height: 20,),
        Container(
          height: 120,
          width: 370,
          margin: EdgeInsets.only(left: 2),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 9,
                offset: Offset(3, 3),
              )
            ],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 100,
                    width: 90,
                    child: Image.network(
                        "https://www.mcdonalds.com/is/image/content/dam/usa/nfl/nutrition/items/hero/desktop/t-mcdonalds-McChicken.jpg"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // SizedBox(height: 1,),
                      Text(
                        "chicken mac  ",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 15,),
                      Text(
                        "16 SR ",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 30,),
        Container(
          height: 120,
          width: 370,
          margin: EdgeInsets.only(left: 2),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 9,
                offset: Offset(3, 3),
              )
            ],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 110,
                    width: 110,
                    child: Image.network(
                        "http://3.bp.blogspot.com/-0PGmWTW_cJE/U0G-e9LxcQI/AAAAAAAACcA/Mdb0WlRzk0g/s1600/Premium-Chicken.jpg"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // SizedBox(height: 1,),
                      Text(
                        "Grilled chicken burger  ",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 15,),
                      Text(
                        "21 SR",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 30,),
        Container(
          height: 120,
          width: 370,
          margin: EdgeInsets.only(left: 2),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 9,
                offset: Offset(3, 3),
              )
            ],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 100,
                    width: 90,
                    child: Image.network(
                        "https://www.mcdonalds.com/content/dam/ArabiaGWS/english/nfl/Nutrition/Items/Regular/chicken-mac-riyadh.png"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // SizedBox(height: 1,),
                      Text(
                        "big mac chicken sandwich ",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 15,),
                      Text(
                        "23 SR ",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),

      ],
    ),
  );
 }




Widget Offers (BuildContext context){
  return SingleChildScrollView(
    child: Container(
      height: MediaQuery.of(context).size.height,

      child: Column(
        children: [
          SizedBox(height: 20,),
      Container(
        height: 120,
        width: 370,
        margin: EdgeInsets.only(left: 2),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 9,
              offset: Offset(3, 3),
            )
          ],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 100,
                  width: 90,
                  child: Image.network(
                      "https://saudi.deals/wp-content/uploads/2021/06/mcdonalds.jpg"),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // SizedBox(height: 1,),
                    Text(
                      "chicken mac widgets ",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 15,),
                    Text(
                      "8 SR ",
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
          SizedBox(height: 30,),
          Container(
            height: 120,
            width: 370,
            margin: EdgeInsets.only(left: 2),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 9,
                  offset: Offset(3, 3),
                )
              ],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 110,
                      width: 110,
                      child: Image.network(
                          "https://www.fastfoodpost.com/wp-content/uploads/2020/11/Buy-One-Get-One-For-1-Deal-Returns-To-McDonalds.jpg"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // SizedBox(height: 1,),
                        Text(
                          "buy one git one free  ",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 15,),

                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
SizedBox(height: 30,),
          Container(
            height: 120,
            width: 370,
            margin: EdgeInsets.only(left: 2),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 9,
                  offset: Offset(3, 3),
                )
              ],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 100,
                      width: 90,
                      child: Image.network(
                          "https://saudi.deals/wp-content/uploads/2021/01/mcdonalds-saudi.jpg"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // SizedBox(height: 1,),
                        Text(
                          "spicy grand chicken ",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 15,),
                        Text(
                          "28 SR ",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),





        ],
      ),
    ),
  );
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xffffffff),
          title: Text(
            "FOOD STATION",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          leading: GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.menu,
              color: Color(0xff261A4D),
            ),
          ),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.add_alert_outlined,
                    size: 26.0,
                    color: Color(0xff000000),
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.add_shopping_cart_sharp,
                    size: 26.0,
                    color: Color(0xff000000),
                  ),
                )),
          ],
        ),
        backgroundColor: Color(0xffffffff),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: (12), right: (12)),
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 9),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.center,
                      width: 375,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xffffffff),
                        boxShadow: kElevationToShadow[8],
                      ),
                      child: TextField(
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          labelText: 'بحث ...   ',
                          prefixIcon: Icon(CupertinoIcons.search),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 220,
                  width: 1000,
                  child: ListView(
                    children: [
                      LimitedBox(
                        maxHeight: 220,
                        maxWidth: 800,
                        child: PageView(
                          children: [
                            AdsSlideCards(
                              slideImage:
                                  'https://images.phi.content-cdn.io/cdn-cgi/image/height=450,width=900,quality=50/https://images.phi.content-cdn.io/yum-resources/82e0a3d5-7658-461d-b6fa-866e9dd37ce6/Images/userimages/3890%20-%20SR%2075%201080x540.jpg',
                            ),
                            AdsSlideCards(
                              slideImage:
                                  "https://images.deliveryhero.io/image/talabat/MenuItems/Happy_Meal_Chicken_B_637130055222951198.jpg",
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Restaurants",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 120,
                  width: 370,
                  color: Colors.grey[100],
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 120,
                            width: 110,
                            child: Image.network(
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/McDonald%27s_logo.svg/2560px-McDonald%27s_logo.svg.png"),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              // SizedBox(height: 1,),
                              Text(
                                "McDonald's",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 15,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.star,color: Colors.black54,),
                                  Icon(Icons.star,color: Colors.black54,),
                                  Icon(Icons.star,color: Colors.black54),
                                  Icon(Icons.star,color: Colors.black54,),
                                  Icon(Icons.star_half,color: Colors.black54,),


                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 120,
                  width: 370,
                  color: Colors.grey[100],
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 120,
                            width: 110,
                            child: Image.network(
                                "https://seeklogo.com/images/P/pizza-hut-logo-DBFE2E48AF-seeklogo.com.png"),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              // SizedBox(height: 1,),
                              Text(
                                "Pizza Hut",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 15,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.star,color: Colors.black54,),
                                  Icon(Icons.star,color: Colors.black54,),
                                  Icon(Icons.star,color: Colors.black54),
                                  Icon(Icons.star,color: Colors.black54,),
                                  Icon(Icons.star,color: Colors.black54,),


                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 120,
                  width: 370,
                  color: Colors.grey[100],
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 120,
                            width: 110,
                            child: Image.network(
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Burger_King_logo_%281994%29.svg/1056px-Burger_King_logo_%281994%29.svg.png"),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              Text(
                                "Burger King ",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 15,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.star,color: Colors.black54,),
                                  Icon(Icons.star,color: Colors.black54,),
                                  Icon(Icons.star,color: Colors.black54),
                                  Icon(Icons.star_border,color: Colors.black54,),
                                  Icon(Icons.star_border,color: Colors.black54,),

                                ],
                              )
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
        ));
  }
}

class AdsSlideCards extends StatelessWidget {
  final slideImage;
  AdsSlideCards({this.slideImage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 15,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          height: 180,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              image: NetworkImage(
                slideImage,
              ),
              width: 500,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

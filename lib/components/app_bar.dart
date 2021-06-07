// @dart=2.9
import 'package:flutter/material.dart';

class Custom extends StatefulWidget {
  Custom({Key key}) : super(key: key);

  @override
  _CustomState createState() => _CustomState();
}

class _CustomState extends State<Custom> {
  TextEditingController _search = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      color: Colors.black,

      // height: 60.0,
      // color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'SYSTEMS',
            style: TextStyle(
                fontFamily: 'made',
                fontSize: 29,
                fontWeight: FontWeight.bold,
                color: Colors.orange),
          ),

          InkWell(
            onTap: () {},
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.white,
                      size: 26,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "hello",
                          style: TextStyle(
                              color: Colors.grey[350], fontSize: 17.0),
                        ),
                        Text(
                          "Select your address",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),

          Container(
            // color: Colors.white,
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.symmetric(horizontal: 10),

            width: 400,

            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(50.0),

              // boxShadow: [
              //   new BoxShadow(color: Colors.grey[100], blurRadius: 20.0)
              // ],
            ),
            child: TextField(
              cursorColor: Colors.orange,
              controller: _search,
              decoration: InputDecoration(
                  icon: Icon(Icons.search, color: Colors.grey, size: 25),
                  border: InputBorder.none,
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
          ),

          InkWell(
            onTap: () {},
            child: Row(
              children: [
                Text(
                  "Hello,Sign in",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 1,
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                Container(
                  height: 35,
                  width: 55,
                  child: Image(
                    image: AssetImage("images/cart.png"),
                    width: 55,
                    height: 35,
                    // fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 3.0,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 18, 0, 0),
                  child: Text(
                    "Cart",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),

          // SearchBar(),
        ],
      ),
    );
  }
}

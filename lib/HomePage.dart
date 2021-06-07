// @dart=2.9
import 'package:computer_customization_homepage_ui/components/app_bar.dart';
import 'package:computer_customization_homepage_ui/components/desktop.dart';
import 'package:computer_customization_homepage_ui/components/laptop.dart';
import 'package:flutter/material.dart';

class Users extends StatefulWidget {
  Users({Key key}) : super(key: key);

  @override
  _UsersState createState() => _UsersState();
}

class _UsersState extends State<Users> {
  Color myHexColor = Color(0xff123456);
  int i = 1;
  double _opacity1 = 0;
  double _opacity2 = 1;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var a = size.height - 100;
    return Scaffold(
      backgroundColor: i == 1 ? Colors.black : Colors.indigo[900],
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Custom(),
            Container(
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              height: 40,
              width: size.width,
            ),
            Container(
              height: a - 10,
              width: size.width,
              child: Stack(
                fit: StackFit.loose,
                children: [
                  AnimatedOpacity(
                    duration: Duration(seconds: 1),
                    opacity: _opacity1,
                    child: Container(
                        height: a,
                        width: size.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/1.jpg"),
                              fit: BoxFit.cover),
                        )),
                  ),
                  AnimatedOpacity(
                    duration: Duration(seconds: 1),
                    opacity: _opacity2,
                    child: Container(
                        height: a,
                        width: size.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/computer.jpg"),
                            fit: BoxFit.fill,
                          ),
                        )),
                  ),
                  Positioned(
                    top: 200.0,
                    left: 0,
                    child: Container(
                      width: size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: Icon(Icons.navigate_before_rounded),
                            iconSize: 30,
                            color: Colors.white,
                            onPressed: i == 2
                                ? () {
                                    setState(() {
                                      i = 1;
                                      _opacity2 = 1.0;
                                      _opacity1 = 0.0;
                                    });
                                  }
                                : null,
                          ),
                          IconButton(
                              iconSize: 30,
                              color: Colors.white,
                              onPressed: i != 2
                                  ? () {
                                      setState(() {
                                        i = 2;
                                        _opacity2 = 0.0;
                                        _opacity1 = 1.0;
                                      });
                                    }
                                  : null,
                              icon: Icon(Icons.navigate_next_rounded)),
                        ],
                      ),
                    ),
                  ),
                  i == 1 ? Desk() : Lap(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

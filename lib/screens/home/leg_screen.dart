import 'package:flutter/material.dart';
import 'package:sign_in/screens/home/lday1.dart';
import 'package:sign_in/screens/home/lday2.dart';
import 'package:sign_in/screens/home/lday3.dart';
import 'package:sign_in/screens/home/lday4.dart';
import 'package:sign_in/screens/home/lday5.dart';
import 'package:sign_in/screens/home/lday6.dart';
import 'package:sign_in/screens/home/lday7.dart';

class Leg extends StatelessWidget {
  const Leg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 200, 243, 245),
        body: Stack(children: [
          SizedBox(
            child: Container(
                height: size.height * .700,
                width: size.width * .700,
                margin: EdgeInsets.only(
                  left: 140,
                  bottom: 80,
                ),
                decoration: BoxDecoration(
                  // color: Color.fromARGB(255, 204, 153, 214),
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/legs.png.png',
                      ),
                      fit: BoxFit.fitWidth),
                )),
          ),
          SafeArea(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: size.height * 0.04,
                ),
                Text("LEG Workout ",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        color: Color.fromARGB(255, 22, 142, 172),
                        fontSize: 35,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w900)),
                SizedBox(
                  height: 6.0,
                ),
                Text("do daily 10-15 mints ",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        color: Color.fromARGB(255, 22, 142, 172),
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w700)),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                    " Leg workouts engage the major muscle groups of your body\n which helps to improve overall athletic performance and \n support healthy movement patterns in your daily life",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromARGB(255, 22, 142, 172),
                        fontSize: 12,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w100)),
                Spacer(),
                SizedBox(
                    height: 360,
                    child: ListView(children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 17),
                                  blurRadius: 23,
                                  spreadRadius: -13,
                                  color: Color.fromARGB(255, 253, 238, 255))
                            ]),
                        child: Row(
                          children: <Widget>[
                            Container(
                                height: 40,
                                width: 43,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 22, 142, 172),
                                    shape: BoxShape.circle),
                                child: (IconButton(
                                  icon: Icon(Icons.play_arrow),
                                  color: Colors.white,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Lday1()),
                                    );
                                  },
                                ))),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Day 1")
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 17),
                                  blurRadius: 23,
                                  spreadRadius: -13,
                                  color: Color.fromARGB(255, 253, 238, 255))
                            ]),
                        child: Row(
                          children: <Widget>[
                            Container(
                                height: 42,
                                width: 43,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 22, 142, 172),
                                    shape: BoxShape.circle),
                                child: (IconButton(
                                  icon: Icon(Icons.play_arrow),
                                  color: Colors.white,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Lday2()),
                                    );
                                  },
                                ))),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Day 2")
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 17),
                                  blurRadius: 23,
                                  spreadRadius: -13,
                                  color: Color.fromARGB(255, 253, 238, 255))
                            ]),
                        child: Row(
                          children: <Widget>[
                            Container(
                                height: 42,
                                width: 43,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 22, 142, 172),
                                    shape: BoxShape.circle),
                                child: IconButton(
                                  icon: Icon(Icons.play_arrow),
                                  color: Colors.white,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Lday3()),
                                    );
                                  },
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Day 3")
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 17),
                                  blurRadius: 23,
                                  spreadRadius: -13,
                                  color: Color.fromARGB(255, 253, 238, 255))
                            ]),
                        child: Row(
                          children: <Widget>[
                            Container(
                                height: 42,
                                width: 43,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 22, 142, 172),
                                    shape: BoxShape.circle),
                                child: IconButton(
                                  icon: Icon(Icons.play_arrow),
                                  color: Colors.white,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Lday4()),
                                    );
                                  },
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Day 4")
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 17),
                                  blurRadius: 23,
                                  spreadRadius: -13,
                                  color: Color.fromARGB(255, 253, 238, 255))
                            ]),
                        child: Row(
                          children: <Widget>[
                            Container(
                                height: 42,
                                width: 43,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 22, 142, 172),
                                    shape: BoxShape.circle),
                                child: IconButton(
                                  icon: Icon(Icons.play_arrow),
                                  color: Colors.white,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Lday5()),
                                    );
                                  },
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Day 5")
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 17),
                                  blurRadius: 23,
                                  spreadRadius: -13,
                                  color: Color.fromARGB(255, 253, 238, 255))
                            ]),
                        child: Row(
                          children: <Widget>[
                            Container(
                                height: 42,
                                width: 43,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 22, 142, 172),
                                    shape: BoxShape.circle),
                                child: IconButton(
                                  icon: Icon(Icons.play_arrow),
                                  color: Colors.white,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Lday6()),
                                    );
                                  },
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Day 6")
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 17),
                                  blurRadius: 23,
                                  spreadRadius: -13,
                                  color: Color.fromARGB(255, 253, 238, 255))
                            ]),
                        child: Row(
                          children: <Widget>[
                            Container(
                                height: 42,
                                width: 43,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 22, 142, 172),
                                    shape: BoxShape.circle),
                                child: IconButton(
                                  icon: Icon(Icons.play_arrow),
                                  color: Colors.white,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Lday7()),
                                    );
                                  },
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Day 7")
                          ],
                        ),
                      ),
                    ]))
              ],
            ),
          )
        ]));
  }
}

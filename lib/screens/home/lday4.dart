import 'package:flutter/material.dart';
import 'package:sign_in/screens/home/lday4_exercises.dart';

class Lday4 extends StatefulWidget {
  @override
  State<Lday4> createState() => _WorkoutState();
}

class _WorkoutState extends State<Lday4> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Day 4: List of Exercises',
            style: TextStyle(
                fontSize: 21, color: Color.fromARGB(255, 255, 255, 255)),
          ),
          elevation: 6.0,
          backgroundColor: Color.fromARGB(255, 22, 142, 172),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            color: Color.fromARGB(255, 255, 255, 255),
            icon: Icon(Icons.arrow_back),
          ),
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    '6 Mins, 8 Exercises',
                    style: TextStyle(
                        height: 2.7,
                        fontSize: 18,
                        color: Color.fromARGB(255, 22, 142, 172)),
                  ),
                  SizedBox(
                    height: 1,
                    width: 100.0,
                  ),
                  InkWell(
                    // splashColor: Colors.purple[200],
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            elevation: 5,
                            actions: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text.rich(
                                  TextSpan(
                                    text: 'Side Lunges\n\n',
                                      style: TextStyle(
                                      fontSize: 16.5,
                                      color: Color.fromARGB(255, 6, 58, 70),
                                    ),
                                    children: <TextSpan>[
                                     
                                      TextSpan(
                                          text:
                                              'Stand straight with your feet together move your right leg to the side, then lower your body while keeping your left leg straight go back to the start position and switch to the other side'),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                               Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      shape: StadiumBorder(),
                                      minimumSize: Size(10, 40),
                                      side: BorderSide(
                                        width: 2.5,
                                        color:
                                             Color.fromARGB(255, 22, 142, 172),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text(
                                      'Close',
                                      style: TextStyle(
                                            color: Color.fromARGB(255, 6, 58, 70),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                          
                            ],
                          );
                        },
                      );
                    },
                    child: Card(
                      color: Color.fromARGB(212, 215, 255, 255),
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      elevation: 5.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.album,
                          size: 65,
                          color: Color.fromARGB(255, 22, 142, 172),
                        ),
                        title: Text('Side Lunges',
                            style: TextStyle(
                                fontSize: 25.0,
                                color: Color.fromARGB(255, 36, 169, 202))),
                        subtitle: Text('40 seconds',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color.fromARGB(255, 36, 169, 202),
                            )),
                      ),
                    ),
                  ),
                  InkWell(
                    // splashColor: Colors.purple[200],
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            elevation: 5,
                            actions: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text.rich(
                                  TextSpan(
                                    text: 'Butt Bridge\n\n',
                                      style: TextStyle(
                                      fontSize: 16.5,
                                      color: Color.fromARGB(255, 6, 58, 70),
                                    ),
                                    children: <TextSpan>[
                                    
                                      TextSpan(
                                          text:
                                              ' Lie on your back with knees bent and feet flat on your floor put your arms flat at your sides then lift your butt up and down'),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                             Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      shape: StadiumBorder(),
                                      minimumSize: Size(10, 40),
                                      side: BorderSide(
                                        width: 2.5,
                                        color:
                                             Color.fromARGB(255, 22, 142, 172),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text(
                                      'Close',
                                      style: TextStyle(
                                            color: Color.fromARGB(255, 6, 58, 70),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Card(
                      color: Color.fromARGB(212, 215, 255, 255),
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      elevation: 5.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.album,
                          size: 65,
                          color: Color.fromARGB(255, 22, 142, 172),
                        ),
                        title: Text('Butt Bridge',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Color.fromARGB(255, 36, 169, 202),
                            )),
                        subtitle: Text('40 seconds',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color.fromARGB(255, 36, 169, 202),
                            )),
                      ),
                    ),
                  ),
                  InkWell(
                    //  splashColor: Colors.purple[200],
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            elevation: 5,
                            actions: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text.rich(
                                  TextSpan(
                                    text: 'Sumo Squats\n\n',
                                      style: TextStyle(
                                      fontSize: 16.5,
                                      color: Color.fromARGB(255, 6, 58, 70),
                                    ),
                                    children: <TextSpan>[
                                     
                                      TextSpan(
                                          text:
                                              'Stand with your feet 6 - 12 inches a part stretch your arms in front of you lower your body until your thighs are parallel to the floor return to the starting position and repeat the exercise.'),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                                 Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      shape: StadiumBorder(),
                                      minimumSize: Size(10, 40),
                                      side: BorderSide(
                                        width: 2.5,
                                        color:
                                             Color.fromARGB(255, 22, 142, 172),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text(
                                      'Close',
                                      style: TextStyle(
                                            color: Color.fromARGB(255, 6, 58, 70),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            
                            ],
                          );
                        },
                      );
                    },

                    child: Card(
                      color: Color.fromARGB(212, 215, 255, 255),
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      elevation: 5.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.album,
                          size: 65,
                          color: Color.fromARGB(255, 22, 142, 172),
                        ),
                        title: Text('Sumo Squats',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Color.fromARGB(255, 36, 169, 202),
                            )),
                        subtitle: Text('40 seconds',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color.fromARGB(255, 36, 169, 202),
                            )),
                      ),
                    ),
                  ),
                  InkWell(
                    //   splashColor: Colors.purple[200],
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            elevation: 5,
                            actions: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text.rich(
                                  TextSpan(
                                    text: 'Reclined Oblique Twist\n\n',
                                      style: TextStyle(
                                      fontSize: 16.5,
                                      color: Color.fromARGB(255, 6, 58, 70),
                                    ),
                                    children: <TextSpan>[
                                      
                                      TextSpan(
                                          text:
                                              'Lie on your back with your legs extended and your elbows directly under your  shoulders  lift your left leg up at a 45 degree angle while reaching your right arm over to your left side'),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                               Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      shape: StadiumBorder(),
                                      minimumSize: Size(10, 40),
                                      side: BorderSide(
                                        width: 2.5,
                                        color:
                                             Color.fromARGB(255, 22, 142, 172),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text(
                                      'Close',
                                      style: TextStyle(
                                            color: Color.fromARGB(255, 6, 58, 70),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                          
                            ],
                          );
                        },
                      );
                    },

                    child: Card(
                      color: Color.fromARGB(212, 215, 255, 255),
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      elevation: 5.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.album,
                          size: 65,
                          color: Color.fromARGB(255, 22, 142, 172),
                        ),
                        title: Text('Reclined Oblique Twist',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Color.fromARGB(255, 36, 169, 202),
                            )),
                        subtitle: Text('40 seconds',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color.fromARGB(255, 36, 169, 202),
                            )),
                      ),
                    ),
                  ),
                  InkWell(
                    // splashColor: Colors.purple[200],
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            elevation: 5,
                            actions: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text.rich(
                                  TextSpan(
                                    text: 'Left quad stretch with wall\n\n',
                                      style: TextStyle(
                                      fontSize: 16.5,
                                      color: Color.fromARGB(255, 6, 58, 70),
                                    ),
                                    children: <TextSpan>[
                                      
                                      TextSpan(
                                          text:
                                              'Stand with your right hand on the wall .bend your left leg and grasp your ankle or toes to bring your left calf close to your left thigh. hold  this position.'),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                             Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      shape: StadiumBorder(),
                                      minimumSize: Size(10, 40),
                                      side: BorderSide(
                                        width: 2.5,
                                        color:
                                             Color.fromARGB(255, 22, 142, 172),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text(
                                      'Close',
                                      style: TextStyle(
                                            color: Color.fromARGB(255, 6, 58, 70),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Card(
                      color: Color.fromARGB(212, 215, 255, 255),
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      elevation: 5.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.album,
                          size: 65,
                          color: Color.fromARGB(255, 22, 142, 172),
                        ),
                        title: Text('Left Quad Stretch With Wall',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Color.fromARGB(255, 36, 169, 202),
                            )),
                        subtitle: Text('40 seconds',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color.fromARGB(255, 36, 169, 202),
                            )),
                      ),
                    ),
                  ),
                  InkWell(
                    //  splashColor: Colors.purple[200],
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            elevation: 5,
                            actions: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text.rich(
                                  TextSpan(
                                    text: 'Right quad stretch with wall\n\n',
                                      style: TextStyle(
                                      fontSize: 16.5,
                                      color: Color.fromARGB(255, 6, 58, 70),
                                    ),
                                    children: <TextSpan>[
                                     
                                      TextSpan(
                                          text:
                                              'Stand with your left  hand on the wall .bend your right leg and grasp your ankle or toes to bring your right calf close to your right thigh. hold this position'),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                          Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      shape: StadiumBorder(),
                                      minimumSize: Size(10, 40),
                                      side: BorderSide(
                                        width: 2.5,
                                        color:
                                             Color.fromARGB(255, 22, 142, 172),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text(
                                      'Close',
                                      style: TextStyle(
                                            color: Color.fromARGB(255, 6, 58, 70),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      );
                    },

                    child: Card(
                      color: Color.fromARGB(212, 215, 255, 255),
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      elevation: 5.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.album,
                          size: 65,
                          color: Color.fromARGB(255, 22, 142, 172),
                        ),
                        title: Text('Right Quad Stretch With Wall',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Color.fromARGB(255, 36, 169, 202),
                            )),
                        subtitle: Text('40 seconds',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color.fromARGB(255, 36, 169, 202),
                            )),
                      ),
                    ),
                  ),
                  InkWell(
                    //   splashColor: Colors.purple[200],
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            elevation: 5,
                            actions: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text.rich(
                                  TextSpan(
                                    text: 'Knee To chest stretch left\n\n',
                                      style: TextStyle(
                                      fontSize: 16.5,
                                      color: Color.fromARGB(255, 6, 58, 70),
                                    ),
                                    children: <TextSpan>[
                                      
                                      TextSpan(
                                          text:
                                              'Lie on the floor with your legs extended. Lift your left knee up and grab it with both hands. pull your left  knee towards your chest as much as you can while keeping your right leg straight on the ground hold this position for a few seconds'),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      shape: StadiumBorder(),
                                      minimumSize: Size(10, 40),
                                      side: BorderSide(
                                        width: 2.5,
                                        color:
                                             Color.fromARGB(255, 22, 142, 172),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text(
                                      'Close',
                                      style: TextStyle(
                                            color: Color.fromARGB(255, 6, 58, 70),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      );
                    },

                    child: Card(
                      color: Color.fromARGB(212, 215, 255, 255),
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      elevation: 5.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.album,
                          size: 65,
                          color: Color.fromARGB(255, 22, 142, 172),
                        ),
                        title: Text('Knee To Chest Stretch Left',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Color.fromARGB(255, 36, 169, 202),
                            )),
                        subtitle: Text('40 seconds',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color.fromARGB(255, 36, 169, 202),
                            )),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.purple[200],
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            elevation: 5,
                            actions: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text.rich(
                                  TextSpan(
                                    text: 'Knee to chest stretch right\n\n',  style: TextStyle(
                                      fontSize: 16.5,
                                      color: Color.fromARGB(255, 6, 58, 70),
                                    ),
                                    children: <TextSpan>[
                                      
                                      TextSpan(
                                          text:
                                              'Lie on the floor with your legs extended. Lift your right knee up and grab it with both hands.pull your right knee towards your chest as much as you can while keeping your left leg straight on the ground hold this position for a few seconds'),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      shape: StadiumBorder(),
                                      minimumSize: Size(10, 40),
                                      side: BorderSide(
                                        width: 2.5,
                                        color:
                                             Color.fromARGB(255, 22, 142, 172),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text(
                                      'Close',
                                      style: TextStyle(
                                            color: Color.fromARGB(255, 6, 58, 70),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Card(
                      color: Color.fromARGB(212, 215, 255, 255),
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      elevation: 5.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.album,
                          size: 65,
                          color: Color.fromARGB(255, 22, 142, 172),
                        ),
                        title: Text('Knee To Chest Stretch Right',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Color.fromARGB(255, 36, 169, 202),
                            )),
                        subtitle: Text('40 seconds',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color.fromARGB(255, 36, 169, 202),
                            )),
                      ),
                    ),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: StadiumBorder(),
                      side: BorderSide(
                        width: 2.5,
                        color: Color.fromARGB(255, 22, 142, 172),
                      ),
                    ),
                    child: const Text(
                      '            Start           ',
                      style: TextStyle(
                        fontSize: 22,
                        wordSpacing: 4,
                        color: Color.fromARGB(255, 6, 58, 70),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LDay4_Exercises()));
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

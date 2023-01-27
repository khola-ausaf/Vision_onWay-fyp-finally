import 'package:flutter/material.dart';
import 'day3_exercises.dart';

class Fday3 extends StatefulWidget {
  @override
  State<Fday3> createState() => _WorkoutState();
}

class _WorkoutState extends State<Fday3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Day 3: List of Exercises',
            style: TextStyle(
                fontSize: 21, color: Color.fromARGB(255, 255, 255, 255)),
          ),
          elevation: 6.0,
          backgroundColor: Color.fromARGB(255, 177, 96, 191),
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
                    '5 Mins, 7 Exercises',
                    style: TextStyle(
                        height: 2.7, fontSize: 18, color: Colors.purple[300]),
                  ),
                  SizedBox(
                    height: 1,
                    width: 100.0,
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
                                    text: 'Heel Touch\n\n',
                                     style: TextStyle(
                                      fontSize: 16.5,
                                      color: Color.fromARGB(255, 61, 25, 67),
                                    ),
                                    children: <TextSpan>[
                                      
                                      TextSpan(
                                          text:
                                              'Lie on the ground with your legs bent and your arms by your sides . slightly lift your upper body off the floor and make your hands alternately reach your heels.'),
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
                                            Color.fromARGB(255, 177, 96, 191),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text(
                                      'Close',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 61, 25, 67),
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
                      color: Color.fromARGB(255, 249, 238, 253),
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      elevation: 5.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.album,
                          size: 65,
                          color: Colors.purple[500],
                        ),
                        title: Text('Heel Touch',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.purple[300],
                            )),
                        subtitle: Text('40 seconds',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.purple[300],
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
                                    text: 'Donkey kicks left\n\n ',
                                     style: TextStyle(
                                      fontSize: 16.5,
                                      color: Color.fromARGB(255, 61, 25, 67),
                                    ),
                                    children: <TextSpan>[
                                      // TextSpan(
                                      //   text: '\n\nDuration 00:40 \n\n',
                                      //   style: TextStyle(
                                      //       fontWeight: FontWeight.bold),
                                      // ),
                                      TextSpan(
                                          text:
                                              'Start on all fours with your knees under your butt and your hands under your shoulders then lift your left leg and squeeze your butt  as much as you can. go back to the start position and repeat the exercise.'),
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
                                            Color.fromARGB(255, 177, 96, 191),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text(
                                      'Close',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 61, 25, 67),
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
                      color: Color.fromARGB(255, 249, 238, 253),
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      elevation: 5.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.album,
                          size: 65,
                          color: Colors.purple[500],
                        ),
                        title: Text('Donkey Kicks Left ',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.purple[300],
                            )),
                        subtitle: Text('40 seconds',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.purple[300],
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
                                    text: 'Donkey kicks right \n\n',
                                     style: TextStyle(
                                      fontSize: 16.5,
                                      color: Color.fromARGB(255, 61, 25, 67),
                                    ),
                                    children: <TextSpan>[
                                      // TextSpan(
                                      //   text: '\n\nDuration 00:40 \n\n',
                                      //   style: TextStyle(
                                      //       fontWeight: FontWeight.bold),
                                      // ),
                                      TextSpan(
                                          text:
                                              'Start on all fours with your knees under your butt and your hands under your shoulders then lift your right leg and squeeze your butt  as much as you can. go back to the start position and repeat the exercise.'),
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
                                            Color.fromARGB(255, 177, 96, 191),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text(
                                      'Close',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 61, 25, 67),
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
                      color: Color.fromARGB(255, 249, 238, 253),
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      elevation: 5.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.album,
                          size: 65,
                          color: Colors.purple[500],
                        ),
                        title: Text('Donkey kicks Right ',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.purple[300],
                            )),
                        subtitle: Text('40 seconds',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.purple[300],
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
                                    text: 'Clapping crunches\n\n',
                                     style: TextStyle(
                                      fontSize: 16.5,
                                      color: Color.fromARGB(255, 61, 25, 67),
                                    ),
                                    children: <TextSpan>[
                                      // TextSpan(
                                      //   text: '\n\nDuration 00:40 \n\n',
                                      //   style: TextStyle(
                                      //       fontWeight: FontWeight.bold),
                                      // ),
                                      TextSpan(
                                          text:
                                              'Sit on the floor with your knees bent , feet lifted a little bit and back tilted backwards. alternately lift  your legs and clap under your knees.'),
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
                                            Color.fromARGB(255, 177, 96, 191),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text(
                                      'Close',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 61, 25, 67),
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
                      color: Color.fromARGB(255, 249, 238, 253),
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      elevation: 5.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.album,
                          size: 65,
                          color: Colors.purple[500],
                        ),
                        title: Text('Clapping Crunches',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.purple[300],
                            )),
                        subtitle: Text('40 seconds',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.purple[300],
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
                                    text: 'Flutter kicks\n\n',
                                     style: TextStyle(
                                      fontSize: 16.5,
                                      color: Color.fromARGB(255, 61, 25, 67),
                                    ),
                                    children: <TextSpan>[
                                      // TextSpan(
                                      //   text: '\n\nDuration 00:40 \n\n',
                                      //   style: TextStyle(
                                      //       fontWeight: FontWeight.bold),
                                      // ),
                                      TextSpan(
                                          text:
                                              'Lie on your back with your arms at your sides lift your legs and keep them as straight as you can. then quickly raise your right leg up and simultaneously lower your left leg. switch legs and repeat.'),
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
                                            Color.fromARGB(255, 177, 96, 191),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text(
                                      'Close',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 61, 25, 67),
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
                      color: Color.fromARGB(255, 249, 238, 253),
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      elevation: 5.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.album,
                          size: 65,
                          color: Colors.purple[500],
                        ),
                        title: Text('Flutter kicks',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.purple[300],
                            )),
                        subtitle: Text('40 seconds',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.purple[300],
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
                                    text: 'Bicycle crunches\n\n',
                                     style: TextStyle(
                                      fontSize: 16.5,
                                      color: Color.fromARGB(255, 61, 25, 67),
                                    ),
                                    children: <TextSpan>[
                                      // TextSpan(
                                      //   text: '\n\nDuration 00:40 \n\n',
                                      //   style: TextStyle(
                                      //       fontWeight: FontWeight.bold),
                                      // ),
                                      TextSpan(
                                          text:
                                              'Lie on the floor with your hands behind your ears raise your knees and close your right elbow toward your left knee ,then close your left elbow toward your right knee repeat the exercise.'),
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
                                            Color.fromARGB(255, 177, 96, 191),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text(
                                      'Close',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 61, 25, 67),
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
                      color: Color.fromARGB(255, 249, 238, 253),
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      elevation: 5.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.album,
                          size: 65,
                          color: Colors.purple[500],
                        ),
                        title: Text('Bicycle Crunches',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.purple[300],
                            )),
                        subtitle: Text('40 seconds',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.purple[300],
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
                                    text: 'Planks\n\n',
                                     style: TextStyle(
                                      fontSize: 16.5,
                                      color: Color.fromARGB(255, 61, 25, 67),
                                    ),
                                    children: <TextSpan>[
                                      // TextSpan(
                                      //   text: '\n\nDuration 00:40 \n\n',
                                      //   style: TextStyle(
                                      //       fontWeight: FontWeight.bold),
                                      // ),
                                      TextSpan(
                                          text:
                                              'Lies on the floor with your toes and forearms on the ground .keep your body straight and hold this position as long as you can. This exercise strengthens the abdomen, back, and shoulders.'),
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
                                            Color.fromARGB(255, 177, 96, 191),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text(
                                      'Close',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 61, 25, 67),
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
                      color: Color.fromARGB(255, 249, 238, 253),
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      elevation: 5.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.album,
                          size: 65,
                          color: Colors.purple[500],
                        ),
                        title: Text('Planks',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.purple[300],
                            )),
                        subtitle: Text('40 seconds',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.purple[300],
                            )),
                      ),
                    ),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: StadiumBorder(),
                      side: BorderSide(
                        width: 2.5,
                        color: Color.fromARGB(255, 177, 96, 191),
                      ),
                    ),
                    child: const Text(
                      '            Start           ',
                      style: TextStyle(
                        fontSize: 22,
                        wordSpacing: 4,
                        color: Color.fromARGB(255, 61, 25, 67),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Day3_Exercises()));
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

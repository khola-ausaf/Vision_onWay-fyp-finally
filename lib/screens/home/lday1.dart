import 'package:flutter/material.dart';
import 'package:sign_in/screens/home/lday1_exercise.dart';

class Lday1 extends StatefulWidget {
  @override
  State<Lday1> createState() => _WorkoutState();
}

class _WorkoutState extends State<Lday1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Day 1: List of Exercises',
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
                        color: Color.fromARGB(255, 6, 58, 70)),
                  ),
                  SizedBox(
                    height: 1,
                    width: 100.0,
                  ),
                  InkWell(
                    //splashColor: Color.fromARGB(255, 200, 243, 245),
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
                                    text: 'Jumping jacks\n\n',
                                     style: TextStyle(
                                      fontSize: 16.5,
                                      color: Color.fromARGB(255, 6, 58, 70),
                                    ),
                                    children: <TextSpan>[
                                      
                                      TextSpan(
                                          text:
                                              'Start with  your feet  together and  your arms by your sides , then jump up with your feet  apart and  your hands  overhead .return to the start position then do the next rep. this exercise provides a full-body workout and works all your large muscle groups.'),
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
                        title: Text('Jumping Jacks',
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
                    //splashColor: Colors.purple[200],
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
                                    text: 'Side Hop\n\n',
                                     style: TextStyle(
                                      fontSize: 16.5,
                                      color: Color.fromARGB(255, 6, 58, 70),
                                    ),
                                    children: <TextSpan>[
                                     
                                      TextSpan(
                                          text:
                                              'Stand on the floor put your hands In front of you and hop from side to side.'),
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
                        title: Text('Side Hop',
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
                                    text: 'Squats\n\n',
                                     style: TextStyle(
                                      fontSize: 16.5,
                                      color: Color.fromARGB(255, 6, 58, 70),
                                    ),
                                    children: <TextSpan>[
                                     
                                      TextSpan(
                                          text:
                                              'Stand with your feet shoulder width apart and your arms stretched forward, then lower your  body  until  your thighs are parallel with the floor. Your knees should be extended  in the same direction as your toes .Return to the start position and do the next rep. This works the thighs ,hips buttocks ,quads, hamstrings and lower body.'),
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
                        title: Text('Squats',
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
                                    text: 'Side-lying leg lift left\n\n',
                                     style: TextStyle(
                                      fontSize: 16.5,
                                      color: Color.fromARGB(255, 6, 58, 70),
                                    ),
                                    children: <TextSpan>[
                                     
                                      TextSpan(
                                          text:
                                              'Lie down on your side with your head rested on your right arm. lift your upper leg  up and return to the start position. Make sure your left leg goes straight up and down during the exercise .It’s  a great exercise for the gluteus '),
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
                        title: Text('Side-Lying Leg Lift Left',
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
                                    text: 'Side-lying leg lift right\n\n',
                                     style: TextStyle(
                                      fontSize: 16.5,
                                      color: Color.fromARGB(255, 6, 58, 70),
                                    ),
                                    children: <TextSpan>[
                                   
                                      TextSpan(
                                          text:
                                              'Lie down on your side with your head rested on your  left  arm. lift your upper leg  up and return to the start position. Make sure your right leg  goes straight up and down during the exercise .It’s  a great exercise for the gluteus '),
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
                        title: Text('Side-Lying Leg Lift Right',
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
                                    text: 'Curtsy lunges\n\n',
                                     style: TextStyle(
                                      fontSize: 16.5,
                                      color: Color.fromARGB(255, 6, 58, 70),
                                    ),
                                    children: <TextSpan>[
                                      
                                      TextSpan(
                                          text:
                                              'Stand straight up .then step back with your left leg to the right and bend your knees at the same time. go back to the start position and switch to the other side'),
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
                        title: Text('Curtsy Lunges',
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
                                    text: 'Backward lunges\n\n',
                                     style: TextStyle(
                                      fontSize: 16.5,
                                      color: Color.fromARGB(255, 6, 58, 70),
                                    ),
                                    children: <TextSpan>[
                                     
                                      TextSpan(
                                          text:
                                              'Stand with your feet shoulder width apart and your hands on your hips. step a big step backward with your right leg and lower your body until your left thigh is parallel to the floor. return and repeat with the other side'),
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
                        title: Text('Backward Lunges',
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
                                    text: 'Squats\n\n',
                                     style: TextStyle(
                                      fontSize: 16.5,
                                      color: Color.fromARGB(255, 6, 58, 70),
                                    ),
                                    children: <TextSpan>[
                                     
                                      TextSpan(
                                          text:
                                              'Stand with your feet shoulder width apart and your arms stretched forward, then lower your  body  until  your thighs are parallel with the floor. Your knees should be extended  in the same direction as your toes .Return to the start position and do the next rep. This works the thighs ,hips buttocks ,quads, hamstrings and lower body.'),
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
                        title: Text('Squats',
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
                              builder: (context) => LDay1_Exercises()));
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

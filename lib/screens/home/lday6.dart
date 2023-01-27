import 'package:flutter/material.dart';
import 'package:sign_in/screens/home/lday6_exercise.dart';
//import 'day1_exercises.dart';

class Lday6 extends StatefulWidget {
  @override
  State<Lday6> createState() => _WorkoutState();
}

class _WorkoutState extends State<Lday6> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Day 6: List of Exercises',
            style: TextStyle(
                fontSize: 21, color: Color.fromARGB(255, 255, 255, 255)),
          ),
          elevation: 6.0,
          backgroundColor:Color.fromARGB(255, 22, 142, 172) ,
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
                                    text: 'side hop\n\n',  style: TextStyle(
                                      fontSize: 16.5,
                                      color: Color.fromARGB(255, 6, 58, 70),
                                    ),
                                    children: <TextSpan>[
                                     
                                      TextSpan(
                                          text:
                                              'Stand straight with your feet   together .Move your right leg to the side, then lower your body while keeping your left leg straight .Go back to the start position and switch to the other side'),
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
                          color:Color.fromARGB(255, 22, 142, 172),
                        ),
                        title: Text('Side Hop:',
                            style: TextStyle(
                              fontSize: 25.0,
                              color:Color.fromARGB(255, 36, 169, 202),
                            )),
                        subtitle: Text('40 seconds',
                            style: TextStyle(
                              fontSize: 18.0,
                              color:Color.fromARGB(255, 36, 169, 202),
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
                                    text: 'high stepping\n\n',  style: TextStyle(
                                      fontSize: 16.5,
                                      color: Color.fromARGB(255, 6, 58, 70),
                                    ),
                                    children: <TextSpan>[
                                   
                                      TextSpan(
                                          text:
                                              'Start on all fours with your knees under your butt and your hands under your shoulders then lift your left leg and squeeze your butt  as much as you can. go back to the start position and repeat the exercise '),
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
                        title: Text('High Stepping',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Color.fromARGB(255, 36, 169, 202)
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
                                    text: 'squats\n\n ',  style: TextStyle(
                                      fontSize: 16.5,
                                      color: Color.fromARGB(255, 6, 58, 70),
                                    ),
                                    children: <TextSpan>[
                                      
                                      TextSpan(
                                          text:
                                              ' Start on all fours with your knees under your butt and your hands under your shoulders then lift your right leg and squeeze your butt  as much as you can. go back to the start position and repeat the exercise '),
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
                        title: Text('Squats ',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Color.fromARGB(255, 36, 169, 202),
                            )),
                        subtitle: Text('40 second',
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
                                    text: 'side lunges\n\n',  style: TextStyle(
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
                        title: Text('Side Lunges',
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
                                    text: 'butt bridge\n\n',  style: TextStyle(
                                      fontSize: 16.5,
                                      color: Color.fromARGB(255, 6, 58, 70),
                                    ),
                                    children: <TextSpan>[
                                    
                                      TextSpan(
                                          text:
                                              'Lie on your left side with your head resting on your left hand. Then put your right foot forward on the floor lift your left leg up and down'),
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
                      color:Color.fromARGB(212, 215, 255, 255),
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
                              color:Color.fromARGB(255, 36, 169, 202),
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
                                    text: 'sumo squats\n\n',  style: TextStyle(
                                      fontSize: 16.5,
                                      color: Color.fromARGB(255, 6, 58, 70),
                                    ),
                                    children: <TextSpan>[
                                      
                                      TextSpan(
                                          text:
                                              'Lie on your right side with your head resting on your right hand. Then put your left foot forward on the floor lift your right leg up and down'),
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
                                    text: 'reclined oblique twist\n\n',  style: TextStyle(
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
                                    text: 'squats\n\n',  style: TextStyle(
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
                              builder: (context) => LDay6_Exercises()));
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

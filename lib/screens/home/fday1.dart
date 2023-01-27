import 'package:flutter/material.dart';
import 'day1_exercises.dart';

class Fday1 extends StatefulWidget {
  @override
  State<Fday1> createState() => _WorkoutState();
}

class _WorkoutState extends State<Fday1> {
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
                                    text: 'SQUATS\n\n',
                                    style: TextStyle(
                                      fontSize: 16.5,
                                      color: Color.fromARGB(255, 61, 25, 67),
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
                        title: Text('SQUATS',
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
                                    text: 'Wall Push-ups\n\n',
                                    style: TextStyle(
                                      fontSize: 16.5,
                                      color: Color.fromARGB(255, 61, 25, 67),
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              'Stand in front of a wall one big step away from it. Then put your hands out straight towards  the wall and lean against it. Lift your heels. Slowly bend your elbows and press  your  upper body towards the wall. Push back and repeat the exercise .remember to keep your body straight.'),
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
                        title: Text('Wall PushUps',
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
                                    text: 'Side-lying leg lift left\n\n',
                                    style: TextStyle(
                                      fontSize: 16.5,
                                      color: Color.fromARGB(255, 61, 25, 67),
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              'Lie down on your side with your head rested on your right arm. lift your upper leg  up and return to the start position. Make sure your left leg goes straight up and down during the exercise .It’s  a great exercise for the gluteus'),
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
                        title: Text('Side-lying leg lift left',
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
                                    text: 'Side –lying leg lift right\n\n',
                                    style: TextStyle(
                                      fontSize: 16.5,
                                      color: Color.fromARGB(255, 61, 25, 67),
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              'Lie down on your side with your head rested on your  left  arm. lift your upper leg  up and return to the start position. Make sure your right  leg  goes straight up and down during the exercise.It’s  a great exercise for the gluteus '),
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
                        title: Text('Side –lying leg lift right',
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
                                    text: 'Butt Bridge\n\n',
                                    style: TextStyle(
                                      fontSize: 16.5,
                                      color: Color.fromARGB(255, 61, 25, 67),
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              'Lie on your back with knees bent and feet flat on the floor .put your arms flat at your sides  then lift your butt up and down.'),
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
                        title: Text('Butt Bridge',
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
                                    text: 'Clap Over Head\n\n',
                                    style: TextStyle(
                                      fontSize: 16.5,
                                      color: Color.fromARGB(255, 61, 25, 67),
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              'Stand with your feet shoulder width apart . raise your arm and clap over your head.'),
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
                        title: Text('Clap Over  Head',
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
                              builder: (context) => Day1_Exercises()));
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

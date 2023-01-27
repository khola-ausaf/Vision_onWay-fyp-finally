// ignore_for_file: non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:sign_in/screens/home/congratulation.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'workout_screen.dart';

// ignore: camel_case_types
class LDay4_Exercises extends StatefulWidget {
  const LDay4_Exercises({Key? key}) : super(key: key);

  @override
  State<LDay4_Exercises> createState() => _LDay4_ExercisesState();
}

// ignore: camel_case_types
class _LDay4_ExercisesState extends State<LDay4_Exercises> {
  late YoutubePlayerController controller;

  @override
  // ignore: must_call_super
  void initState() {
    // super.initState();

    const url = 'https://youtu.be/LbTkW2e45Vc';

    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(url)!,
      flags: const YoutubePlayerFlags(
        mute: false,
        loop: false,
        autoPlay: true,
      ),
    );
  }

  @override
  void deactivate() {
    super.deactivate();
    controller.pause();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Day 4',
          style: TextStyle(
              fontSize: 21, color: Color.fromARGB(255, 255, 255, 255)),
        ),
        elevation: 1.0,
        backgroundColor: Color.fromARGB(255, 22, 142, 172),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          color: Color.fromARGB(255, 255, 255, 255),
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: controller,
        ),
        builder: (Context, Player) => Scaffold(
          body: Container(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: [
                Player,
                const ExpansionTile(
                  title: Text('\nDay 7: \n8 Exercises in 6 minutes duration',
                      style: TextStyle(
                        height: 0.98,
                        fontSize: 19.0,
                      )),
                  textColor: Colors.black,
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        ' \nI hope you have learned how to perform each exercise from the cards right on the previous page. \n\nif not, then go back & tab on any exercise to find out the way to perform exercises easily. \n',
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: StadiumBorder(),
                    minimumSize: Size(10, 40),
                    side: BorderSide(
                      width: 2.5,
                      color: Color.fromARGB(255, 22, 142, 172),
                    ),
                  ),
                  onPressed: () {
                    _addDataToFirestore().then((value) {
                      Get.snackbar(
                        'Success',
                        'Workout Completed',
                        snackPosition: SnackPosition.BOTTOM,
                        backgroundColor: Colors.green,
                        colorText: Colors.white,
                      );
                    }).onError((error, stackTrace) {
                      Get.snackbar(
                        'Error',
                        'Something went wrong',
                        snackPosition: SnackPosition.BOTTOM,
                        backgroundColor: Colors.red,
                        colorText: Colors.white,
                      );
                    });
                    Get.to(() => Workout_Screen());
                  },
                  child: const Text(
                    'Done!!',
                    style: TextStyle(
                      fontSize: 22,
                      color: Color.fromARGB(255, 6, 58, 70),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _addDataToFirestore() async {
    final setAttendence = FirebaseFirestore.instance
        .collection("Workout Progress")
        .doc("${FirebaseAuth.instance.currentUser!.uid.toString()}")
        .collection("Legs Workout")
        .doc("Day 4");

    final int calories = 60;
    final int timeDuration = 6;

    final data = {
      "Day": "Day 4",
      "calories": "$calories calories",
      "timeDuration": "$timeDuration minutes",
      "totalCalories": "240 calories",
      "total time": "24 minutes"
    };

    setAttendence.set(data);
  }
}

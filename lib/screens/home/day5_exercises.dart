// ignore_for_file: non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'workout_screen.dart';
//import 'congratulation.dart';

// ignore: camel_case_types
class Day5_Exercises extends StatefulWidget {
  const Day5_Exercises({Key? key}) : super(key: key);

  @override
  State<Day5_Exercises> createState() => _Day5_ExercisesState();
}

// ignore: camel_case_types
class _Day5_ExercisesState extends State<Day5_Exercises> {
  late YoutubePlayerController controller;

  @override
  // ignore: must_call_super
  void initState() {
    // super.initState();

    const url = 'https://youtu.be/VSR_hmtl_JM';

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
          'Day 5',
          style: TextStyle(
              fontSize: 21, color: Color.fromARGB(255, 255, 255, 255)),
        ),
        elevation: 1.0,
        backgroundColor: Color.fromARGB(255, 177, 96, 191),
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
        builder: (Context, Player) => Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Player,
              const ExpansionTile(
                //backgroundColor:Color.fromARGB(255, 202, 190, 204),
                title: Text('\nDay 5: \n7 Exercises in 5 minutes duration',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      height: 0.98,
                      fontSize: 19.0,
                    )),
                textColor: Colors.black,
                // subtitle: Text('Trailing expansion arrow icon'),
                children: <Widget>[
                  ListTile(
                      title: Text(
                          ' \nI hope you have learned how to perform each exercise from the cards right on the previous page. \n\nif not, then go back & tab on any exercise to find out the way to perform exercises easily. \n')),
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
                    color: Color.fromARGB(255, 177, 96, 191),
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
                    color: Color.fromARGB(255, 61, 25, 67),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _addDataToFirestore() async {
    final setAttendence = FirebaseFirestore.instance
        .collection("Workout Progress")
        .doc("${FirebaseAuth.instance.currentUser!.uid.toString()}")
        .collection("Full Body Workout")
        .doc("Day 5");

    final int calories = 80;
    final int timeDuration = 4;

    final data = {
      "Day": "Day 5",
      "calories": "$calories calories",
      "timeDuration": "$timeDuration minutes",
      "totalCalories": "460",
      "total time": "23 minutes"
    };

    setAttendence.set(data);
  }
}

//import 'package:cloud_firestore/cloud_firestore.dart';
// ignore_for_file: non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_in/screens/home/workout_screen.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// ignore: camel_case_types
class Day1_Exercises extends StatefulWidget {
  const Day1_Exercises({Key? key}) : super(key: key);

  @override
  State<Day1_Exercises> createState() => _Day1_ExercisesState();
}

// ignore: camel_case_types
class _Day1_ExercisesState extends State<Day1_Exercises> {
  late YoutubePlayerController controller;

  @override
  // ignore: must_call_super
  void initState() {
    super.initState();

    const url = 'https://youtu.be/qcVlGnq5B4Y';
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
    controller.mute();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Day 1',
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
          width: double.infinity,
        ),
        builder: (Context, Player) => Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Player,
              Text(
                'FULL BODY WORKOUT',
                style: TextStyle(
                  height: 1.9,
                  fontSize: 25.0,
                  color: Color.fromARGB(255, 149, 76, 161),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'The benefits of a full body workout are huge It is a great way to ensure you are training all muscles group one workout, no muscles left behind.Full body workouts tend to incorporate compound strength exercises, which are a super efficient way of training for functional strength as well as cardiovascular health',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  height: 1,
                  fontSize: 17,
                  color: Color.fromARGB(255, 178, 99, 192),
                ),
              ),
              SizedBox(height: 40),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: StadiumBorder(),
                  minimumSize: Size(10, 40),
                  side: BorderSide(
                    width: 2.5,
                    color: Color.fromARGB(255, 177, 96, 191),
                  ),
                ),
                onPressed: () async {
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
              ),
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
        .doc("Day 1");

    final int calories = 100;
    final int timeDuration = 5;

    final data = {
      "Day": "Day 1",
      "calories": "$calories calories",
      "timeDuration": "$timeDuration minutes",
      "totalCalories": "100",
      "total time": "5 minutes"
    };

    setAttendence.set(data);
  }
}

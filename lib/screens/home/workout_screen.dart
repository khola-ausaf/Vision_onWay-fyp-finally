import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Workout_Screen extends StatefulWidget {
  const Workout_Screen({Key? key}) : super(key: key);

  @override
  State<Workout_Screen> createState() => _Workout_ScreenState();
}

class _Workout_ScreenState extends State<Workout_Screen> {
  int _selectedIndex = 0;
  TabController? controller;

  bool? _hasData = true;

  var day = 1;

  var _fbWorkout = FirebaseFirestore.instance
      .collection('Workout Progress')
      .doc(FirebaseAuth.instance.currentUser!.uid)
      .collection('Full Body Workout')
      .doc("Day 1")
      .delete();

  var _lgWorkout = FirebaseFirestore.instance
      .collection('Workout Progress')
      .doc(FirebaseAuth.instance.currentUser!.uid)
      .collection('Legs Workout')
      .doc()
      .delete();

  Future<void> _deleteFB() async {
    print("Deleting Data...");
    print(FirebaseAuth.instance.currentUser!.uid);
    try {
      var collection = await FirebaseFirestore.instance
          .collection('Workout Progress')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .collection('Full Body Workout')
          .get();
      var snapshot = collection.docs;
      for (var i in snapshot) {
        await i.reference.delete();
      }

      Get.snackbar(
        "Success",
        "Data Deleted Successfully",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
        duration: Duration(seconds: 3),
      );
      setState(() {
        _hasData = false;
      });
    } catch (e) {
      Get.snackbar(
        "Error",
        "Something went wrong",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
        duration: Duration(seconds: 3),
      );
    }
  }

  Future<void> _deleteLG() async {
    print("Deleting Data...");
    print(FirebaseAuth.instance.currentUser!.uid);
    try {
      var collection = await FirebaseFirestore.instance
          .collection('Workout Progress')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .collection('Legs Workout')
          .get();
      var snapshot = collection.docs;
      for (var i in snapshot) {
        await i.reference.delete();
      }

      Get.snackbar(
        "Success",
        "Data Deleted Successfully",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
        duration: Duration(seconds: 3),
      );
      setState(() {
        _hasData = false;
      });
    } catch (e) {
      Get.snackbar(
        "Error",
        "Something went wrong",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
        duration: Duration(seconds: 3),
      );
    }
  }

  @override
  //State<Workout_screen> createState() => _WorkoutState();
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: _selectedIndex,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 91, 36,	122),
          title: Text('Workout Progress'),
          actions: [
            TextButton.icon(
              label: Text('Reset'),
              icon: Icon(Icons.refresh, color: Colors.white),
              onPressed: () async {
                await _deleteFB();
                await _deleteLG();
              },
              style: TextButton.styleFrom(
                //foregroundColor: Colors.white,
              ),
            ),
          ],
          elevation: 0,
          bottom: TabBar(
            padding: EdgeInsets.all(10),
            isScrollable: false,
            automaticIndicatorColorAdjustment: true,
            physics: BouncingScrollPhysics(),
            indicatorSize: TabBarIndicatorSize.tab,
            labelStyle: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            //splashBorderRadius: BorderRadius.circular(50),
            unselectedLabelStyle: TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
            mouseCursor: SystemMouseCursors.click,
            overlayColor: MaterialStateProperty.all(Colors.white),
            controller: controller,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
            ),
            indicatorColor:  Color.fromARGB(255, 91, 36,	122),
            indicatorWeight: 5.0,
            unselectedLabelColor: Colors.white,
            labelColor:  Color.fromARGB(255, 91, 36,	122),
            tabs: [
              Tab(text: "Full Body Workout"),
              Tab(text: "Legs Workout"),
            ],
            onTap: (value) {
              setState(() {
                _selectedIndex = value;
                print("Selected Index: " + _selectedIndex.toString());
              });
            },
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: [
            // for tableDataOne
            _hasData != false
                ? Container(child: Center(child: Text("No data inserted yet!")))
                : StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('Workout Progress')
                        .doc(FirebaseAuth.instance.currentUser!.uid)
                        .collection('Full Body Workout')
                        .snapshots(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.hasError) {
                        return Text("Something went wrong");
                      }

                      if (!snapshot.hasData) {
                        return Center(child: Container());
                      }

                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }

                      if (snapshot.hasData) {
                        return Container(
                          padding: EdgeInsets.all(10),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                // Text for the table title
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    "Full Body Workout",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                _hasData == false
                                    ? Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Text(
                                          "No Data Available",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )
                                    : Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: StreamBuilder(
                                          stream: FirebaseFirestore.instance
                                              .collection('Workout Progress')
                                              .doc(FirebaseAuth
                                                  .instance.currentUser!.uid)
                                              .collection('Full Body Workout')
                                              .snapshots(),
                                          builder: (BuildContext context,
                                              AsyncSnapshot snapshot) {
                                            if (snapshot.hasError) {
                                              return Text(
                                                  "Something went wrong");
                                            }

                                            if (!snapshot.hasData) {
                                              return Center(
                                                  child: Text("No Data..."));
                                            }

                                            if (snapshot.connectionState ==
                                                ConnectionState.waiting) {
                                              return Center(
                                                child:
                                                    CircularProgressIndicator(),
                                              );
                                            }

                                            if (snapshot.hasData) {
                                              final data = snapshot.data;
                                              List<QueryDocumentSnapshot>
                                                  documentSnapshot = data.docs;

                                              print(documentSnapshot[0]
                                                  ['calories']);

                                              return ListView.builder(
                                                shrinkWrap: true,
                                                itemCount:
                                                    documentSnapshot.length,
                                                itemBuilder: (context, index) {
                                                  if (index == 0) {
                                                    return Column(
                                                      children: [
                                                        !_hasData!
                                                            ? Center(
                                                                child: Text(
                                                                    "No Data"),
                                                              )
                                                            : Table(
                                                                border:
                                                                    TableBorder
                                                                        .all(),
                                                                defaultVerticalAlignment:
                                                                    TableCellVerticalAlignment
                                                                        .middle,
                                                                defaultColumnWidth:
                                                                    FixedColumnWidth(
                                                                        120.0),
                                                                columnWidths: {
                                                                  0: FlexColumnWidth(
                                                                      1),
                                                                  1: FlexColumnWidth(
                                                                      1),
                                                                  2: FlexColumnWidth(
                                                                      1),
                                                                },
                                                                children: [
                                                                  TableRow(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      shape: BoxShape
                                                                          .rectangle,
                                                                      color: Colors
                                                                          .green
                                                                          .shade100,
                                                                    ),
                                                                    children: [
                                                                      Text(
                                                                        "Days",
                                                                        style: TextStyle(
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            fontSize: 20),
                                                                      ),
                                                                      Text(
                                                                          "Calories",
                                                                          style: TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 20)),
                                                                      FittedBox(
                                                                        child: Text(
                                                                            "Time Duration",
                                                                            style:
                                                                                TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  for (int i =
                                                                          0;
                                                                      i <
                                                                          documentSnapshot
                                                                              .length;
                                                                      i++)
                                                                    TableRow(
                                                                      children: [
                                                                        Text(
                                                                            documentSnapshot[i][
                                                                                "Day"],
                                                                            style:
                                                                                TextStyle(fontSize: 17)),
                                                                        Text(
                                                                            documentSnapshot[i][
                                                                                'calories'],
                                                                            style:
                                                                                TextStyle(fontSize: 17)),
                                                                        Text(
                                                                            documentSnapshot[i][
                                                                                'timeDuration'],
                                                                            style:
                                                                                TextStyle(fontSize: 17)),
                                                                      ],
                                                                    ),
                                                                  TableRow(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      shape: BoxShape
                                                                          .rectangle,
                                                                      color: Colors
                                                                          .red
                                                                          .shade100,
                                                                    ),
                                                                    children: [
                                                                      Text(
                                                                        "Total Progress",
                                                                        style:
                                                                            TextStyle(
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          fontSize:
                                                                              15,
                                                                          color:
                                                                              Colors.red,
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        documentSnapshot[documentSnapshot.length -
                                                                                1]["totalCalories"] ??
                                                                            "0",
                                                                        style:
                                                                            TextStyle(
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          fontSize:
                                                                              15,
                                                                          color:
                                                                              Colors.red,
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        documentSnapshot[documentSnapshot.length -
                                                                                1]["total time"] ??
                                                                            "0",
                                                                        style:
                                                                            TextStyle(
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          fontSize:
                                                                              15,
                                                                          color:
                                                                              Colors.red,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                      ],
                                                    );
                                                  } else {
                                                    return Container(
                                                      child: Center(
                                                        child: Text("No Data"),
                                                      ),
                                                    );
                                                  }
                                                },
                                              );
                                            }
                                            return Center(
                                                child:
                                                    CircularProgressIndicator());
                                          },
                                        ),
                                      ),
                              ],
                            ),
                          ),
                        );
                      }
                      return Center(child: CircularProgressIndicator());
                    },
                  ),

            _hasData != false
                ? Container(child: Center(child: Text("No data inserted yet!")))
                : StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('Workout Progress')
                        .doc(FirebaseAuth.instance.currentUser!.uid)
                        .collection('Legs Workout')
                        .snapshots(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.hasError) {
                        return Text("Something went wrong");
                      }

                      if (!snapshot.hasData) {
                        return Center(child: Text("No Data..."));
                      }

                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }

                      if (snapshot.hasData) {
                        return Container(
                          padding: EdgeInsets.all(10),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                // Text for the table title
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    "Legs Workout",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                _hasData == false
                                    ? Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Text(
                                          "No Data Available",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )
                                    : Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: StreamBuilder(
                                          stream: FirebaseFirestore.instance
                                              .collection('Workout Progress')
                                              .doc(FirebaseAuth
                                                  .instance.currentUser!.uid)
                                              .collection('Legs Workout')
                                              .snapshots(),
                                          builder: (BuildContext context,
                                              AsyncSnapshot snapshot) {
                                            if (snapshot.hasError) {
                                              return Text(
                                                  "Something went wrong");
                                            }

                                            if (!snapshot.hasData) {
                                              return Center(
                                                  child: Text("No Data..."));
                                            }

                                            if (snapshot.connectionState ==
                                                ConnectionState.waiting) {
                                              return Center(
                                                child:
                                                    CircularProgressIndicator(),
                                              );
                                            }

                                            if (snapshot.hasData) {
                                              final data = snapshot.data;
                                              List<QueryDocumentSnapshot>
                                                  documentSnapshot = data.docs;

                                              print(documentSnapshot[0]
                                                  ['calories']);

                                              return ListView.builder(
                                                shrinkWrap: true,
                                                itemCount:
                                                    documentSnapshot.length,
                                                itemBuilder: (context, index) {
                                                  if (index == 0) {
                                                    return Column(
                                                      children: [
                                                        Table(
                                                          border:
                                                              TableBorder.all(),
                                                          defaultVerticalAlignment:
                                                              TableCellVerticalAlignment
                                                                  .middle,
                                                          defaultColumnWidth:
                                                              FixedColumnWidth(
                                                                  120.0),
                                                          columnWidths: {
                                                            0: FlexColumnWidth(
                                                                1),
                                                            1: FlexColumnWidth(
                                                                1),
                                                            2: FlexColumnWidth(
                                                                1),
                                                          },
                                                          children: [
                                                            TableRow(
                                                              decoration:
                                                                  BoxDecoration(
                                                                shape: BoxShape
                                                                    .rectangle,
                                                                color: Colors
                                                                    .green
                                                                    .shade100,
                                                              ),
                                                              children: [
                                                                Text(
                                                                  "Days",
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          20),
                                                                ),
                                                                Text("Calories",
                                                                    style: TextStyle(
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        fontSize:
                                                                            20)),
                                                                FittedBox(
                                                                  child: Text(
                                                                      "Time Duration",
                                                                      style: TextStyle(
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          fontSize:
                                                                              20)),
                                                                ),
                                                              ],
                                                            ),
                                                            for (int i = 0;
                                                                i <
                                                                    documentSnapshot
                                                                        .length;
                                                                i++)
                                                              TableRow(
                                                                children: [
                                                                  Text(
                                                                      documentSnapshot[
                                                                              i]
                                                                          [
                                                                          "Day"],
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              17)),
                                                                  Text(
                                                                      documentSnapshot[
                                                                              i]
                                                                          [
                                                                          'calories'],
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              17)),
                                                                  Text(
                                                                      documentSnapshot[
                                                                              i]
                                                                          [
                                                                          'timeDuration'],
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              17)),
                                                                ],
                                                              ),
                                                            TableRow(
                                                              decoration:
                                                                  BoxDecoration(
                                                                shape: BoxShape
                                                                    .rectangle,
                                                                color: Colors
                                                                    .red
                                                                    .shade100,
                                                              ),
                                                              children: [
                                                                Text(
                                                                  "Total Progress",
                                                                  style:
                                                                      TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        15,
                                                                    color: Colors
                                                                        .red,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  documentSnapshot[documentSnapshot.length -
                                                                              1]
                                                                          [
                                                                          "totalCalories"] ??
                                                                      "0",
                                                                  style:
                                                                      TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        15,
                                                                    color: Colors
                                                                        .red,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  documentSnapshot[documentSnapshot.length -
                                                                              1]
                                                                          [
                                                                          "total time"] ??
                                                                      "0",
                                                                  style:
                                                                      TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        15,
                                                                    color: Colors
                                                                        .red,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    );
                                                  } else {
                                                    return Container(
                                                      width: double.infinity,
                                                    );
                                                  }
                                                },
                                              );
                                            }
                                            return Center(
                                                child:
                                                    CircularProgressIndicator());
                                          },
                                        ),
                                      ),
                              ],
                            ),
                          ),
                        );
                      }
                      return Center(child: CircularProgressIndicator());
                    },
                  ),
          ],
        ),
      ),
    );
  }
}

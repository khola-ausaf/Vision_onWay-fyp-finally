import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
//import 'package:sign_in/config.dart';
import 'package:sign_in/controller/auth_controller.dart';
import 'package:sign_in/screens/home/about_us.dart';
import 'package:sign_in/screens/home/contact_us.dart';
//import 'package:sign_in/screens/home/logout.dart';
import 'package:sign_in/screens/home/privacy.dart';
import 'package:sign_in/screens/home/setting.dart';
import 'package:sign_in/screens/home/walking.dart';
import 'package:sign_in/screens/home/workout.dart';
import 'package:sign_in/screens/home/BMI_Calculator.dart';
// import 'package:sign_in/widgets/rounded_elevated_button.dart';
// import '../../widgets/button_widget.dart';
//import 'package:flutter_tts/flutter_tts.dart';

class Person extends StatelessWidget {
  //FlutterTts flutterTts = flutterTts();
  const Person({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            '   Vision OnWay',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28.0,
              color: Color.fromARGB(255, 91, 36, 122),
            ),
          ),
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          iconTheme: IconThemeData(
            color: Color.fromARGB(255, 91, 36, 122),
          ),
        ),
        drawer: new Drawer(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          child: new ListView(
            children: [
              new ListTile(
                title: new Text("Settings"),
                trailing: new Icon(Icons.settings),
                iconColor: Color.fromARGB(255, 91, 36, 122),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          new setting("Settings")));
                },
              ),
              new ListTile(
                title: new Text("Privacy"),
                trailing: new Icon(Icons.privacy_tip_rounded),
                iconColor: Color.fromARGB(255, 91, 36, 122),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          new privacy("Privacy")));
                },
              ),
              new ListTile(
                title: new Text("Contact Us"),
                trailing: new Icon(Icons.email_rounded),
                iconColor: Color.fromARGB(255, 91, 36, 122),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          new contact_us("Contact Us")));
                },
              ),
              new ListTile(
                title: new Text("About Us"),
                trailing: new Icon(Icons.people_alt_rounded),
                iconColor: Color.fromARGB(255, 91, 36, 122),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          new about_us("About us")));
                },
              ),
              new ListTile(
                title: new Text("Close"),
                trailing: new Icon(Icons.close_fullscreen_rounded),
                iconColor: Color.fromARGB(255, 91, 36, 122),
                onTap: () => Navigator.of(context).pop(),
              ),
              SizedBox(height: 20),
              GetBuilder<AuthController>(
                builder: (_authController) {
                  return Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.symmetric(horizontal: 50),
                    child: ElevatedButton.icon(
                        icon: Icon(Icons.logout),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 91, 36, 122),
                        ),
                        onPressed: () => _authController.signout(),
                        label: Text("SignOut")),
                  );
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: GetBuilder<AuthController>(
            builder: (_authController) {
              return SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('assets/VisionOnway-NewLogo.png'),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      "Welcome",
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontSize: 24.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '${_authController.displayName.toString().capitalizeString()}!',
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontSize: 24.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                      width: 105.0,
                      child: Divider(color: Colors.black),
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: StadiumBorder(),
                        minimumSize: Size(20, 40),
                        side: BorderSide(
                          width: 2.5,
                          color: Color.fromARGB(255, 177, 96, 191),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BmiCalculator()));
                      },
                      child: const Text(
                        '    CALCULATE BMI    ',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 61, 25, 67),
                        ),
                      ),
                    ),

                    const SizedBox(height: 18),

                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: StadiumBorder(),
                        minimumSize: Size(20, 40),
                        side: BorderSide(
                          width: 2.5,
                          color: Color.fromARGB(255, 177, 96, 191),
                        ),
                      ),
                      onPressed: () {
                        _authController.walking();
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => WalkingScreen(),
                        ));
                      },
                      child: const Text(
                        '          WALKING         ',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 61, 25, 67),
                        ),
                      ),
                    ),

                    const SizedBox(height: 18),

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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Workout()));
                      },
                      child: const Text(
                        '         WORKOUT         ',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 61, 25, 67),
                        ),
                      ),
                    )

                    //       horizontal: Config.screenWidth! * 0.3),
                  ],
                ),
              );
            },
          ),
        ));
  }
}

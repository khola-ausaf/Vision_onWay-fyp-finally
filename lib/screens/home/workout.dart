import 'package:flutter/material.dart';
import 'package:sign_in/screens/home/body_screen.dart';
import 'package:sign_in/screens/home/leg_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Workout extends StatefulWidget {
  const Workout({Key? key}) : super(key: key);

  @override
  State<Workout> createState() => _WorkoutState();
}

class _WorkoutState extends State<Workout> {
  PageController _pageController = new PageController(
    initialPage: 0,
  );
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          controller: _pageController,
          children: [
            Body(),
            Leg(),
            // Abs(),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: Center(
                  child: SmoothPageIndicator(
                controller: _pageController,
                count: 2,
                effect: WormEffect(
                  activeDotColor: Color.fromARGB(255, 234, 194, 241),
                  dotColor: Color.fromARGB(255, 230, 226, 238),
                  // spacing: 10,
                  dotHeight: 12,
                  dotWidth: 12,
                ),
                onDotClicked: (index) => _pageController.animateToPage(index,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInCubic),
              )),
            )
          ],
        )
      ]),
    );
  }
}

import 'package:FoodApp/screens/food.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void nextPage() {
    pageController.nextPage(
        duration: const Duration(milliseconds: 700), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          Container(
              color: Color.fromRGBO(249, 198, 159, 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: const Text(
                      "Skip",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                  )),    
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Image.asset(
                        'lib/assets/onboarding1.png',
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      const Text(
                        "Find a restaurant",
                        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: const Text(
                          "Fatest operation to provide food by the fence",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      Center(
                        child: SmoothPageIndicator(
                          controller: pageController,
                          count: 3,
                          effect: ScaleEffect(
                              dotColor: Colors.grey,
                              activeDotColor: Colors.white,
                              dotHeight: 15,
                              dotWidth: 15,
                              spacing: 10.0),
                          onDotClicked: (index) => pageController.animateToPage(
                            index,
                            duration: const Duration(milliseconds: 700),
                            curve: Curves.easeInOut,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      Center(
                        child: FloatingActionButton(
                          onPressed: () {
                            nextPage();
                          },
                          backgroundColor: Color.fromRGBO(255, 88, 0, 1),
                          child: Icon(Icons.navigate_next, color: Colors.white),
                        ),
                      ),
                    ],)
                ],
              )),
          Container(
              color: Color.fromRGBO(255, 231, 156, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/home');
                      },
                      child: const Text(
                        "Skip",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'lib/assets/onboarding2.png',
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      Text(
                        "Contact us anytime",
                        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Text(
                          "You can contact with us after getting food delivery if there have any issues",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                 Center(
                        child: SmoothPageIndicator(
                          controller: pageController,
                          count: 3,
                          effect: ScaleEffect(
                              dotColor: Colors.grey,
                              activeDotColor: Colors.white,
                              dotHeight: 15,
                              dotWidth: 15,
                              spacing: 10.0),
                          onDotClicked: (index) => pageController.animateToPage(
                            index,
                            duration: const Duration(milliseconds: 700),
                            curve: Curves.easeInOut,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      Center(
                        child: FloatingActionButton(
                          onPressed: () {
                            nextPage();
                          },
                          backgroundColor: Color.fromRGBO(237, 171, 0, 1),
                          child: Icon(Icons.navigate_next, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
          Container(
              color: Color.fromRGBO(105, 201, 248, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/home');
                      },
                      child: const Text(
                        "Skip",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'lib/assets/onboarding3.png',
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      Text(
                        "Pick the food you need",
                        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Text(
                          "After getting your choosen restaurant, you can choose your food",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      Center(
                        child: SmoothPageIndicator(
                          controller: pageController,
                          count: 3,
                          effect: ScaleEffect(
                              dotColor: Colors.grey,
                              activeDotColor: Colors.white,
                              dotHeight: 15,
                              dotWidth: 15,
                              spacing: 10.0),
                          onDotClicked: (index) => pageController.animateToPage(
                            index,
                            duration: const Duration(milliseconds: 700),
                            curve: Curves.easeInOut,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      Center(
                        child: FloatingActionButton(
                          onPressed: () {
                            nextPage();
                          },
                          backgroundColor: Color.fromRGBO(0, 134, 222, 1),
                          child: Icon(Icons.navigate_next, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

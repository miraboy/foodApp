import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return const OnboardingPage();
  }
}

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: PageView(
        children: [
          Container(
              color: Color.fromRGBO(249, 198, 159, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Skip",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                  Image.asset(
                    'lib/assets/onboarding1.png',
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 45,
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
                    child: FloatingActionButton(
                      onPressed: () {

                      },
                      backgroundColor: Color.fromRGBO(255, 88, 0, 1),
                      child: Icon(Icons.navigate_next,
                          color: Colors.white),
                    ),
                  ),
                ],
              )),
          Container(
              color: Color.fromRGBO(255, 231, 156, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Skip",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                  Image.asset(
                    'lib/assets/onboarding2.png',
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 45,
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
                    child: FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: Color.fromRGBO(237, 171, 0, 1),
                      child: Icon(Icons.navigate_next,
                          color: Colors.white),
                    ),
                  ),
                ],
              )),
          Container(
              color: Color.fromRGBO(105, 201, 248, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Skip",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                  Image.asset(
                    'lib/assets/onboarding3.png',
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 45,
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
                    child: FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: Color.fromRGBO(0, 134, 222, 1),
                      child: Icon(Icons.navigate_next,
                          color: Colors.white),
                    ),
                  ),
                ],
              )),
        ],
      ),
      
    );
  }
}

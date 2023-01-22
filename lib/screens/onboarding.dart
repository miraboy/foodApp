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
  final controller = PageController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: [
          Container(
              color: Color.fromRGBO(249, 198, 159, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(onPressed: (){}, child: Text("Skip")),
                  Image.asset(
                    'lib/assets/onboarding1.png',
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  Text(
                    "Find a restaurant",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      "Fatest operation to provide food by the fence",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              )),
          Container(
              color: Color.fromRGBO(255, 231, 156, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(onPressed: (){}, child: Text("Skip")),
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
                ],
              )),
          Container(
              color: Color.fromRGBO(105, 201, 248, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(onPressed: (){}, child: Text("Skip")),
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
                ],
              )),
        ],
      ),
    );
  }
}

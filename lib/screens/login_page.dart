import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return const loginpage();
  }
}

// ignore: camel_case_types
class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

// ignore: camel_case_types
class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('lib/assets/bg.jpg',fit: BoxFit.fitWidth,), 
          Container(            
            color: const Color.fromARGB(40, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(height: 10,),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                    color: Colors.white
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:  [
                      const Text('FoodApp', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      const Text('Connectez-vous à votre compte'),
                      Form(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children:  [
                            const TextField(
                              decoration: InputDecoration(
                                labelText: 'Email', 
                                icon: Icon(Icons.email)
                              ),
                            ),
                            
                            const TextField(
                              decoration: InputDecoration(
                                labelText: 'Password', 
                                icon: Icon(Icons.lock),                                  
                              ),
                              obscureText: true,
                            ),
                            
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white, 
                                backgroundColor: Colors.green,
                                minimumSize: const Size(88, 36),
                                padding: const EdgeInsets.symmetric(vertical: 13),
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                ),
                              ),
                              onPressed: () {},
                              child: const Text('Log in', style: TextStyle(fontSize: 18),),
                              
                            ),

                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                shape: const StadiumBorder(),
                                side: const BorderSide(
                                  width: 0,
                                  color: Colors.transparent
                                ),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Mot de passe oublié ?', 
                                style: TextStyle(
                                  color: Colors.black38
                                ),
                                )
                              ),
                            const SizedBox(height: 10,),
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                shape: const StadiumBorder(),
                                side: const BorderSide(
                                  width: 1,
                                  color: Colors.black
                                ),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/register');
                              },
                              child: const Text(
                                'Sing up', 
                                style: TextStyle(
                                  color: Colors.black
                                ),
                                )
                              ),                            
                          ],
                        )
                      )
                    ],
                  )
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
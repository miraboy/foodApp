import 'package:FoodApp/screens/login_page.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
              Image.asset('lib/assets/bg.jpg',fit: BoxFit.fitWidth,), 
              Container(
                padding: const EdgeInsets.all(20),
                color: const Color.fromARGB(40, 0, 0, 0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    children: [
                      const SizedBox(height: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children:  [
                          const Center(child: Text('Bienvenue dans FoodApp',style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),)),
                          const Center(child: Text('Grand titre ',style: TextStyle( fontSize: 20, color: Colors.white,))),
                          const SizedBox(height: 50,),
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
                            onPressed: () {
                              Navigator.pushNamed(context, '/login');
                            },
                            child: Text('Login', style: TextStyle(fontSize: 18),),
                            
                          ),
                          const SizedBox(height: 15,),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white, 
                              backgroundColor: Colors.amber,
                              minimumSize: const Size(88, 36),
                              padding: const EdgeInsets.symmetric(vertical: 13),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                            onPressed: () { 
                              Navigator.pushNamed(context, '/register');
                            },
                            child: Text('Register', style: TextStyle(fontSize: 18),),
                            
                          )
                        ],
                      ),
                    ]
                )
              ),
            ],
          )
    );
    
  }
}

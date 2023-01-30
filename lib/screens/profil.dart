import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class profil extends StatelessWidget {
  const profil({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profil',
      home: Scaffold(
        
        appBar: AppBar(
          title: const Text('Profile',style: TextStyle(color: Colors.black, fontSize: 25),),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          decoration: BoxDecoration(
                color: Color.fromARGB(255, 248, 249, 253)
              ),
          child: Column(
            //mainAxisAlignment: Main,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white
                ),
                padding: const EdgeInsets.all(12.0),
                child: ElevatedButton(
                  onPressed: () {}, 
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black, 
                    backgroundColor: Colors.transparent,
                    elevation: 0
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 75,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.all(Radius.circular(20)),
                              child: Image.asset('lib/assets/user.png'),
                            ),
                          ),              

                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Fannie Jackson", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                                Text("+1(454)34211432", style: TextStyle(color: Colors.grey[400]),),
                              ],
                            ),
                          ),
                        ],
                      ),
                      IconButton(onPressed: (() {}), icon: Icon(Icons.chevron_right_sharp,color: Colors.grey[350],))
                    ],
                  ),
                )
              ),
              Container(
                width: w,                
                height: h*0.735,
                decoration: BoxDecoration(
                  color: Colors.grey[170]                  
                ),
                padding: const EdgeInsets.all(16),
                child: Column(                  
                  children: [
                    Card(        
                      elevation: 5,              
                      child: Column(
                        children: [
                          make_card('Payment Methods', Icons.payment_outlined),
                          make_card('Address', Icons.location_on_outlined),
                          make_card('My Vouchers', Icons.file_present_outlined),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 12),
                      child: Card(        
                        elevation: 5,              
                        child: Column(
                          children: [
                            make_card('Payment Methods', Icons.payment_outlined),
                            make_card('Address', Icons.location_on_outlined),
                            make_card('My Vouchers', Icons.file_present_outlined),
                            make_card('Address', Icons.location_on_outlined),
                            make_card('My Vouchers', Icons.file_present_outlined),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      )
    );
  }
}
Widget make_card(label,icone) {
  return ElevatedButton(
          style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black, 
                backgroundColor: Colors.transparent,
                elevation: 0
              ),
          onPressed: () {}, 
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Icon(icone, color:  Colors.grey[350],),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('$label'),
                  ),
                ],
              ),
              
              IconButton(
                onPressed: (() {}), 
                icon: Icon(Icons.chevron_right_outlined,color: Colors.grey[350],))
            ],
        )
      );
}
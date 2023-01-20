import 'package:flutter/material.dart';

class food extends StatelessWidget {
  const food({super.key});

  @override
  Widget build(BuildContext context) {
    return listfood();
  }
}

class listfood extends StatefulWidget {
  const listfood({super.key});

  @override
  State<listfood> createState() => _listfoodState();
}

class _listfoodState extends State<listfood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center( 
        child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image.asset('lib/assets/bg1.jpg',fit: BoxFit.fitWidth,), 
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      decoration: BoxDecoration(color: Color.fromARGB(138, 0, 0, 0)),
                      child: Column(
                        children: [
                          const Padding(padding: EdgeInsets.all(15)),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(                            
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,                            
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.black, 
                                    backgroundColor: Colors.grey,                                                                    
                                    //padding: const EdgeInsets.symmetric(vertical: 13),
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                    ),
                                  ),
                                  onPressed: () {
                                    //Navigator.pushNamed(context, '/foods');
                                  },
                                  child: Icon(Icons.arrow_back_sharp) ,                                
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.white, 
                                    backgroundColor: Color.fromARGB(255, 250, 146, 146),                                  
                                    //padding: const EdgeInsets.symmetric(vertical: 13),
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                    ),
                                  ),
                                  onPressed: () {
                                    //Navigator.pushNamed(context, '/foods');
                                  },
                                  child: Icon(Icons.search) ,                                
                                )
                              ],
                            ),
                          ),
                          const Padding(padding: EdgeInsets.all(15)),
                          Column(
                            children: [
                              Text('Chick burger Co.',style: TextStyle( color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                              Text('Chick burger Co.',style: TextStyle( color: Color.fromARGB(255, 231, 220, 220), fontSize: 16)),
                              Container(
                                decoration: BoxDecoration(color: Colors.white60, borderRadius: BorderRadius.all(Radius.circular(15))),
                                margin: EdgeInsets.symmetric(horizontal: 175),                                
                                child:Row(                                  
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('4.9',style: TextStyle(color: Colors.white,fontSize: 15),),
                                    Icon(Icons.star_border,color: Colors.white,size: 16,)
                                  ],
                                ),
                              )
                            ],
                          ),
                          const Padding(padding: EdgeInsets.all(10)),
                          Container( 
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Delevery:40',style: TextStyle( color: Color.fromARGB(255, 231, 220, 220), fontSize: 14)),
                                Row(
                                  children: [
                                    Icon(Icons.location_on_outlined,color: Colors.white,size: 14),
                                    Text('433.3 m',style: TextStyle( color: Color.fromARGB(255, 231, 220, 220), fontSize: 14)),
                                  ],
                                )
                              ],
                            ),
                          ),
                          const Padding(padding: EdgeInsets.all(10)),
                        ],
                      ),
                    ),
                    Container(
                    padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25))),
                      child: Column(
                        children: [
                          Text("data")
                        ],
                      ),
                    )
                  ]
                  ),
              )
            ],
          )
        ),
    );
  }
}
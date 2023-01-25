import 'package:flutter/material.dart';

// ignore: camel_case_types
class food extends StatelessWidget {
  const food({super.key});

  @override
  Widget build(BuildContext context) {
    return const listfood();
  }
}

// ignore: camel_case_types
class listfood extends StatefulWidget {
  const listfood({super.key});

  @override
  State<listfood> createState() => _listfoodState();
}

// ignore: camel_case_types
class _listfoodState extends State<listfood> {
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 5, 
      child: Scaffold(
        
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset('lib/assets/bg1.jpg',fit: BoxFit.fitWidth,),
            Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    children: [
                      const Padding(padding: EdgeInsets.all(10)),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(                            
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,                            
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.black, 
                                backgroundColor: Colors.grey,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                ),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Icon(Icons.arrow_back_sharp) ,                                
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white, 
                                backgroundColor: const Color.fromARGB(255, 250, 146, 146),
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                ),
                              ),
                              onPressed: () {
                                //Navigator.pushNamed(context, '/foods');
                              },
                              child: const Icon(Icons.search) ,                                
                            )
                          ],
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(15)),
                      Column(
                        children: [
                          const Text('Chick burger Co.',style: TextStyle( color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                          const Text('Chick burger Co.',style: TextStyle( color: Color.fromARGB(255, 231, 220, 220), fontSize: 16)),
                          Container(
                            decoration: const BoxDecoration(color: Colors.white60, borderRadius: BorderRadius.all(Radius.circular(15))),
                            margin: const EdgeInsets.symmetric(horizontal: 175),                                
                            child:Row(                                  
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text('4.9',style: TextStyle(color: Colors.white,fontSize: 15),),
                                Icon(Icons.star_border,color: Colors.white,size: 16,)
                              ],
                            ),
                          )
                        ],
                      ),
                      const Padding(padding: EdgeInsets.all(10)),
                      Container( 
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Delevery: 40',style: TextStyle( color: Color.fromARGB(255, 231, 220, 220), fontSize: 14)),
                            Row(
                              children: const[
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
                  Container(
                    decoration:const  BoxDecoration(color: Colors.white, borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
                    child: const TabBar(
                      indicatorColor: Colors.red,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorWeight: 4,
                      isScrollable: true,
                      tabs: [
                      Tab(
                        child: Text('Petit déjeuner',style: TextStyle(color: Colors.black),),                      
                      ),
                      Tab(
                        child: Text('Déjeuner',style: TextStyle(color: Colors.black),),                      
                      ),
                      Tab(
                        child: Text('Goùter',style: TextStyle(color: Colors.black),),                      
                      ),
                      Tab(
                        child: Text('Dîner',style: TextStyle(color: Colors.black),),                      
                      ),
                      Tab(
                        child: Text('Boissson',style: TextStyle(color: Colors.black),),                      
                      ),
                    ]),
                  ),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(color: Colors.white),
                      child: TabBarView(
                        children:[
                          GridView.count(
                           crossAxisCount: 2,
                           scrollDirection: Axis.vertical,
                           children: [
                            GestureDetector(
                              onTap: () => {
                                Navigator.pushNamed(context, '/fooddetails')
                              },
                              child: myCardFood(true,'lib/assets/h0.png','hamburger','15.0','4.8'),
                            ),                        
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h1.png','hamburger','12.0','4.8')
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h2.png','hamburger','12.0','4.8')
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h3.png','hamburger','12.0','4.8')
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h4.png','hamburger','12.0','4.8')
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h5.png','hamburger','12.0','4.8')
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h6.png','hamburger','12.0','4.8')
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h7.png','hamburger','12.0','4.8')
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h8.png','hamburger','12.0','4.8')
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h9.png','hamburger','12.0','4.8')
                            ),
                           ],
                          ),
                          GridView.count(
                           crossAxisCount: 2,
                           scrollDirection: Axis.vertical,
                           children: [
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(true,'lib/assets/h0.png','hamburger','15.0','4.8'),
                            ),                        
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h1.png','hamburger','12.0','4.8')
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h2.png','hamburger','12.0','4.8')
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h3.png','hamburger','12.0','4.8')
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h4.png','hamburger','12.0','4.8')
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h5.png','hamburger','12.0','4.8')
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h6.png','hamburger','12.0','4.8')
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h7.png','hamburger','12.0','4.8')
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h8.png','hamburger','12.0','4.8')
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h9.png','hamburger','12.0','4.8')
                            ),
                           ],
                          ),
                          GridView.count(
                           crossAxisCount: 2,
                           scrollDirection: Axis.vertical,
                           children: [
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(true,'lib/assets/h0.png','hamburger','15.0','4.8'),
                            ),                        
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h1.png','hamburger','12.0','4.8')
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h2.png','hamburger','12.0','4.8')
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h3.png','hamburger','12.0','4.8')
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h4.png','hamburger','12.0','4.8')
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h5.png','hamburger','12.0','4.8')
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h6.png','hamburger','12.0','4.8')
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h7.png','hamburger','12.0','4.8')
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h8.png','hamburger','12.0','4.8')
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h9.png','hamburger','12.0','4.8')
                            ),
                           ],
                          ),
                          GridView.count(
                           crossAxisCount: 2,
                           scrollDirection: Axis.vertical,
                           children: [
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(true,'lib/assets/h0.png','hamburger','15.0','4.8'),
                            ),                        
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h1.png','hamburger','12.0','4.8')
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h2.png','hamburger','12.0','4.8')
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h3.png','hamburger','12.0','4.8')
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h4.png','hamburger','12.0','4.8')
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h5.png','hamburger','12.0','4.8')
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h6.png','hamburger','12.0','4.8')
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h7.png','hamburger','12.0','4.8')
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h8.png','hamburger','12.0','4.8')
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h9.png','hamburger','12.0','4.8')
                            ),
                           ],
                          ),
                          GridView.count(
                           crossAxisCount: 2,
                           scrollDirection: Axis.vertical,
                           children: [
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(true,'lib/assets/h0.png','hamburger','15.0','4.8'),
                            ),                        
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h1.png','hamburger','12.0','4.8')
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h2.png','hamburger','12.0','4.8')
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h3.png','hamburger','12.0','4.8')
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h4.png','hamburger','12.0','4.8')
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h5.png','hamburger','12.0','4.8')
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h6.png','hamburger','12.0','4.8')
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h7.png','hamburger','12.0','4.8')
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h8.png','hamburger','12.0','4.8')
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: myCardFood(false,'lib/assets/h9.png','hamburger','12.0','4.8')
                            ),
                           ],
                          ),
                          
                        ]
                      ),
                    ))
          ],
        )
       ] ) 
       )
      );
      
  }
  
  Widget myCardFood(favo,image,name,prix,start) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,                                  
      children:[
        Stack(
          children: [
            //lib/assets/h$index.png
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(  
                //width: 150,                                           
                child: Image.asset('$image')
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:  [
                const Text(''),
                IconButton(
                  onPressed: (){}, 
                  icon:  (favo)?Icon(Icons.favorite,color: Color.fromARGB(255, 204, 14, 0),):Icon(Icons.favorite_border, color: Color.fromARGB(255, 204, 14, 0)))                    
              ],
            )
            ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text('$name', style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text('USD $prix', style: TextStyle(color: Colors.black54),),
            ),                                        
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: [
              Text('$start',style: TextStyle(color: Colors.black,fontSize: 15),),
              Icon(Icons.star_border,color: Colors.yellow,size: 16,)
            ],
          ),
        ),
      ],
    );
  }

}
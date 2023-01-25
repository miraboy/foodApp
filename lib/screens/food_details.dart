import 'package:flutter/material.dart';

// ignore: camel_case_types
class fooddetails extends StatelessWidget {
  const fooddetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const listfooddetails();
  }
}

// ignore: camel_case_types
class listfooddetails extends StatefulWidget {
  const listfooddetails({super.key});

  @override
  State<listfooddetails> createState() => _listfooddetailsState();
}

// ignore: camel_case_types
class _listfooddetailsState extends State<listfooddetails> {
  final ButtonStyle style = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
    padding: const EdgeInsets.all(0),

  );

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
                      const Padding(padding: EdgeInsets.all(100)),
                    ],
                  ),                  
                  Container(
                    decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.0),
                          child: Text('Double cheese burger',style: TextStyle(color: Colors.black,fontSize: 20),),
                        ),
                        Text("Les petits amis de Sainte Thérèse sont appelés à aller dans les régions et les milieux les plus déchristianiser où l’ignorance de l’évangile est massive et, dans les villages qui n’ont pas encore entendu la Bonne Nouvelle du ressuscité.", style: TextStyle(color: Colors.grey, height: 1.5),),                        
                      ],
                    )
                  ),
                  Container(
                    decoration: const BoxDecoration( color: Color.fromARGB(255, 223, 222, 222) ),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text('Add Some Extras',style: TextStyle(color: Colors.black45, fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(color: Colors.white ),
                      //padding: EdgeInsets.all(16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Checkbox(value: false, onChanged: (value) => {},),
                                  const Text('Extra Tatty', style: TextStyle(fontWeight: FontWeight.bold),)
                                ],
                              ),
                              const Text("+\$ 2.00",style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),)
                            ]
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration( 
                                      border: Border.all(color: Colors.grey,style: BorderStyle.solid,),
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: IconButton(onPressed: () {}, icon: const Icon(Icons.remove))
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.symmetric(horizontal:10.0),
                                    child: Text("1",style: TextStyle(fontSize: 25)),
                                  ),
                                  Container(
                                    decoration: BoxDecoration( 
                                      border: Border.all(color: Colors.grey,style: BorderStyle.solid,),
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: IconButton(onPressed: () {}, icon: const Icon(Icons.add))
                                  )
                                ],
                                )
                              ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child:ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white, 
                                  backgroundColor: const Color.fromARGB(255, 73, 62, 94),
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                  ),
                                ),
                                onPressed: () {},
                                child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: const [
                                  Text('ADD TO CART'),
                                  Text('\$ 7,00')
                                ],
                              )),                                
                              ),
                             
                        ],
                      ),
                    )
                  )
                  
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
                  icon:  (favo)?const Icon(Icons.favorite,color: Color.fromARGB(255, 204, 14, 0),):const Icon(Icons.favorite_border, color: Color.fromARGB(255, 204, 14, 0)))                    
              ],
            )
            ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text('$name', style: const TextStyle(fontWeight: FontWeight.bold),),
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
              Text('$start',style: const TextStyle(color: Colors.black,fontSize: 15),),
              const Icon(Icons.star_border,color: Colors.yellow,size: 16,)
            ],
          ),
        ),
      ],
    );
  }

}
import 'package:flutter/material.dart';

class OrderCard extends StatefulWidget {
  const OrderCard({super.key});

  @override
  State<OrderCard> createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  int numberOfItems = 1;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Container(
      height: h * 0.3,
      child: Card(
        shape: ShapeBorder.lerp(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            1.0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Row(
                  children: [
                    Container(
                      width: w * 0.2,
                      child: Image.asset(
                        'lib/assets/h4.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text("Cheese Burger",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0)),
                          SizedBox(height: 15.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text("Cheese"),
                                  Text("Tomato"),
                                  Text("Onion"),
                                  Text("Lettuce"),
                                ],
                              ),
                              SizedBox(width: 30.0),
                              Column(
                                children: [
                                  Text("Free"),
                                  Text("+\$5"),
                                  Text("+\$2"),
                                  Text("+\$1"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Text("\$23",
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.green,
                        fontWeight: FontWeight.bold))
              ]),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: Colors.grey),
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.edit),
                          SizedBox(width: 10.0),
                          Text("Edit"),
                        ],
                      )),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (numberOfItems > 1) {
                              numberOfItems--;
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              side: BorderSide(color: Colors.grey),
                            ),
                            minimumSize: Size(20, 20),
                            padding: EdgeInsets.all(5)),
                        child: Icon(Icons.remove),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "$numberOfItems",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            numberOfItems++;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              side: BorderSide(color: Colors.grey),
                            ),
                            minimumSize: Size(20, 20),
                            padding: EdgeInsets.all(5)),
                        child: Icon(Icons.add),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

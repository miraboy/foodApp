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
            children: <Widget>[
              // widget 1
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
              ),
              // widget 2
              Positioned(
                top: 50,
                left: 50,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
            ],
          )
        ),
    );
  }
}
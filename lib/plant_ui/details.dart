import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_design_example/plant_ui/body_component.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(20))),
              width: 200,
              height: 60,
              child: Center(
                  child: Text(
                'Buy Now',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
            ),
            Container(
              width: 190,
              height: 60,
              child: Center(
                child: Text(
                  'Decription',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
      body: Container(
          child: Column(
        children: [
          BodyComponent(),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: 400,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Angelica',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 33),
                    ),
                    Text(
                      '\$440',
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Russia',
                  style: TextStyle(color: Colors.green, fontSize: 25),
                )),
          )
        ],
      )),
    );
  }
}

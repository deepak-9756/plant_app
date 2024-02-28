import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_design_example/plant_ui/details.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Column(
      children: [
        Header(size: size),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TitleWithCustomUnderline(text: 'Recommended'),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                  ),
                  onPressed: null,
                  child: Text(
                    'More',
                  )),
            ),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              RecommendedCard(size: size,name: 'Plant Name',rs:'\$40',pressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (_)=>DetailsScreen()));
              },),
              RecommendedCard(size: size,name: 'Plant Name',rs:'\$70',pressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (_)=>DetailsScreen()));
              }),
              RecommendedCard(size: size,name: 'Plant Name',rs:'\$90',pressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (_)=>DetailsScreen()));
              }),
              RecommendedCard(size: size,name: 'Plant Name',rs:'\$50',pressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (_)=>DetailsScreen()));
              })
            ],
          ),



        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TitleWithCustomUnderline(text: 'Featued Plan'),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.green),
                    foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.black),
                  ),
                  onPressed: null,
                  child: Text(
                    'More',
                  )),
            ),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 20,top: 20),
                width: size.width *.4,
                height: 185,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            'https://images.pexels.com/photos/1266302/pexels-photo-1266302.jpeg?auto=compress&cs=tinysrgb&w=800'))
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20,top: 20),
                width: size.width *.4,
                height: 185,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            'https://images.pexels.com/photos/1266302/pexels-photo-1266302.jpeg?auto=compress&cs=tinysrgb&w=800'))
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20,top: 20),
                width: size.width *.4,
                height: 185,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            'https://images.pexels.com/photos/1266302/pexels-photo-1266302.jpeg?auto=compress&cs=tinysrgb&w=800'))
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20,top: 20),
                width: size.width *.4,
                height: 185,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            'https://images.pexels.com/photos/1266302/pexels-photo-1266302.jpeg?auto=compress&cs=tinysrgb&w=800'))
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}

class RecommendedCard extends StatelessWidget {
  final Size size;
  final String name;
  final String rs;
  var pressed;
   RecommendedCard({super.key,required this.size,required this.name,required this.rs,this.pressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20,right: 20),
      width: size.width * .4,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 3,
              color: Colors.grey.withOpacity(0.20),
            )
          ],
          borderRadius: BorderRadius.circular(10)),
      child: Column(children: [
        GestureDetector(
          onTap: pressed,
          child: Container(
            height: 150,
            width: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://images.pexels.com/photos/1974508/pexels-photo-1974508.jpeg?auto=compress&cs=tinysrgb&w=800')),
                borderRadius: BorderRadius.circular(10)),
          ),
        ),
        Container(
          height: 53,
          child: Row(
            children: [
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: 'Name: ', style: TextStyle(color: Colors.black)),
                  TextSpan(
                      text: '${name}',
                      style: TextStyle(color: Colors.green)),
                ]),
              ),
              Spacer(),
              Text('\n${rs}', style: TextStyle(color: Colors.green))
            ],
          ),
        )
      ]),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  String text;

  TitleWithCustomUnderline({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: 24,
      child: Stack(
        children: [
          Text(
            '${this.text}',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 2,
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  final Size size;

  Header({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: size.height * 0.2,
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                height: size.height * 0.2 - 27,
                decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36),
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      'Hi Happy!',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6MNqLK474EOfiZmVAL6eibeA_-F9lxOiLOF-FI944Sw&s',
                      height: 50,
                      width: 50,
                      fit: BoxFit.fill,
                    )
                  ],
                ),
              ),
              Positioned(
                top: 115,
                left: 0,
                right: 0,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  height: 54,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color: Colors.grey.withOpacity(0.50))
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: TextStyle(color: Colors.green[200]),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          suffixIcon: Icon(
                            Icons.search,
                            color: Colors.green[200],
                          )),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
    ;
  }
}

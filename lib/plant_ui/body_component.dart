import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BodyComponent extends StatelessWidget {
  const BodyComponent({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.8,
          child: Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 50.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back)),
                    ),
                    Spacer(),
                    Container(
                      height: 62,
                      width: 62,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 15),
                              blurRadius: 22,
                              color: Colors.white54.withOpacity(0.50),
                            ),
                            BoxShadow(
                              offset: Offset(-15, -15),
                              blurRadius: 20,
                              color: Colors.white54.withOpacity(0.22),
                            )
                          ]),
                    )
                  ],
                ),
              )),
              Container(
                height: size.height * 0.8,
                width: size.width * .75,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 60,
                        color: Colors.green.withOpacity(0.38),
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(63),
                    ),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        alignment: Alignment.centerLeft,
                        image: NetworkImage(
                            'https://images.pexels.com/photos/4374576/pexels-photo-4374576.jpeg?auto=compress&cs=tinysrgb&w=800'))),
              )
            ],
          ),
        )
      ],
    );
  }
}

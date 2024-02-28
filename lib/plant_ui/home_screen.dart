import 'package:flutter/material.dart';
import 'package:ui_design_example/plant_ui/body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white54,
              boxShadow: [
                BoxShadow(offset: Offset(0,-10),blurRadius: 35,color: Colors.green.withOpacity(0.38))
            ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: null, icon: Icon(Icons.ac_unit,color: Colors.green,)),
            IconButton(onPressed: null, icon: Icon(Icons.favorite_border,color: Colors.green,)),
            IconButton(onPressed: null, icon: Icon(Icons.perm_contact_cal_outlined,color: Colors.green,))

          ],
        ),

      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: null,
        ),
      ),
      body: Body(),
    );
  }
}

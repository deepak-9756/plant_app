import 'package:flutter/material.dart';
import 'package:ui_design_example/plant_ui/body_component.dart';
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child:BodyComponent()
      ),
    );
  }
}

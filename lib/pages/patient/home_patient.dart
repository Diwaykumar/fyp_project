import 'package:flutter/material.dart';
class HomePatient extends StatefulWidget {
  const HomePatient({super.key});

  @override
  State<HomePatient> createState() => _HomePatientState();
}

class _HomePatientState extends State<HomePatient> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('This is Psycologist Home screen'),
    );
  }
}
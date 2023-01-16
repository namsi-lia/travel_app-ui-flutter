import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel_app/models/destination.dart';

class DestinationScreen extends StatelessWidget {
  final Destination singleDestination;
  const DestinationScreen({super.key, required this.singleDestination});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(singleDestination.title),
      ),
    );
  }
}

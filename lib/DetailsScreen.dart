import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/MyApp.dart';
import 'package:riverpod_sample/models/SearchCharger.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, this.charger}) : super(key: key);
  final SearchData? charger;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Text(charger!.distance.toString())
            ],
          ),
        ),
      ),
    );
  }
}

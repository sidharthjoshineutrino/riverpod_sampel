import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/MyApp.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (BuildContext context,ref,Widget? child){
      final details = ref.watch(searchChargerFutureProvider);
      return Scaffold(
        body: Container(
          child: Column(
            children: [
              Text("")
            ],
          ),
        ),
      );
    });
  }
}

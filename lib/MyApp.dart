import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/ChargerService.dart';

final chargerFutureProvider = FutureProvider((ref) async {
  final movieService = ref.read(chargerServiceProvider);
  final chargers = await movieService.getMapCharger();
  return chargers;
});

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage());
  }
}

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        body: ref.watch(chargerFutureProvider).when(
            data: (chargers) {
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: chargers?.length,
                itemBuilder: (ctz, index) {
                  return Text(chargers![index].name!);
                },
              );
            },
            error: (e, s) {
              return Text(e.toString());
            },
            loading: () => Center(
                  child: CircularProgressIndicator(),
                )));
  }
}

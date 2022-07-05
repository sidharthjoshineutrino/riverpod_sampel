import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/ChargerService.dart';

final mapChargerFutureProvider = FutureProvider((ref) async {
  final mapChargerService = ref.read(chargerServiceProvider);
  final chargers = await mapChargerService.getAllMapCharger();
  return chargers;
});

final searchChargerFutureProvider = FutureProvider((ref) async {
  final mapChargerService = ref.read(chargerServiceProvider);
  final chargers = await mapChargerService.getAllSearchCharger();
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
        home: const HomePage());
  }
}

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        body: ref.watch(searchChargerFutureProvider).when(
            data: (chargers) {
              return Container(
                margin: EdgeInsets.all(10),
                clipBehavior: Clip.none,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemCount: chargers?.length,
                  itemBuilder: (ctz, index) {
                    return InkWell(
                      onTap: (){},
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                spreadRadius: 3,
                                blurRadius: 7
                              )
                            ]
                          ),
                          child: Center(child: Text(chargers![index].name!,style: const TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500
                          ),))),
                    );
                  },
                ),
              );
            },
            error: (e, s) {
              return Text(e.toString());
            },
            loading: () => const Center(
                  child: CircularProgressIndicator(),
                )));
  }
}

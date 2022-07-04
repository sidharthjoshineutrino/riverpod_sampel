import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/MapCharger.dart';

final chargerServiceProvider = Provider<ChargerService>((ref) {
  return ChargerService(Dio());
});

class ChargerService{
  final Dio _dio;
  ChargerService(this._dio);


  Future<List<Data>?> getMapCharger() async {

    var response = await _dio.get("https://b66b-103-59-74-92.in.ngrok.io/api/charger/getAllMapCharger");
    var data = MapCharger.fromJson(response.data);
    return data.data;

  }
}
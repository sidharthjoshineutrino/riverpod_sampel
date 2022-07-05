import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/MapCharger.dart';
import 'package:riverpod_sample/environment_config.dart';
import 'package:riverpod_sample/models/SearchCharger.dart';

final chargerServiceProvider = Provider<ChargerService>((ref) {
  return ChargerService(Dio(BaseOptions(
    baseUrl: EnvironmentConfig.BASE_URL
  )));
});

class ChargerService {
  final Dio _dio;
  ChargerService(this._dio);

  Future getAllMapCharger() async {
    var response = await _dio.get(
        "charger/getAllMapCharger");
    var data = MapCharger.fromJson(response.data);
    return data.data;
  }

  Future getAllSearchCharger() async {
    var response = await _dio.get(
        "charger/getAllSearchCharger");
    var data = SearchCharger.fromJson(response.data);
    return data.data;
  }
}

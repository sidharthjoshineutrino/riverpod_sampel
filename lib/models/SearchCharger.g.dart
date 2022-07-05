// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SearchCharger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchCharger _$SearchChargerFromJson(Map<String, dynamic> json) =>
    SearchCharger(
      responseCode: json['responseCode'] as int?,
      status: json['status'] as String?,
      description: json['description'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => SearchData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchChargerToJson(SearchCharger instance) =>
    <String, dynamic>{
      'responseCode': instance.responseCode,
      'status': instance.status,
      'description': instance.description,
      'data': instance.data,
    };

SearchData _$DataFromJson(Map<String, dynamic> json) => SearchData(
      id: json['id'] as String?,
      name: json['name'] as String?,
      location: json['location'] as String?,
      rating: json['rating'] as double?,
      distance: (json['distance'] as num?)?.toDouble(),
      chargerModelList: (json['chargerModelList'] as List<dynamic>?)
          ?.map((e) => ChargerModelList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(SearchData instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location': instance.location,
      'rating': instance.rating,
      'distance': instance.distance,
      'chargerModelList': instance.chargerModelList,
    };

ChargerModelList _$ChargerModelListFromJson(Map<String, dynamic> json) =>
    ChargerModelList(
      name: json['name'] as String?,
      rateUnit: json['rateUnit'] as String?,
      numberOfSlots: json['numberOfSlots'] as int?,
      bookedTimeSlots: (json['bookedTimeSlots'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$ChargerModelListToJson(ChargerModelList instance) =>
    <String, dynamic>{
      'name': instance.name,
      'rateUnit': instance.rateUnit,
      'numberOfSlots': instance.numberOfSlots,
      'bookedTimeSlots': instance.bookedTimeSlots,
    };

import 'package:json_annotation/json_annotation.dart';

part 'SearchCharger.g.dart';

@JsonSerializable()
class SearchCharger {
  final int? responseCode;
  final String? status;
  final String? description;
  final List<SearchData>? data;

  SearchCharger({this.responseCode, this.status, this.description, this.data});

  factory SearchCharger.fromJson(Map<String, dynamic> json) => _$SearchChargerFromJson(json);
  Map<String, dynamic> toJson() => _$SearchChargerToJson(this);

}

@JsonSerializable()
class SearchData {
  final String? id;
  final String? name;
  final String? location;
  final double? rating;
  final double? distance;
  final List<ChargerModelList>? chargerModelList;

  SearchData(
      {this.id,
        this.name,
        this.location,
        this.rating,
        this.distance,
        this.chargerModelList});

  factory SearchData.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class ChargerModelList {
  final String? name;
  final String? rateUnit;
  final int? numberOfSlots;
  final List<int>? bookedTimeSlots;

  factory ChargerModelList.fromJson(Map<String, dynamic> json) => _$ChargerModelListFromJson(json);
  Map<String, dynamic> toJson() => _$ChargerModelListToJson(this);

  ChargerModelList(
      {
        this.name,
        this.rateUnit,
        this.numberOfSlots,
        this.bookedTimeSlots});
}
class MapCharger {
  int? responseCode;
  String? status;
  String? description;
  List<Data>? data;

  MapCharger({this.responseCode, this.status, this.description, this.data});

  MapCharger.fromJson(Map<String, dynamic> json) {
    responseCode = json['responseCode'];
    status = json['status'];
    description = json['description'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  factory MapCharger.fromMap(Map<String,dynamic> map){
    return MapCharger(
      responseCode: map['responseCode'],
      status: map['status'],
      description: map['description'],
      data: map['data'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['responseCode'] = this.responseCode;
    data['status'] = this.status;
    data['description'] = this.description;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? id;
  String? name;
  double? distance;
  double? rating;
  String? providerName;
  String? nextSlot;
  double? latitude;
  double? longitude;
  String? plugType;

  Data(
      {this.id,
      this.name,
      this.distance,
      this.rating,
      this.providerName,
      this.nextSlot,
      this.latitude,
      this.longitude,
      this.plugType});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    distance = json['distance'];
    rating = json['rating'];
    providerName = json['providerName'];
    nextSlot = json['nextSlot'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    plugType = json['plugType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['distance'] = this.distance;
    data['rating'] = this.rating;
    data['providerName'] = this.providerName;
    data['nextSlot'] = this.nextSlot;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['plugType'] = this.plugType;
    return data;
  }
}

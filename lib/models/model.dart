// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    required this.title,
    required this.query,
    required this.welcomeFor,
    required this.method,
    required this.prayerMethodName,
    required this.daylight,
    required this.timezone,
    required this.mapImage,
    required this.sealevel,
    required this.link,
    required this.qiblaDirection,
    required this.latitude,
    required this.longitude,
    required this.address,
    required this.city,
    required this.state,
    required this.postalCode,
    required this.country,
    required this.countryCode,
    required this.items,
    required this.statusValid,
    required this.statusCode,
    required this.statusDescription,
  });

  String title;
  String query;
  String welcomeFor;
  int method;
  String prayerMethodName;
  String daylight;
  String timezone;
  String mapImage;
  String sealevel;
  String link;
  String qiblaDirection;
  String latitude;
  String longitude;
  String address;
  String city;
  String state;
  String postalCode;
  String country;
  String countryCode;
  List<Item> items;
  int statusValid;
  int statusCode;
  String statusDescription;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    title: json["title"],
    query: json["query"],
    welcomeFor: json["for"],
    method: json["method"],
    prayerMethodName: json["prayer_method_name"],
    daylight: json["daylight"],
    timezone: json["timezone"],
    mapImage: json["map_image"],
    sealevel: json["sealevel"],
    link: json["link"],
    qiblaDirection: json["qibla_direction"],
    latitude: json["latitude"],
    longitude: json["longitude"],
    address: json["address"],
    city: json["city"],
    state: json["state"],
    postalCode: json["postal_code"],
    country: json["country"],
    countryCode: json["country_code"],
    items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
    statusValid: json["status_valid"],
    statusCode: json["status_code"],
    statusDescription: json["status_description"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "query": query,
    "for": welcomeFor,
    "method": method,
    "prayer_method_name": prayerMethodName,
    "daylight": daylight,
    "timezone": timezone,
    "map_image": mapImage,
    "sealevel": sealevel,
    "link": link,
    "qibla_direction": qiblaDirection,
    "latitude": latitude,
    "longitude": longitude,
    "address": address,
    "city": city,
    "state": state,
    "postal_code": postalCode,
    "country": country,
    "country_code": countryCode,
    "items": List<dynamic>.from(items.map((x) => x.toJson())),
    "status_valid": statusValid,
    "status_code": statusCode,
    "status_description": statusDescription,
  };
}

class Item {
  Item({
    required this.dateFor,
    required this.fajr,
    required this.shurooq,
    required this.dhuhr,
    required this.asr,
    required this.maghrib,
    required this.isha,
  });

  String dateFor;
  String fajr;
  String shurooq;
  String dhuhr;
  String asr;
  String maghrib;
  String isha;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    dateFor: json["date_for"],
    fajr: json["fajr"],
    shurooq: json["shurooq"],
    dhuhr: json["dhuhr"],
    asr: json["asr"],
    maghrib: json["maghrib"],
    isha: json["isha"],
  );

  Map<String, dynamic> toJson() => {
    "date_for": dateFor,
    "fajr": fajr,
    "shurooq": shurooq,
    "dhuhr": dhuhr,
    "asr": asr,
    "maghrib": maghrib,
    "isha": isha,
  };
}


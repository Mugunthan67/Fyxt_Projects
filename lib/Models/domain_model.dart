// To parse this JSON data, do
//
//     final domainModel = domainModelFromJson(jsonString);

import 'dart:convert';

DomainModel? domainModelFromJson(String str) =>
    DomainModel.fromJson(json.decode(str));

String domainModelToJson(DomainModel? data) => json.encode(data!.toJson());

class DomainModel {
  DomainModel({
    this.category,
    this.types,
    this.domains,
    this.token,
  });

  String? category;
  List<String?>? types;
  List<Domain?>? domains;
  String? token;

  factory DomainModel.fromJson(Map<String, dynamic> json) => DomainModel(
        category: json["category"],
        types: json["types"] == null
            ? []
            : List<String?>.from(json["types"]!.map((x) => x)),
        domains: json["domains"] == null
            ? []
            : List<Domain?>.from(
                json["domains"]!.map((x) => Domain.fromJson(x))),
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "category": category,
        "types": types == null ? [] : List<dynamic>.from(types!.map((x) => x)),
        "domains": domains == null
            ? []
            : List<dynamic>.from(domains!.map((x) => x!.toJson())),
        "token": token,
      };
}

class Domain {
  Domain({
    this.name,
    this.host,
    this.link,
  });

  String? name;
  String? host;
  String? link;

  factory Domain.fromJson(Map<String, dynamic> json) => Domain(
        name: json["name"],
        host: json["host"],
        link: json["link"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "host": host,
        "link": link,
      };
}

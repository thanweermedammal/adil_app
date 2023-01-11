// To parse this JSON data, do
//
//     final contactorDetails = contactorDetailsFromJson(jsonString);

import 'dart:convert';

ContactorDetails contactorDetailsFromJson(String str) =>
    ContactorDetails.fromJson(json.decode(str));

String contactorDetailsToJson(ContactorDetails data) =>
    json.encode(data.toJson());

class ContactorDetails {
  ContactorDetails({
    this.result,
    this.contractors,
  });

  bool? result;
  List<Contractor>? contractors;

  factory ContactorDetails.fromJson(Map<String, dynamic> json) =>
      ContactorDetails(
        result: json["result"],
        contractors: List<Contractor>.from(
            json["contractors"].map((x) => Contractor.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "result": result,
        "contractors": List<dynamic>.from(contractors!.map((x) => x.toJson())),
      };
}

class Contractor {
  Contractor({
    this.id,
    this.crNo,
    this.name,
    this.email,
    this.address,
    this.number,
    this.city,
    this.postalCode,
    this.joinDate,
    this.websiteUrl,
    this.logo,
    this.document1,
    this.document2,
    this.document3,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? crNo;
  String? name;
  String? email;
  String? address;
  String? number;
  String? city;
  String? postalCode;
  DateTime? joinDate;
  String? websiteUrl;
  String? logo;
  dynamic document1;
  dynamic document2;
  dynamic document3;
  String? status;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory Contractor.fromJson(Map<String, dynamic> json) => Contractor(
        id: json["id"],
        crNo: json["cr_no"],
        name: json["name"],
        email: json["email"],
        address: json["address"],
        number: json["number"] == null ? null : json["number"],
        city: json["city"],
        postalCode: json["postal_code"],
        joinDate: json["join_date"] == null
            ? null
            : DateTime.parse(json["join_date"]),
        websiteUrl: json["website_url"] == null ? null : json["website_url"],
        logo: json["logo"] == null ? null : json["logo"],
        document1: json["document1"] == null ? null : json["document1"],
        document2: json["document2"] == null ? null : json["document2"],
        document3: json["document3"] == null ? null : json["document3"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "cr_no": crNo,
        "name": name,
        "email": email,
        "address": address,
        "number": number,
        "city": city,
        "postal_code": postalCode,
        "join_date":
            "${joinDate!.year.toString().padLeft(4, '0')}-${joinDate!.month.toString().padLeft(2, '0')}-${joinDate!.day.toString().padLeft(2, '0')}",
        "website_url": websiteUrl,
        "logo": logo,
        "document1": document1,
        "document2": document2,
        "document3": document3,
        "status": status,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
      };
}

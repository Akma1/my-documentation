// To parse this JSON data, do
//
//     final listOtherMenuModel = listOtherMenuModelFromJson(jsonString);

import 'dart:convert';

VouchersModel listOtherMenuModelFromJson(String str) =>
    VouchersModel.fromJson(json.decode(str));

String listOtherMenuModelToJson(VouchersModel data) =>
    json.encode(data.toJson());

class VouchersModel {
  int? statusCode;
  DatasVouchers? datas;

  VouchersModel({
    this.statusCode,
    this.datas,
  });

  VouchersModel copyWith({
    int? statusCode,
    DatasVouchers? datas,
  }) =>
      VouchersModel(
        statusCode: statusCode ?? this.statusCode,
        datas: datas ?? this.datas,
      );

  factory VouchersModel.fromJson(Map<String, dynamic> json) => VouchersModel(
        statusCode: json["status_code"],
        datas: DatasVouchers.fromJson(json["datas"]),
      );

  Map<String, dynamic> toJson() => {
        "status_code": statusCode,
        "datas": datas!.toJson(),
      };
}

class DatasVouchers {
  int? id;
  String? kode;
  int? nominal;
  String? createdAt;
  String? updatedAt;

  DatasVouchers({
    this.id,
    this.kode,
    this.nominal,
    this.createdAt,
    this.updatedAt,
  });

  DatasVouchers copyWith({
    int? id,
    String? kode,
    int? nominal,
    String? createdAt,
    String? updatedAt,
  }) =>
      DatasVouchers(
        id: id ?? this.id,
        kode: kode ?? this.kode,
        nominal: nominal ?? this.nominal,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory DatasVouchers.fromJson(Map<String, dynamic> json) => DatasVouchers(
        id: json["id"],
        kode: json["kode"],
        nominal: json["nominal"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "kode": kode,
        "nominal": nominal,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}

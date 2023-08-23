// To parse this JSON data, do
//
//     final listOtherMenuModel = listOtherMenuModelFromJson(jsonString);

import 'dart:convert';

ListDataMenuModel listOtherMenuModelFromJson(String str) =>
    ListDataMenuModel.fromJson(json.decode(str));

String listOtherMenuModelToJson(ListDataMenuModel data) =>
    json.encode(data.toJson());

class ListDataMenuModel {
  int? statusCode;
  List<Data>? datas;

  ListDataMenuModel({
    this.statusCode,
    this.datas,
  });

  ListDataMenuModel copyWith({
    int? statusCode,
    List<Data>? datas,
  }) =>
      ListDataMenuModel(
        statusCode: statusCode ?? this.statusCode,
        datas: datas ?? this.datas,
      );

  factory ListDataMenuModel.fromJson(Map<String, dynamic> json) =>
      ListDataMenuModel(
        statusCode: json["status_code"],
        datas: List<Data>.from(json["datas"].map((x) => Data.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status_code": statusCode,
        "datas": List<dynamic>.from(datas!.map((x) => x.toJson())),
      };
}

class Data {
  int? id;
  String? nama;
  int? harga;
  String? tipe;
  String? gambar;

  Data({
    this.id,
    this.nama,
    this.harga,
    this.tipe,
    this.gambar,
  });

  Data copyWith({
    int? id,
    String? nama,
    int? harga,
    String? tipe,
    String? gambar,
  }) =>
      Data(
        id: id ?? this.id,
        nama: nama ?? this.nama,
        harga: harga ?? this.harga,
        tipe: tipe ?? this.tipe,
        gambar: gambar ?? this.gambar,
      );

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        nama: json["nama"],
        harga: json["harga"],
        tipe: json["tipe"],
        gambar: json["gambar"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nama": nama,
        "harga": harga,
        "tipe": tipe,
        "gambar": gambar,
      };
}

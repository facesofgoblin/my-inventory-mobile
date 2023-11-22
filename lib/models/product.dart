// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

List<Product> productFromJson(String str) => List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
    String model;
    int pk;
    Fields fields;

    Product({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String name;
    DateTime dateAdded;
    int amount;
    int price;
    String description;
    String localImage;
    String? urlImage;

    Fields({
        required this.user,
        required this.name,
        required this.dateAdded,
        required this.amount,
        required this.price,
        required this.description,
        required this.localImage,
        required this.urlImage,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        dateAdded: DateTime.parse(json["date_added"]),
        amount: json["amount"],
        price: json["price"],
        description: json["description"],
        localImage: json["local_image"],
        urlImage: json["url_image"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "date_added": dateAdded.toIso8601String(),
        "amount": amount,
        "price": price,
        "description": description,
        "local_image": localImage,
        "url_image": urlImage,
    };
}
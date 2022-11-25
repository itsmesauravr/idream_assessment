class BooksModel {
  String? name;
  String? subtitle;
  String? image;

  BooksModel({
    this.name,
    this.subtitle,
    this.image,
  });

  factory BooksModel.fromJson(Map<String, dynamic> json) => BooksModel(
        name: json["name"],
        subtitle: json["subtitle"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "subtitle": subtitle,
        "image": image,
      };
}

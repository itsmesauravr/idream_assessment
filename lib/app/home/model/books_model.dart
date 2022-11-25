class BooksModel {
  String? name;
  String? subtitle;
  String? image;
  String? hindi;

  BooksModel({
    this.name,
    this.subtitle,
    this.image,
    this.hindi,
  });

  factory BooksModel.fromJson(Map<String, dynamic> json) => BooksModel(
        name: json["name"],
        subtitle: json["subtitle"],
        image: json["image"],
        hindi: json["hindi"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "subtitle": subtitle,
        "image": image,
        "hindi": hindi,
      };
}

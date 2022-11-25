class SubjectsModel {
  String? name;
  String? image;
  String? hindi;

  SubjectsModel({
    this.name,
    this.image,
    this.hindi,
  });

  factory SubjectsModel.fromJson(Map<String, dynamic> json) => SubjectsModel(
        name: json["name"],
        image: json["image"],
        hindi: json["hindi"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
        "hindi": hindi,
      };
}

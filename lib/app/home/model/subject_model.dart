class SubjectsModel {
  String? name;
  String? image;

  SubjectsModel({
    this.name,
    this.image,
  });

  factory SubjectsModel.fromJson(Map<String, dynamic> json) => SubjectsModel(
        name: json["name"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
      };
}

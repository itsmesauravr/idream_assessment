class ProjectModel {
  String? name;
  String? image;

  ProjectModel({
    this.name,
    this.image,
  });

  factory ProjectModel.fromJson(Map<String, dynamic> json) => ProjectModel(
        name: json["name"],
        image: json["image"],
      );
}

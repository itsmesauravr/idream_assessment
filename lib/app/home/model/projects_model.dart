class ProjectModel {
  String? name;
  String? image;
  String? hindi;

  ProjectModel({
    this.name,
    this.image,
    this.hindi,
  });

  factory ProjectModel.fromJson(Map<String, dynamic> json) => ProjectModel(
        name: json["name"],
        image: json["image"],
        hindi: json["hindi"],
      );
}

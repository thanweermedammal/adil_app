// To parse this JSON data, do
//
//     final projects = projectsFromJson(jsonString);

import 'dart:convert';

ProjectsData projectsDataFromJson(String str) =>
    ProjectsData.fromJson(json.decode(str));

String projectsDataToJson(ProjectsData data) => json.encode(data.toJson());

class ProjectsData {
  ProjectsData({
    this.result,
    this.projects,
  });

  bool? result;
  List<Project>? projects;

  factory ProjectsData.fromJson(Map<String, dynamic> json) => ProjectsData(
        result: json["result"],
        projects: List<Project>.from(
            json["projects"].map((x) => Project.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "result": result,
        "projects": List<dynamic>.from(projects!.map((x) => x.toJson())),
      };
}

class Project {
  Project({
    this.id,
    this.projectId,
    this.name,
    this.customerId,
    this.approvalDate,
    this.startingDate,
    this.deadlineDate,
    this.location,
    this.plotNo,
    this.use,
    this.noOfFloors,
    this.designed,
    this.drawn,
    this.checked,
    this.approved,
    this.scale,
    this.size,
    this.drawingNo,
    this.photo,
    this.document1,
    this.document2,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? projectId;
  String? name;
  int? customerId;
  dynamic approvalDate;
  dynamic startingDate;
  dynamic deadlineDate;
  dynamic location;
  dynamic plotNo;
  dynamic use;
  dynamic noOfFloors;
  String? designed;
  String? drawn;
  String? checked;
  String? approved;
  dynamic scale;
  dynamic size;
  dynamic drawingNo;
  String? photo;
  dynamic document1;
  dynamic document2;
  String? status;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory Project.fromJson(Map<String, dynamic> json) => Project(
        id: json["id"],
        projectId: json["project_id"],
        name: json["name"],
        customerId: json["customer_id"],
        approvalDate: json["approval_date"],
        startingDate: json["starting_date"],
        deadlineDate: json["deadline_date"],
        location: json["location"],
        plotNo: json["plot_no"],
        use: json["use"],
        noOfFloors: json["no_of_floors"],
        designed: json["designed"],
        drawn: json["drawn"],
        checked: json["checked"],
        approved: json["approved"],
        scale: json["scale"],
        size: json["size"],
        drawingNo: json["drawing_no"],
        photo: json["photo"] == null ? null : json["photo"],
        document1: json["document1"],
        document2: json["document2"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "project_id": projectId,
        "name": name,
        "customer_id": customerId,
        "approval_date": approvalDate,
        "starting_date": startingDate,
        "deadline_date": deadlineDate,
        "location": location,
        "plot_no": plotNo,
        "use": use,
        "no_of_floors": noOfFloors,
        "designed": designed,
        "drawn": drawn,
        "checked": checked,
        "approved": approved,
        "scale": scale,
        "size": size,
        "drawing_no": drawingNo,
        "photo": photo == null ? null : photo,
        "document1": document1,
        "document2": document2,
        "status": status,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}

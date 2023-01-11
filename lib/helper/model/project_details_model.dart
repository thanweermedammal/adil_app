// To parse this JSON data, do
//
//     final projectDetail = projectDetailFromJson(jsonString);

import 'dart:convert';

ProjectDetail projectDetailFromJson(String str) =>
    ProjectDetail.fromJson(json.decode(str));

String projectDetailToJson(ProjectDetail data) => json.encode(data.toJson());

class ProjectDetail {
  ProjectDetail({
    this.result,
    this.projects,
  });

  bool? result;
  Projects? projects;

  factory ProjectDetail.fromJson(Map<String, dynamic> json) => ProjectDetail(
        result: json["result"],
        projects: Projects.fromJson(json["projects"]),
      );

  Map<String, dynamic> toJson() => {
        "result": result,
        "projects": projects?.toJson(),
      };
}

class Projects {
  Projects({
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

  factory Projects.fromJson(Map<String, dynamic> json) => Projects(
        id: json["id"],
        projectId: json["project_id"],
        name: json["name"],
        customerId: json["customer_id"],
        approvalDate: json["approval_date"] != null
            ? DateTime.parse(json["approval_date"])
            : json["approval_date"],
        startingDate: DateTime.parse(json["starting_date"]),
        deadlineDate: DateTime.parse(json["deadline_date"]),
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
        photo: json["photo"],
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
        "approval_date":
            "${approvalDate?.year.toString().padLeft(4, '0')}-${approvalDate?.month.toString().padLeft(2, '0')}-${approvalDate?.day.toString().padLeft(2, '0')}",
        "starting_date":
            "${startingDate?.year.toString().padLeft(4, '0')}-${startingDate?.month.toString().padLeft(2, '0')}-${startingDate?.day.toString().padLeft(2, '0')}",
        "deadline_date":
            "${deadlineDate?.year.toString().padLeft(4, '0')}-${deadlineDate?.month.toString().padLeft(2, '0')}-${deadlineDate?.day.toString().padLeft(2, '0')}",
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
        "photo": photo,
        "document1": document1,
        "document2": document2,
        "status": status,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}

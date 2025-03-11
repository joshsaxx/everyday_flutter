class SchoolModel {
  final int? schoolId;
  final String? schoolName;

  SchoolModel({this.schoolId, this.schoolName});
  
  factory SchoolModel.fromJson(Map<String, dynamic> json){
    return SchoolModel(
      schoolId: json['school_id'] ?? 0,
      schoolName: json['school_name'] ?? "",
    );
  }
}

final List<SchoolModel> schools = [
  SchoolModel(schoolId: 1, schoolName: "Pere Planque School"),
  SchoolModel(schoolId: 2, schoolName: "Aamusted"),
  SchoolModel(schoolId: 3, schoolName: "Childcare International School"),
  SchoolModel(schoolId: 4, schoolName: "Winneba"),
  SchoolModel(schoolId: 5, schoolName: "UG"),
  SchoolModel(schoolId: 6, schoolName: "KNUST"),
  SchoolModel(schoolId: 7, schoolName: "UCC"),
  SchoolModel(schoolId: 8, schoolName: "UHASS"),
  SchoolModel(schoolId: 9, schoolName: "UMAT"),
  SchoolModel(schoolId: 10, schoolName: "GTIS"),
  
];
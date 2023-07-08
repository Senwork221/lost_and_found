class Object {
  final int id;
  final String objectName;
  final String description;
  final DateTime createdDate;
  final DateTime updatedDate;
  final String status;

  Object({
    required this.id,
    required this.objectName,
    required this.description,
    required this.createdDate,
    required this.updatedDate,
    required this.status,
  });

  factory Object.fromJson(Map<String, dynamic> json) {
    return Object(
      id: json['id'],
      objectName: json['objectName'],
      description: json['description'],
      createdDate: DateTime.parse(json['createdDate']),
      updatedDate: DateTime.parse(json['updatedDate']),
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'objectName': objectName,
      'description': description,
      'createdDate': createdDate.toIso8601String(),
      'updatedDate': updatedDate.toIso8601String(),
      'status': status,
    };
  }
}

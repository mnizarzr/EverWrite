import 'package:hive/hive.dart';
part 'note.g.dart';

@HiveType(typeId: 1)
class Note {
  @HiveField(1)
  String id;
  @HiveField(2)
  String content;
  @HiveField(3)
  String title;
  @HiveField(4)
  String? imagePath;
  @HiveField(5)
  DateTime createdAt;
  @HiveField(6)
  DateTime? updatedAt;

  Note({
    required this.id,
    required this.title,
    required this.content,
    this.imagePath,
    required this.createdAt,
    this.updatedAt,
  });
  Note.fromJson(Map json)
      : id = json['id'],
        title = json['title'],
        content = json['content'],
        imagePath = json['imagePath'],
        createdAt = json['createdAt'],
        updatedAt = json['updatedAt'];

  toJson() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'imagePath': imagePath,
    };
  }
}

//
class DataModel {
  final String title;
  final String text;

  DataModel({
    required this.title,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'text': text,
    };
  }

  factory DataModel.fromMap(Map<String, dynamic> map) {
    return DataModel(
      title: map['title'],
      text: map['text'],
    );
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class BookModel {
  String? title;
  String? author;
  String? year;

  BookModel({
    this.title,
    this.author,
    this.year,
  });

  BookModel copyWith({
    String? title,
    String? author,
    String? year,
  }) {
    return BookModel(
      title: title ?? this.title,
      author: author ?? this.author,
      year: year ?? this.year,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'author': author,
      'year': year,
    };
  }

  factory BookModel.fromMap(Map<String, dynamic> map) {
    return BookModel(
      title: map['title'] != null ? map['title'] as String : null,
      author: map['author'] != null ? map['author'] as String : null,
      year: map['year'] != null ? map['year'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory BookModel.fromJson(String source) =>
      BookModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'BookModel(title: $title, author: $author, year: $year)';

  @override
  bool operator ==(covariant BookModel other) {
    if (identical(this, other)) return true;

    return other.title == title && other.author == author && other.year == year;
  }

  @override
  int get hashCode => title.hashCode ^ author.hashCode ^ year.hashCode;
}

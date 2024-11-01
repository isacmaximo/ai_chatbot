// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ArticleModel {
  String? title;
  String? author;
  String? year;
  String? url;

  ArticleModel({
    this.title,
    this.author,
    this.year,
    this.url,
  });

  ArticleModel copyWith({
    String? title,
    String? author,
    String? year,
    String? url,
  }) {
    return ArticleModel(
      title: title ?? this.title,
      author: author ?? this.author,
      year: year ?? this.year,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'author': author,
      'year': year,
      'url': url,
    };
  }

  factory ArticleModel.fromMap(Map<String, dynamic> map) {
    return ArticleModel(
      title: map['title'] != null ? map['title'] as String : null,
      author: map['author'] != null ? map['author'] as String : null,
      year: map['year'] != null ? map['year'] as String : null,
      url: map['url'] != null ? map['url'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ArticleModel.fromJson(String source) =>
      ArticleModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ArticleModel(title: $title, author: $author, year: $year, url: $url)';
  }

  @override
  bool operator ==(covariant ArticleModel other) {
    if (identical(this, other)) return true;

    return other.title == title &&
        other.author == author &&
        other.year == year &&
        other.url == url;
  }

  @override
  int get hashCode {
    return title.hashCode ^ author.hashCode ^ year.hashCode ^ url.hashCode;
  }
}

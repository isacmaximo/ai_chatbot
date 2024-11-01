// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:ai_chatbot/app/models/article_model.dart';
import 'package:ai_chatbot/app/models/book_model.dart';
import 'package:ai_chatbot/app/models/website_model.dart';

class SearchResultModel {
  String? summary;
  List<BookModel>? books;
  List<ArticleModel>? articles;
  List<WebsiteModel>? websites;

  SearchResultModel({
    this.summary,
    this.books,
    this.articles,
    this.websites,
  });

  SearchResultModel copyWith({
    String? summary,
    List<BookModel>? books,
    List<ArticleModel>? articles,
    List<WebsiteModel>? websites,
  }) {
    return SearchResultModel(
      summary: summary ?? this.summary,
      books: books ?? this.books,
      articles: articles ?? this.articles,
      websites: websites ?? this.websites,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'summary': summary,
      'books': books?.map((x) => x.toMap()).toList(),
      'articles': articles?.map((x) => x.toMap()).toList(),
      'websites': websites?.map((x) => x.toMap()).toList(),
    };
  }

  factory SearchResultModel.fromMap(Map<String, dynamic> map) {
    return SearchResultModel(
      summary: map['summary'] != null ? map['summary'] as String : null,
      books: map['books'] != null
          ? List<BookModel>.from(
              (map['books'] as List<int>).map<BookModel?>(
                (x) => BookModel.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      articles: map['articles'] != null
          ? List<ArticleModel>.from(
              (map['articles'] as List<int>).map<ArticleModel?>(
                (x) => ArticleModel.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      websites: map['websites'] != null
          ? List<WebsiteModel>.from(
              (map['websites'] as List<int>).map<WebsiteModel?>(
                (x) => WebsiteModel.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SearchResultModel.fromJson(String source) =>
      SearchResultModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'SearchResultModel(summary: $summary, books: $books, articles: $articles, websites: $websites)';
  }

  @override
  bool operator ==(covariant SearchResultModel other) {
    if (identical(this, other)) return true;

    return other.summary == summary &&
        listEquals(other.books, books) &&
        listEquals(other.articles, articles) &&
        listEquals(other.websites, websites);
  }

  @override
  int get hashCode {
    return summary.hashCode ^
        books.hashCode ^
        articles.hashCode ^
        websites.hashCode;
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class WebsiteModel {
  String? name;
  String? url;

  WebsiteModel({
    this.name,
    this.url,
  });

  WebsiteModel copyWith({
    String? name,
    String? url,
  }) {
    return WebsiteModel(
      name: name ?? this.name,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'url': url,
    };
  }

  factory WebsiteModel.fromMap(Map<String, dynamic> map) {
    return WebsiteModel(
      name: map['name'] != null ? map['name'] as String : null,
      url: map['url'] != null ? map['url'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory WebsiteModel.fromJson(String source) =>
      WebsiteModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'WebsiteModel(name: $name, url: $url)';

  @override
  bool operator ==(covariant WebsiteModel other) {
    if (identical(this, other)) return true;

    return other.name == name && other.url == url;
  }

  @override
  int get hashCode => name.hashCode ^ url.hashCode;
}

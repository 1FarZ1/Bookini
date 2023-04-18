import 'dart:convert';

import 'package:equatable/equatable.dart';

class SearchInfo extends Equatable {
  final String? textSnippet;

  const SearchInfo({this.textSnippet});

  factory SearchInfo.fromMap(Map<String, dynamic> data) => SearchInfo(
        textSnippet: data['textSnippet'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'textSnippet': textSnippet,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [SearchInfo].
  factory SearchInfo.fromJson(String data) {
    return SearchInfo.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [SearchInfo] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props => [textSnippet];
}

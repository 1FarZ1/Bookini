import 'dart:convert';

import 'package:equatable/equatable.dart';

class IndustryIdentifier extends Equatable {
  final String? type;
  final String? identifier;

  const IndustryIdentifier({this.type, this.identifier});

  factory IndustryIdentifier.fromMap(Map<String, dynamic> data) {
    return IndustryIdentifier(
      type: data['type'] as String?,
      identifier: data['identifier'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {
        'type': type,
        'identifier': identifier,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [IndustryIdentifier].
  factory IndustryIdentifier.fromJson(String data) {
    return IndustryIdentifier.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [IndustryIdentifier] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props => [type, identifier];
}

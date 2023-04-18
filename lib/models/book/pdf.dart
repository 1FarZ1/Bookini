import 'dart:convert';

import 'package:equatable/equatable.dart';

class Pdf extends Equatable {
  final bool? isAvailable;
  final String? acsTokenLink;

  const Pdf({this.isAvailable, this.acsTokenLink});

  factory Pdf.fromMap(Map<String, dynamic> data) => Pdf(
        isAvailable: data['isAvailable'] as bool?,
        acsTokenLink: data['acsTokenLink'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'isAvailable': isAvailable,
        'acsTokenLink': acsTokenLink,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Pdf].
  factory Pdf.fromJson(String data) {
    return Pdf.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Pdf] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props => [isAvailable, acsTokenLink];
}

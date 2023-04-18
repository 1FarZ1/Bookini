import 'dart:convert';

import 'package:equatable/equatable.dart';

class ReadingModes extends Equatable {
  final bool? text;
  final bool? image;

  const ReadingModes({this.text, this.image});

  factory ReadingModes.fromMap(Map<String, dynamic> data) => ReadingModes(
        text: data['text'] as bool?,
        image: data['image'] as bool?,
      );

  Map<String, dynamic> toMap() => {
        'text': text,
        'image': image,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ReadingModes].
  factory ReadingModes.fromJson(String data) {
    return ReadingModes.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [ReadingModes] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props => [text, image];
}

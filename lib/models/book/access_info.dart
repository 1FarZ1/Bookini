import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'epub.dart';
import 'pdf.dart';

class AccessInfo extends Equatable {
  final String? country;
  final String? viewability;
  final bool? embeddable;
  final bool? publicDomain;
  final String? textToSpeechPermission;
  final Epub? epub;
  final Pdf? pdf;
  final String? webReaderLink;
  final String? accessViewStatus;
  final bool? quoteSharingAllowed;

  const AccessInfo({
    this.country,
    this.viewability,
    this.embeddable,
    this.publicDomain,
    this.textToSpeechPermission,
    this.epub,
    this.pdf,
    this.webReaderLink,
    this.accessViewStatus,
    this.quoteSharingAllowed,
  });

  factory AccessInfo.fromMap(Map<String, dynamic> data) => AccessInfo(
        country: data['country'] as String?,
        viewability: data['viewability'] as String?,
        embeddable: data['embeddable'] as bool?,
        publicDomain: data['publicDomain'] as bool?,
        textToSpeechPermission: data['textToSpeechPermission'] as String?,
        epub: data['epub'] == null
            ? null
            : Epub.fromMap(data['epub'] as Map<String, dynamic>),
        pdf: data['pdf'] == null
            ? null
            : Pdf.fromMap(data['pdf'] as Map<String, dynamic>),
        webReaderLink: data['webReaderLink'] as String?,
        accessViewStatus: data['accessViewStatus'] as String?,
        quoteSharingAllowed: data['quoteSharingAllowed'] as bool?,
      );

  Map<String, dynamic> toMap() => {
        'country': country,
        'viewability': viewability,
        'embeddable': embeddable,
        'publicDomain': publicDomain,
        'textToSpeechPermission': textToSpeechPermission,
        'epub': epub?.toMap(),
        'pdf': pdf?.toMap(),
        'webReaderLink': webReaderLink,
        'accessViewStatus': accessViewStatus,
        'quoteSharingAllowed': quoteSharingAllowed,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [AccessInfo].
  factory AccessInfo.fromJson(String data) {
    return AccessInfo.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [AccessInfo] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props {
    return [
      country,
      viewability,
      embeddable,
      publicDomain,
      textToSpeechPermission,
      epub,
      pdf,
      webReaderLink,
      accessViewStatus,
      quoteSharingAllowed,
    ];
  }
}

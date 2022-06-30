import 'dart:convert';

AddElement addElementmodelfromjson(String str) =>
    AddElement.fromjson(json.decode(str));

String addElementTojson(AddElement data) => json.encode(data.tojson());

class AddElement {
  String masterid;
  String mediatype;
  String media;
  String position;

  AddElement({
    this.masterid = '',
    this.mediatype = '',
    this.media = '',
    this.position = '',
  });

  factory AddElement.fromjson(Map<String, dynamic> json) => AddElement(
        masterid: json['master_id'] ?? '',
        mediatype: json['media_type'] ?? '',
        media: json['media'] ?? '',
        position: json['position'] ?? '',
      );

  Map<String, dynamic> tojson() => {
        'master_id': masterid,
        'media_type': mediatype,
        'media': media,
        'position': position,
      };
}

import 'dart:convert';

QuoteTitle findmasteridFromjson(String str) =>
    QuoteTitle.fromjson(json.decode(str));

class QuoteTitle {
  String masterid;
  int s;
  String msg;

  QuoteTitle({
    this.masterid = '',
    this.s = 0,
    this.msg = '',
  });
  factory QuoteTitle.fromjson(Map<String, dynamic> json) => QuoteTitle(
        masterid: json['r'],
        s: json['s'],
        msg: json['m'],
      );
}

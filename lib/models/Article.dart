import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:html_editor_enhanced/html_editor.dart';

class Article {
  int? index;
  int type;
  String? hintText;
  int? maxlines;
  bool? isreadonly;
  IconButton? btn;
  Uint8List? media;
  TextEditingController? controller;
  HtmlEditorController htmlEditorController;

  Article(
    this.index,
    this.type,
    this.hintText,
    this.maxlines,
    this.isreadonly,
    this.btn,
    this.media,
    this.controller,
    this.htmlEditorController,
  );
}

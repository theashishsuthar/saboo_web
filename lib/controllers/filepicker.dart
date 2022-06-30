import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';

import 'package:get/get.dart';
import 'package:saboo_web/models/Article.dart';


class FilePickerController extends GetxController {
  String fileName = '';
  String fileSize = '';
 
 List<Article> articlelist = [];
  Future<Uint8List> pickImage() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.image,
      withData: true,
    );
    if (result != null) {

      final image = result.files.single.bytes!;
      fileName = result.files.single.name;
      fileSize =
          '${((result.files.single.size) / 1024 / 1024).toStringAsFixed(2)} MB';
      
      
    

      return image;
    } else {
      print('No files are selected');
    }
    return Uint8List(0);
  }

  Future<Uint8List> pickVideo() async {
    final result = await FilePicker.platform.pickFiles(type: FileType.video);
    if (result != null) {
      Uint8List? video = result.files.single.bytes;
      fileName = result.files.single.name;
      fileSize =
          '${((result.files.single.size) / 1024 / 1024).toStringAsFixed(2)} MB';

      return video!;
    }
    return Uint8List(0);
  }
}

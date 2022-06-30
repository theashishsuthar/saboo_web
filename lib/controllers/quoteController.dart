import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:saboo_web/credential/credential.dart';
import 'package:saboo_web/models/elementModel.dart';
import 'package:saboo_web/models/quoteTitleModel.dart';
import 'package:saboo_web/widgets/logger.dart';

class QuoteController extends GetxController {
  RxString masterid = ''.obs;
  Future<void> addTitle(String title, String level) async {
    try {
      String url = 'https://saboo.io/public/api/quote/master/add';
      var response = await http.post(Uri.parse(url), headers: {
        'Accept': 'application/json',
        'apikey': apiKey,
        'token': token,
      }, body: <String, dynamic>{
        'title': title,
        'level': level,
      });

      if (response.statusCode == 200) {
        final result = findmasteridFromjson(response.body);
        //logger.i(result.msg);
        log(result.masterid);
        // logger.i(result.masterid);
        masterid.value = result.masterid;
        logger.i('Successfully stored Title');
      } else {
        logger.e('An Error Has occured');
      }
    } catch (e) {
      logger.e(
        e.toString(),
      );
    }
  }
  ////////////////////////////////////
  ///***************************** */

///////___________FOR_ADD_ELEMENT____//////
  ///*********************************** */

  void addElement(String masterid, String mediatype, String position,
      String imagePath) async {
    try {
      String url = 'https://saboo.io/public/api/quote/element/add';

      var request = http.MultipartRequest('POST', Uri.parse(url))
        ..fields['master_id'] = masterid
        ..fields['media_type'] = mediatype
        ..fields['position'] = position
        ..files.add(await http.MultipartFile.fromPath(
          'file',
          imagePath,
        ));

      request.send();

      // , headers: <String, String>{
      //   'Accept': 'application/json',
      //   'apikey': apiKey,
      //   'token': token,
      // }, body: <String, dynamic>{
      //   'master_id': masterid,
      //   'media_type': mediatype,
      //   'media': media,
      //   'position': position,
      // });

      // if (response.statusCode == 200) {
      //   logger.i('SUCCESS');
      //   var result = response.body;
      //   logger.i(jsonDecode(result));
      // } else {
      //   logger.e('Error Avi bhai');
      // }
    } catch (e) {
      logger.e(e.toString());
    }
  }
}

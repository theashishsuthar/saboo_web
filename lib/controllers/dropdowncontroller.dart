import 'package:get/get.dart';

class DropdownController extends GetxController {
  final selected = ''.obs;
  List<String> titlelevelList = [
    '1',
    '2',
    '3',
  ];

  void setselected(String level){
  selected.value = level;
  }
}

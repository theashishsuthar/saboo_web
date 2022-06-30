import 'dart:typed_data';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:html_editor_enhanced/html_editor.dart';
import 'package:logger/logger.dart';
import 'package:oktoast/oktoast.dart';
import 'package:saboo_web/controllers/filepicker.dart';
import 'package:saboo_web/controllers/quoteController.dart';
import 'package:saboo_web/models/Article.dart';
import 'package:saboo_web/models/elementModel.dart';
import 'package:saboo_web/widgets/side_navigation.dart';
import '../controllers/dropdowncontroller.dart';
import '../textstyle/textstyle.dart';
import '../widgets/logger.dart';

class AddArticleScreen extends StatefulWidget {
  const AddArticleScreen({Key? key}) : super(key: key);

  @override
  State<AddArticleScreen> createState() => _AddArticleScreenState();
}

class _AddArticleScreenState extends State<AddArticleScreen> {
  //getx controller
  final dropdowncontroller = Get.find<DropdownController>();
  final quoteController = Get.find<QuoteController>();
//textControllers
  List<Article> articlelist = [];
  final TextEditingController titleController = TextEditingController();
  final TextEditingController titleLevelController = TextEditingController();

  List dropdownitems = [
    'Description',
    'Image',
    'Video',
  ];

  Uint8List? mediaimage;

  Uint8List? mediavideo;

  @override
  Widget build(BuildContext context) {
    final size = Get.size;
    final filepickerController = Get.find<FilePickerController>();
    var outlineInputBorder = OutlineInputBorder(
      borderSide:
          BorderSide(color: themecolor, width: 2.0, style: BorderStyle.solid),
      borderRadius: BorderRadius.circular(10),
    );
    String? fieldtype;

    return OKToast(
      position: ToastPosition.bottom,
      backgroundColor: Colors.red,
      duration: const Duration(seconds: 1),
      child: GetBuilder<QuoteController>(builder: (quoteController) {
        return Scaffold(
          backgroundColor: Colors.grey[300],
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            iconTheme: const IconThemeData(color: Colors.white),
            backgroundColor: const Color.fromRGBO(82, 41, 171, 1),
            title: const Text(
              'Add Article ',
              textAlign: TextAlign.center,
            ),
          ),
          drawer: SideNavigation(size: size),
          body: Container(
            height: size.height,
            width: size.width,
            padding: const EdgeInsets.all(20),
            margin: EdgeInsets.symmetric(
              horizontal: size.width * 0.05,
              vertical: size.height * 0.02,
            ),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(16)),
            child: SingleChildScrollView(
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    DropdownButtonHideUnderline(
                      child: DropdownButton(
                        hint: const Text(
                          'Add Element',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        enableFeedback: false,
                        borderRadius: BorderRadius.circular(10),
                        alignment: Alignment.center,
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        value: fieldtype,
                        items: dropdownitems.map((field) {
                          return DropdownMenuItem(
                            value: field,
                            child: Text(
                              field,
                            ),
                          );
                        }).toList(),
                        onChanged: (val) {
                          setState(() {
                            fieldtype = val as String?;

                            if (fieldtype == 'Description') {
                              articlelist.add(
                                Article(
                                  1,
                                  'Enter Description',
                                  4,
                                  false,
                                  const IconButton(
                                    onPressed: null,
                                    icon: Icon(
                                      Icons.abc,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Uint8List(0),
                                  TextEditingController(),
                                  HtmlEditorController(),
                                ),
                              );

                              // logger.i(quoteController.masterid.value);

                              return;
                            }
                            if (fieldtype == 'Image') {
                              articlelist.add(
                                Article(
                                  2,
                                  'Select Image',
                                  1,
                                  true,
                                  IconButton(
                                    onPressed: () async {
                                      var image = await filepickerController
                                          .pickImage();
                                      setState(() {
                                        mediaimage = image;
                                      });
                                    },
                                    icon: const Icon(
                                      Icons.link,
                                      color: Colors.purple,
                                    ),
                                  ),
                                  mediaimage,
                                  TextEditingController(),
                                  HtmlEditorController(),
                                ),
                              );

                              return;
                            }
                            if (fieldtype == 'Video') {
                              articlelist.add(
                                Article(
                                  3,
                                  'Pick Video',
                                  1,
                                  true,
                                  IconButton(
                                    icon: Icon(
                                      Icons.link,
                                      color: themecolor,
                                    ),
                                    onPressed: () async {
                                      var video = await filepickerController
                                          .pickVideo();
                                      setState(() {
                                        mediavideo = video;
                                      });
                                    },
                                  ),
                                  mediavideo,
                                  TextEditingController(),
                                  HtmlEditorController(),
                                ),
                              );

                              return;
                            }
                          });
                        },
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          articlelist.clear();
                        });
                      },
                      icon: const Icon(
                        Icons.refresh,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        children: [
                          Flexible(
                            fit: FlexFit.tight,
                            child: Container(
                              margin: const EdgeInsets.only(right: 5),
                              width: size.width * 0.1,
                              child: TextField(
                                controller: titleLevelController,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  hintText: 'Enter Level',
                                  labelText: 'Level',
                                  border: outlineInputBorder,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 6,
                            child: TextField(
                              controller: titleController,
                              decoration: InputDecoration(
                                hintText: 'Enter Title',
                                border: outlineInputBorder,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ReorderableListView.builder(
                      itemCount: articlelist.length,
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(10),
                      onReorder: (oldIndex, newIndex) {
                        setState(() {
                          final index =
                              newIndex > oldIndex ? newIndex - 1 : newIndex;
                          final textformfield = articlelist.removeAt(oldIndex);
                          articlelist.insert(index, textformfield);
                        });
                      },
                      itemBuilder: (context, index) {
                        return Container(
                          key: ValueKey(index.toString()),
                          padding: const EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 20,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    if (articlelist[index].type == 1)
                                      Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black54, width: 1),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: HtmlEditor(
                                          htmlToolbarOptions:
                                              const HtmlToolbarOptions(
                                            toolbarItemHeight: 40,
                                          ),
                                          controller: articlelist[index]
                                              .htmlEditorController,
                                          otherOptions: OtherOptions(
                                            height: size.height * 0.35,
                                          ),
                                          htmlEditorOptions:
                                              const HtmlEditorOptions(
                                            autoAdjustHeight: false,
                                            hint: 'Enter Description Here...',
                                          ),
                                        ),
                                      ),
                                    if (articlelist[index].type != 1 &&
                                        articlelist[index].media != null)
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        height: size.height * 0.2,
                                        width: size.width * 0.1,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                          15,
                                        )),
                                        child: articlelist[index].media == null
                                            ? Text('Select File')
                                            : Image.memory(
                                                articlelist[index].media!),
                                      ),
                                    if (articlelist[index].type != 1)
                                      TextField(
                                        readOnly:
                                            articlelist[index].isreadonly!,
                                        maxLines: articlelist[index].maxlines,
                                        decoration: InputDecoration(
                                          prefixIcon: articlelist[index].btn,
                                          hintText: articlelist[index].hintText,
                                          border: outlineInputBorder,
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              //delete button
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    articlelist.removeAt(index);
                                  });
                                },
                                icon: const Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: themecolor,
                        fixedSize: const Size(100, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () async {
                        if (titleController.text.isEmpty) {
                          showToast('Title Can\'t be Empty ');
                          return;
                        }
                        if (titleLevelController.text.isEmpty) {
                          showToast('Enter Title Level');
                          return;
                        }
                        quoteController.addTitle(
                          titleController.text,
                          titleLevelController.text,
                        );
                        quoteController.update();


                        for (var i = 0; i < articlelist.length; i++) {
                          quoteController.addElement(
                            quoteController.masterid.value,
                            articlelist[i].type == 1 ? '1' : '2',
                            '$i',
                            articlelist[i].type == 1
                                ? await articlelist[i]
                                    .htmlEditorController
                                    .getText()
                                : 'Hello',
                          );
                        }

                        // quoteController.addElement(
                        //   quoteController.masterid.value,
                        //   '1',
                        //   '1',
                        //   titleController.text,
                        // );
                      },
                      child: const Text('Upload'),
                    ),
                  ]),
                ),
              ]),
            ),
          ),
        );
      }),
    );
  }
}

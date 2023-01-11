import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:adil/helper/data_fetch.dart';
import 'package:adil/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:signature/signature.dart';

class InspectionVerifyScreen extends StatefulWidget {
  var reportid;

  var value;

  var name;

  var remarks;

  InspectionVerifyScreen(
      {Key? key,
      required this.reportid,
      required this.value,
      required this.remarks,
      required this.name})
      : super(key: key);

  @override
  State<InspectionVerifyScreen> createState() => _InspectionVerifyScreenState();
}

class _InspectionVerifyScreenState extends State<InspectionVerifyScreen> {
  SignatureController signController = SignatureController();
  SignatureController signyourController = SignatureController();
  TextEditingController nameController = TextEditingController();

  TextEditingController image1Controller = TextEditingController();
  TextEditingController image2Controller = TextEditingController();
  TextEditingController image3Controller = TextEditingController();
  TextEditingController image4Controller = TextEditingController();
  String image1 = "";
  String image2 = "";
  String image3 = "";
  String image4 = "";
  String contractorsign = "";
  String engineersign = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.indigo.shade50,

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          GestureDetector(
                            onTap: () async {
                              final XFile? image = await ImagePicker()
                                  .pickImage(
                                      source: ImageSource.camera,
                                      maxWidth: 200,
                                      maxHeight: 300);
                              setState(() {
                                image1 = image!.path;
                              });
                            },
                            child: image1 == ""
                                ? Container(
                                    height: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.camera_alt_outlined,
                                          size: 40,
                                          color: Colors.indigo.shade900,
                                        ),
                                      ],
                                    ))
                                : Container(
                                    height: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                    ),
                                    child: Image.file(
                                      new File(image1),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            // maxLines: 5,
                            // minLines: 3,
                            // validator: phoneValidator,
                            keyboardType: TextInputType.text,
                            cursorColor: Colors.green,
                            controller: image1Controller,
                            onChanged: (text) {
                              // mobileNumber = value;
                            },
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: EdgeInsets.all(10),
                              focusColor: Colors.greenAccent,
                              // labelStyle: ktext14,
                              // labelText: "",

                              labelStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  )),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          GestureDetector(
                            onTap: () async {
                              final XFile? image = await ImagePicker()
                                  .pickImage(
                                      source: ImageSource.camera,
                                      maxWidth: 200,
                                      maxHeight: 300);
                              setState(() {
                                image2 = image!.path;
                              });
                            },
                            child: image2 == ""
                                ? Container(
                                    height: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.camera_alt_outlined,
                                          size: 40,
                                          color: Colors.indigo.shade900,
                                        ),
                                      ],
                                    ))
                                : Container(
                                    height: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                    ),
                                    child: Image.file(
                                      new File(image2),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            // maxLines: 5,
                            // minLines: 3,
                            // validator: phoneValidator,
                            keyboardType: TextInputType.text,
                            cursorColor: Colors.green,
                            controller: image2Controller,
                            onChanged: (text) {
                              // mobileNumber = value;
                            },
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: EdgeInsets.all(10),
                              focusColor: Colors.greenAccent,
                              // labelStyle: ktext14,
                              // labelText: "",

                              labelStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  )),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          GestureDetector(
                            onTap: () async {
                              final XFile? image = await ImagePicker()
                                  .pickImage(
                                      source: ImageSource.camera,
                                      maxWidth: 200,
                                      maxHeight: 300);
                              setState(() {
                                image3 = image!.path;
                              });
                            },
                            child: image3 == ""
                                ? Container(
                                    height: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.camera_alt_outlined,
                                          size: 40,
                                          color: Colors.indigo.shade900,
                                        ),
                                      ],
                                    ))
                                : Container(
                                    height: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                    ),
                                    child: Image.file(
                                      new File(image3),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            // maxLines: 5,
                            // minLines: 3,
                            // validator: phoneValidator,
                            keyboardType: TextInputType.text,
                            cursorColor: Colors.green,
                            controller: image3Controller,
                            onChanged: (text) {
                              // mobileNumber = value;
                            },
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: EdgeInsets.all(10),
                              focusColor: Colors.greenAccent,
                              // labelStyle: ktext14,
                              // labelText: "",

                              labelStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  )),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          GestureDetector(
                            onTap: () async {
                              final XFile? image = await ImagePicker()
                                  .pickImage(
                                      source: ImageSource.camera,
                                      maxWidth: 200,
                                      maxHeight: 300);
                              setState(() {
                                image4 = image!.path;
                              });
                            },
                            child: image4 == ""
                                ? Container(
                                    height: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.camera_alt_outlined,
                                          size: 40,
                                          color: Colors.indigo.shade900,
                                        ),
                                      ],
                                    ))
                                : Container(
                                    height: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                    ),
                                    child: Image.file(
                                      new File(image4),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            // maxLines: 5,
                            // minLines: 3,
                            // validator: phoneValidator,
                            keyboardType: TextInputType.text,
                            cursorColor: Colors.green,
                            controller: image4Controller,
                            onChanged: (text) {
                              // mobileNumber = value;
                            },
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: EdgeInsets.all(10),
                              focusColor: Colors.greenAccent,
                              // labelStyle: ktext14,
                              // labelText: "",

                              labelStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  )),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 30,
              ),
              Text("Contractor Name :  ${widget.name}"),

              SizedBox(
                height: 20,
              ),

              Text("Contractor Signature"),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: 200,
                child: Signature(
                  controller: signController,
                  width: 200,
                  height: 200,
                  backgroundColor: Colors.white,
                ),
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () async {
                      if (signController.isNotEmpty) {
                        final Uint8List? data =
                            await signController.toPngBytes();
                        if (data != null) {
                          final base641 = base64Encode(data);
                          print(base641);
                          final encodedStr = base641;
                          Uint8List bytes = base64.decode(encodedStr);
                          String dir =
                              (await getApplicationDocumentsDirectory()).path;
                          File file = File("$dir/" +
                              DateTime.now().millisecondsSinceEpoch.toString() +
                              ".pdf");
                          await file.writeAsBytes(bytes);
                          print(file.path);
                          setState(() {
                            contractorsign = file.path;
                          });
                        }
                      }
                    },
                    child: Container(
                      height: 30,
                      width: 90,
                      child: Center(child: Text("Save")),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      signController.clear();
                    },
                    child: Container(
                      height: 30,
                      width: 90,
                      child: Center(child: Text("cancel")),
                    ),
                  )
                ],
              ),

              // Container(
              //   width: 200,
              //   child: TextFormField(
              //     // maxLines: 5,
              //     // minLines: 3,
              //     // validator: phoneValidator,
              //     keyboardType: TextInputType.text,
              //     cursorColor: Colors.green,
              //     // controller: lastNameController,
              //     onChanged: (text) {
              //       // mobileNumber = value;
              //     },
              //     decoration: InputDecoration(
              //       filled: true,
              //       fillColor: Colors.white,
              //       contentPadding: EdgeInsets.all(10),
              //       focusColor: Colors.greenAccent,
              //       // labelStyle: ktext14,
              //       labelText: "Sign Here",
              //
              //       labelStyle: TextStyle(
              //         color: Colors.grey,
              //         fontSize: 12,
              //       ),
              //       focusedBorder: OutlineInputBorder(
              //           borderRadius: BorderRadius.all(Radius.circular(10.0)),
              //           borderSide: BorderSide(
              //             color: Colors.grey,
              //           )),
              //       border: OutlineInputBorder(
              //           borderRadius: BorderRadius.all(Radius.circular(10.0)),
              //           borderSide: BorderSide(
              //             color: Colors.grey,
              //           )),
              //     ),
              //   ),
              // ),

              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Add Your Signature"),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 200,
                            width: 200,
                            child: Signature(
                              controller: signyourController,
                              width: 200,
                              height: 200,
                              backgroundColor: Colors.white,
                            ),
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () async {
                                  if (signyourController.isNotEmpty) {
                                    final Uint8List? data =
                                        await signyourController.toPngBytes();
                                    if (data != null) {
                                      final base641 = base64Encode(data);
                                      print(base641);
                                      final encodedStr = base641;
                                      Uint8List bytes =
                                          base64.decode(encodedStr);
                                      String dir =
                                          (await getApplicationDocumentsDirectory())
                                              .path;
                                      File file = File("$dir/" +
                                          DateTime.now()
                                              .millisecondsSinceEpoch
                                              .toString() +
                                          ".pdf");
                                      await file.writeAsBytes(bytes);
                                      print(file.path);
                                      setState(() {
                                        engineersign = file.path;
                                      });
                                    }
                                  }
                                },
                                child: Container(
                                  height: 30,
                                  width: 90,
                                  child: Center(child: Text("Save")),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  signyourController.clear();
                                },
                                child: Container(
                                  height: 30,
                                  width: 90,
                                  child: Center(child: Text("cancel")),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 45,
                    width: 170,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        widget.value == "Primarily Work"
                            ? DataFetch()
                                .saveInspection(
                                    widget.reportid.toString(),
                                    nameController.text,
                                    image1,
                                    image2,
                                    engineersign,
                                    contractorsign,
                                    widget.remarks,
                                    image3,
                                    image4,
                                    image1Controller.text,
                                    image2Controller.text,
                                    image3Controller.text,
                                    image4Controller.text,
                                    context)
                                .then((value) => {
                                      if (value)
                                        {
                                          Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      HomeScreen()),
                                              (route) => false),
                                        }
                                    })
                            : widget.value == "Sub-Structure"
                                ? DataFetch()
                                    .saveInspection2(
                                        widget.reportid.toString(),
                                        nameController.text,
                                        image1,
                                        image2,
                                        engineersign,
                                        contractorsign,
                                        widget.remarks,
                                        image3,
                                        image4,
                                        image1Controller.text,
                                        image2Controller.text,
                                        image3Controller.text,
                                        image4Controller.text,
                                        context)
                                    .then((value) => {
                                          if (value)
                                            {
                                              Navigator.pushAndRemoveUntil(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          HomeScreen()),
                                                  (route) => false),
                                            }
                                        })
                                : widget.value == "Super-Structure"
                                    ? DataFetch()
                                        .saveInspection3(
                                            widget.reportid.toString(),
                                            nameController.text,
                                            image1,
                                            image2,
                                            engineersign,
                                            contractorsign,
                                            widget.remarks,
                                            image3,
                                            image4,
                                            image1Controller.text,
                                            image2Controller.text,
                                            image3Controller.text,
                                            image4Controller.text,
                                            context)
                                        .then((value) => {
                                              if (value)
                                                {
                                                  Navigator.pushAndRemoveUntil(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              HomeScreen()),
                                                      (route) => false),
                                                }
                                            })
                                    : DataFetch()
                                        .saveInspection4(
                                            widget.reportid.toString(),
                                            nameController.text,
                                            image1,
                                            image2,
                                            engineersign,
                                            contractorsign,
                                            widget.remarks,
                                            image3,
                                            image4,
                                            image1Controller.text,
                                            image2Controller.text,
                                            image3Controller.text,
                                            image4Controller.text,
                                            context)
                                        .then((value) => {
                                              if (value)
                                                {
                                                  Navigator.pushAndRemoveUntil(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              HomeScreen()),
                                                      (route) => false),
                                                }
                                            });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo.shade900,
                      ),
                      child: Text(
                        "Save",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

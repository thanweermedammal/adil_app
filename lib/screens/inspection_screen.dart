import 'package:adil/helper/data_fetch.dart';
import 'package:adil/helper/model/project_model.dart';
import 'package:adil/screens/inspectiondetails_screen.dart';
import 'package:adil/screens/inspectionfirstscreen.dart';
import 'package:flutter/material.dart';

class InspectionScreen extends StatefulWidget {
  const InspectionScreen({Key? key}) : super(key: key);

  @override
  State<InspectionScreen> createState() => _InspectionScreenState();
}

class _InspectionScreenState extends State<InspectionScreen> {
  Future<ProjectsData>? fetchProject;
  String prjName = "";
  bool nameTap = false;
  bool name1Tap = false;
  String prjid = "";
  int id = 0;
  String selectedValue = "Primarily Work";
  TextEditingController reasonController = TextEditingController();
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Primarily Work"), value: "Primarily Work"),
      DropdownMenuItem(child: Text("Sub-Structure"), value: "Sub-Structure"),
      DropdownMenuItem(
          child: Text("Super-Structure"), value: "Super-Structure"),
      DropdownMenuItem(
          child: Text("Finishing & MEP"), value: "Finishing & MEP"),
    ];
    return menuItems;
  }

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    fetchProject = DataFetch().fetchProject();
  }

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
        title: Text(
          "INSPECTION",
          style: TextStyle(color: Colors.indigo.shade900),
        ),
      ),
      body: SingleChildScrollView(
          child: FutureBuilder<ProjectsData>(
        future: fetchProject,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey.shade200),
                        child: Icon(
                          Icons.engineering_outlined,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey),
                                color: Colors.white),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  dropdownColor: Colors.white,
                                  isExpanded: true,
                                  value: selectedValue,
                                  items: dropdownItems,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedValue = value.toString();
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                          // child: TextFormField(
                          //   // validator: phoneValidator,
                          //   keyboardType: TextInputType.text,
                          //   cursorColor: Colors.green,
                          //   // controller: lastNameController,
                          //   onChanged: (text) {
                          //     // mobileNumber = value;
                          //   },
                          //   decoration: InputDecoration(
                          //     filled: true,
                          //     fillColor: Colors.white,
                          //     contentPadding: EdgeInsets.all(10),
                          //     focusColor: Colors.greenAccent,
                          //     // labelStyle: ktext14,
                          //     labelText: "Primary Work",
                          //     suffixIcon: Icon(Icons.unfold_more),
                          //     labelStyle: TextStyle(
                          //       color: Colors.grey,
                          //       fontSize: 12,
                          //     ),
                          //     focusedBorder: OutlineInputBorder(
                          //         borderRadius:
                          //             BorderRadius.all(Radius.circular(10.0)),
                          //         borderSide: BorderSide(
                          //           color: Colors.grey,
                          //         )),
                          //     border: OutlineInputBorder(
                          //         borderRadius:
                          //             BorderRadius.all(Radius.circular(10.0)),
                          //         borderSide: BorderSide(
                          //           color: Colors.grey,
                          //         )),
                          //   ),
                          // ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      'Inspection Subject',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey.shade200),
                        child: Icon(
                          Icons.subject,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextFormField(
                            // maxLines: 5,
                            // minLines: 3,
                            // validator: phoneValidator,
                            keyboardType: TextInputType.text,
                            cursorColor: Colors.green,
                            controller: reasonController,
                            onChanged: (text) {
                              // mobileNumber = value;
                            },
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: EdgeInsets.all(10),
                              focusColor: Colors.greenAccent,
                              // labelStyle: ktext14,
                              labelText: "Subject",

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
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      'Selected Project Id',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey.shade200),
                        child: Icon(
                          Icons.home_outlined,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                name1Tap = true;
                                prjid = "";
                              });
                            },
                            child: Container(
                              height: name1Tap == true
                                  ? prjid == ""
                                      ? 200
                                      : 50
                                  : 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.grey),
                                  color: Colors.white),
                              child: prjid == ""
                                  ? name1Tap == true
                                      ? Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ListView.builder(
                                              itemCount: snapshot
                                                  .data!.projects!.length,
                                              itemBuilder: (context, index) =>
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 10.0,
                                                        vertical: 6),
                                                    child: Column(
                                                      children: [
                                                        InkWell(
                                                          onTap: () {
                                                            setState(() {
                                                              prjName = snapshot
                                                                  .data!
                                                                  .projects![
                                                                      index]
                                                                  .name
                                                                  .toString();
                                                              prjid = snapshot
                                                                  .data!
                                                                  .projects![
                                                                      index]
                                                                  .projectId
                                                                  .toString();
                                                              id = snapshot
                                                                  .data!
                                                                  .projects![
                                                                      index]
                                                                  .id!;
                                                            });
                                                          },
                                                          child: Text(snapshot
                                                              .data!
                                                              .projects![index]
                                                              .projectId
                                                              .toString()),
                                                        ),
                                                        Divider(),
                                                      ],
                                                    ),
                                                  )),
                                        )
                                      : Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0, vertical: 15),
                                          child: Text(
                                            'select id',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        )
                                  : Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10.0, vertical: 15),
                                      child: Text(
                                        prjid.toString(),
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      'Selected Project Name',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey.shade200),
                        child: Icon(
                          Icons.construction_outlined,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                nameTap = true;
                                prjName = "";
                              });
                            },
                            child: Container(
                              height: nameTap == true
                                  ? prjName == ""
                                      ? 200
                                      : 50
                                  : 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.grey),
                                  color: Colors.white),
                              child: prjName == ""
                                  ? nameTap == true
                                      ? Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ListView.builder(
                                              itemCount: snapshot
                                                  .data!.projects!.length,
                                              itemBuilder: (context, index) =>
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 10.0,
                                                        vertical: 6),
                                                    child: Column(
                                                      children: [
                                                        InkWell(
                                                          onTap: () {
                                                            setState(() {
                                                              id = snapshot
                                                                  .data!
                                                                  .projects![
                                                                      index]
                                                                  .id!;
                                                              prjName = snapshot
                                                                  .data!
                                                                  .projects![
                                                                      index]
                                                                  .name
                                                                  .toString();
                                                              prjid = snapshot
                                                                  .data!
                                                                  .projects![
                                                                      index]
                                                                  .projectId
                                                                  .toString();
                                                            });
                                                          },
                                                          child: Text(snapshot
                                                              .data!
                                                              .projects![index]
                                                              .name
                                                              .toString()),
                                                        ),
                                                        Divider(),
                                                      ],
                                                    ),
                                                  )),
                                        )
                                      : Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0, vertical: 15),
                                          child: Text(
                                            'select name',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        )
                                  : Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10.0, vertical: 15),
                                      child: Text(
                                        prjName,
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                            ),
                          ),
                        ),
                        // child: Padding(
                        //   padding: const EdgeInsets.all(8.0),
                        //   child: TextFormField(
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
                        //       // labelText: "Type here",
                        //
                        //       labelStyle: TextStyle(
                        //         color: Colors.grey,
                        //         fontSize: 12,
                        //       ),
                        //       focusedBorder: OutlineInputBorder(
                        //           borderRadius:
                        //               BorderRadius.all(Radius.circular(10.0)),
                        //           borderSide: BorderSide(
                        //             color: Colors.grey,
                        //           )),
                        //       border: OutlineInputBorder(
                        //           borderRadius:
                        //               BorderRadius.all(Radius.circular(10.0)),
                        //           borderSide: BorderSide(
                        //             color: Colors.grey,
                        //           )),
                        //     ),
                        //   ),
                        // ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 160.0),
                    child: Container(
                      height: 45,
                      width: 170,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          print(selectedValue);
                          if (reasonController.text.isNotEmpty) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => InspectionFirstScreen(
                                          id: id,
                                          value: selectedValue,
                                          subject: reasonController.text,
                                        )));
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.indigo.shade900,
                        ),
                        child: Text(
                          "Proceed",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      )),
    );
  }
}

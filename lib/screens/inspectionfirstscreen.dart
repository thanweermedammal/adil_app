import 'package:adil/helper/data_fetch.dart';
import 'package:adil/helper/model/contactordetails.dart';
import 'package:adil/helper/model/project_details_model.dart';
import 'package:adil/screens/inspectiondetails_screen.dart';
import 'package:flutter/material.dart';

class InspectionFirstScreen extends StatefulWidget {
  int id;

  var value;

  var subject;
  InspectionFirstScreen(
      {Key? key, required this.id, required this.value, required this.subject})
      : super(key: key);

  @override
  State<InspectionFirstScreen> createState() => _InspectionFirstScreenState();
}

class _InspectionFirstScreenState extends State<InspectionFirstScreen> {
  bool onconstruct = false;
  String constrcname = "";
  int constid = 0;
  Future<ProjectDetail>? fetchProjectDetail;
  Future<ContactorDetails>? fetchContractors;
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    fetchProjectDetail = DataFetch().fetchProjectDetails(widget.id);
    fetchContractors = DataFetch().fetchContractor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white30,
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
        child: FutureBuilder<ProjectDetail>(
            future: fetchProjectDetail,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: Row(
                            children: [
                              Container(
                                color: Colors.grey.shade200,
                                height: 32,
                                width: 32,
                                child: Icon(
                                  Icons.calendar_month,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Container(
                                  height: 32,
                                  color: Colors.grey.shade200,
                                  child: Center(
                                    child: Text(
                                        "${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}"),
                                  ),
                                ),
                              )
                            ],
                          )),
                          SizedBox(
                            width: 30,
                          ),
                          Expanded(
                              child: Row(
                            children: [
                              Container(
                                color: Colors.grey.shade200,
                                height: 32,
                                width: 32,
                                child: ImageIcon(
                                  AssetImage('assets/images/Time-Square.png'),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Container(
                                  height: 32,
                                  color: Colors.grey.shade200,
                                  child: Center(
                                    child: Text(
                                        "${DateTime.now().hour} : ${DateTime.now().minute}"),
                                  ),
                                ),
                              ),
                            ],
                          )),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 44,
                            height: 32,
                            color: Colors.grey.shade200,
                            child: Center(
                              child: Text("Visit"),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 81,
                            height: 32,
                            color: Colors.grey.shade200,
                            child: Center(
                              child: Text("1"),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 82,
                            height: 32,
                            color: Colors.grey.shade200,
                            child: Center(
                              child: Text("Project Id"),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 168,
                            height: 32,
                            color: Colors.grey.shade200,
                            child: Center(
                              child: Text(snapshot.data!.projects!.projectId
                                  .toString()),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 82,
                            height: 32,
                            color: Colors.grey.shade200,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Center(
                                child: Text("Remaining Days"),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 168,
                            height: 32,
                            color: Colors.grey.shade200,
                            child: Center(
                              child: Text(
                                "${snapshot.data!.projects!.deadlineDate!.difference(snapshot.data!.projects!.startingDate!).inDays}  Days",
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Subject"),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 58,
                              width: 302,
                              color: Colors.grey.shade200,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(widget.subject),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 82,
                            height: 32,
                            color: Colors.grey.shade200,
                            child: Center(
                              child: Text("File Number"),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 168,
                            height: 32,
                            color: Colors.grey.shade200,
                            child: Center(
                              child: Text(
                                "ASEC/11223344",
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 82,
                            height: 32,
                            color: Colors.grey.shade200,
                            child: Center(
                              child: Text("File Number"),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 168,
                            height: 32,
                            color: Colors.grey.shade200,
                            child: Center(
                              child: Text(
                                "ASEC/11223344",
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 82,
                            height: 32,
                            color: Colors.grey.shade200,
                            child: Center(
                              child: Text("plot Number"),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 168,
                            height: 32,
                            color: Colors.grey.shade200,
                            child: Center(
                              child: Text(
                                snapshot.data!.projects!.plotNo.toString(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Project Starting Date"),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Container(
                                    color: Colors.grey.shade200,
                                    height: 32,
                                    width: 32,
                                    child: Icon(Icons.calendar_month),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 32,
                                      color: Colors.grey.shade200,
                                      child: Center(
                                        child: Text(
                                            "${snapshot.data!.projects!.startingDate!.day}-${snapshot.data!.projects!.startingDate!.month}-${snapshot.data!.projects!.startingDate!.year}"),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  )
                                ],
                              ),
                            ],
                          )),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Project Handover Date"),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Container(
                                    color: Colors.grey.shade200,
                                    height: 32,
                                    width: 32,
                                    child: Icon(Icons.calendar_month),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 32,
                                      color: Colors.grey.shade200,
                                      child: Center(
                                        child: Text(
                                            "${snapshot.data!.projects!.deadlineDate!.day}-${snapshot.data!.projects!.deadlineDate!.month}-${snapshot.data!.projects!.deadlineDate!.year}"),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 82,
                            height: 32,
                            color: Colors.grey.shade200,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Center(
                                child: Text("project Name"),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 168,
                            height: 32,
                            color: Colors.grey.shade200,
                            child: Center(
                              child: Text(
                                snapshot.data!.projects!.name.toString(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 82,
                            height: 32,
                            color: Colors.grey.shade200,
                            child: Center(
                              child: Text("Owner Name"),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 168,
                            height: 32,
                            color: Colors.grey.shade200,
                            child: Center(
                              child: Text(
                                "Abdul",
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                              height: 32,
                              width: 82,
                              color: Colors.grey.shade200,
                              child: Text(
                                'Contractor Name',
                              )),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                              flex: 2,
                              child: FutureBuilder<ContactorDetails>(
                                future: fetchContractors,
                                builder: (context, snap) {
                                  if (snap.hasData) {
                                    return InkWell(
                                      onTap: () {
                                        setState(() {
                                          onconstruct = true;
                                          constrcname = "";
                                        });
                                      },
                                      child: Container(
                                        height: onconstruct == false
                                            ? 32
                                            : constrcname == ""
                                                ? 100
                                                : 32,
                                        color: constrcname == ""
                                            ? onconstruct == true
                                                ? Colors.white
                                                : Colors.grey.shade200
                                            : Colors.grey.shade200,
                                        child: onconstruct == true
                                            ? constrcname == ""
                                                ? ListView.builder(
                                                    itemCount: snap.data!
                                                        .contractors!.length,
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                          child: InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                constrcname = snap
                                                                    .data!
                                                                    .contractors![
                                                                        index]
                                                                    .name!;
                                                                constid = snap
                                                                    .data!
                                                                    .contractors![
                                                                        index]
                                                                    .id!;
                                                              });
                                                            },
                                                            child: Text(
                                                                snap
                                                                    .data!
                                                                    .contractors![
                                                                        index]
                                                                    .name!,
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500)),
                                                          ),
                                                        ),
                                                        Divider()
                                                      ],
                                                    ),
                                                  )
                                                : Center(
                                                    child: Text(constrcname,
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500)),
                                                  )
                                            : Center(
                                                child: Text('Select Name')),
                                      ),
                                    );
                                  } else {
                                    return Text('');
                                  }
                                },
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Location"),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 58,
                        width: 302,
                        color: Colors.grey.shade200,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              snapshot.data!.projects!.location.toString()),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
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
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            InspectionDetailsScreen(
                                              snapshot: snapshot,
                                              value: widget.value,
                                              constid: constid,
                                              constname: constrcname,
                                            )));
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.indigo.shade900,
                              ),
                              child: Text(
                                "Next",
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
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }),
      ),
    );
  }
}

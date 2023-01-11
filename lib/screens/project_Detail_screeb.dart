import 'package:adil/helper/data_fetch.dart';
import 'package:adil/helper/model/project_details_model.dart';
import 'package:adil/helper/model/project_model.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ProjectDetailScreen extends StatefulWidget {
  var id;

  ProjectDetailScreen({Key? key, required this.id}) : super(key: key);

  @override
  State<ProjectDetailScreen> createState() => _ProjectDetailScreenState();
}

class _ProjectDetailScreenState extends State<ProjectDetailScreen> {
  Future<ProjectDetail>? fetchProjectDetail;
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    fetchProjectDetail = DataFetch().fetchProjectDetails(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade50,
        elevation: 0,
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
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 140,
                        child: Row(
                          children: [
                            Expanded(
                                child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: snapshot.data!.projects!.photo != null
                                  ? Image.network(
                                      'https://adil.optimisttechhub.com/storage/projects/${snapshot.data!.projects!.projectId}/${snapshot.data!.projects!.photo}',
                                      height: 120,
                                      fit: BoxFit.fill,
                                    )
                                  : Image.asset(
                                      'assets/images/construction.jpg',
                                      height: 120,
                                      fit: BoxFit.cover,
                                    ),
                            )),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 45,
                                        width: 45,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: Colors.white),
                                        child: Icon(
                                          Icons.home_outlined,
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Plot No',
                                                style: TextStyle(
                                                    color:
                                                        Colors.indigo.shade900,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              Text(
                                                snapshot.data!.projects!.plotNo
                                                    .toString(),
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 18),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 35.0),
                                  child: Text(
                                    'Visits 1',
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )
                              ],
                            ))
                          ],
                        ),
                      ),
                      Text(
                        'Project Name',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        snapshot.data!.projects!.name.toString(),
                        style: TextStyle(
                            color: Colors.indigo.shade900,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  height: 55,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'BASIC INFO',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.calendar_month_outlined,
                              color: Colors.grey,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Starting Date',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.grey)),
                                  Text(
                                      '${snapshot.data!.projects!.startingDate!.year}-${snapshot.data!.projects!.startingDate!.month}-${snapshot.data!.projects!.startingDate!.day}',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.grey))
                                ],
                              ),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Handover',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey)),
                            Text(
                                "${snapshot.data!.projects!.deadlineDate!.year}-${snapshot.data!.projects!.deadlineDate!.month}-${snapshot.data!.projects!.deadlineDate!.day}",
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.indigo.shade100),
                        child: Icon(
                          Icons.people_outline,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Owner Name',
                              style: TextStyle(color: Colors.indigo.shade900),
                            ),
                            Text(
                              'Mr Faisal Ali Naser Al Maskari',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 170,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            children: [
                              Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.indigo.shade900),
                                child: Icon(
                                  Icons.calendar_month_outlined,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Remaining Days',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    ),
                                    Text(
                                      "${snapshot.data!.projects!.deadlineDate!.difference(snapshot.data!.projects!.startingDate!).inDays}  Days",
                                      style: TextStyle(
                                          color: Colors.indigo.shade900),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              snapshot.data!.projects!.location.toString(),
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.red.shade50),
                            child: Icon(
                              Icons.location_on_outlined,
                              color: Colors.red.shade300,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white),
                              child: Icon(
                                Icons.engineering_outlined,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Contractor',
                                    style: TextStyle(
                                        color: Colors.indigo.shade900),
                                  ),
                                  Text(
                                    'Arabian Home Of\nExcellence LLC',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 55,
                  color: Colors.white,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'ATTACHMENTS',
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      snapshot.data!.projects!.document1 != null
                          ? snapshot.data!.projects!.document1?.substring(
                                      snapshot.data!.projects!.document1!
                                              .lastIndexOf(".") +
                                          1) ==
                                  "pdf"
                              ? Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      String uri = snapshot
                                          .data!.projects!.document1
                                          .toString();
                                      String extension = uri
                                          .substring(uri.lastIndexOf(".") + 1);
                                      print(extension);
                                    },
                                    child: Container(
                                      width: 250,
                                      height: 300,
                                      child: SfPdfViewer.network(
                                          'https://adil.optimisttechhub.com/storage/projects/${snapshot.data!.projects!.projectId}/${snapshot.data!.projects!.document1}'),
                                    ),
                                  ),
                                )
                              : Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.network(
                                    'https://adil.optimisttechhub.com/storage/projects/${snapshot.data!.projects!.projectId}/${snapshot.data!.projects!.document1}',
                                    fit: BoxFit.cover,
                                    width: 250,
                                    height: 300,
                                  ),
                                )
                          : Text(''),
                      snapshot.data!.projects!.document2 != null
                          ? snapshot.data!.projects!.document2?.substring(
                                      snapshot.data!.projects!.document2!
                                              .lastIndexOf(".") +
                                          1) ==
                                  "pdf"
                              ? Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      String uri = snapshot
                                          .data!.projects!.document2
                                          .toString();
                                      String extension = uri
                                          .substring(uri.lastIndexOf(".") + 1);
                                      print(extension);
                                    },
                                    child: Container(
                                      width: 250,
                                      height: 300,
                                      child: SfPdfViewer.network(
                                          'https://adil.optimisttechhub.com/storage/projects/${snapshot.data!.projects!.projectId}/${snapshot.data!.projects!.document2}'),
                                    ),
                                  ),
                                )
                              : Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.network(
                                    'https://adil.optimisttechhub.com/storage/projects/${snapshot.data!.projects!.projectId}/${snapshot.data!.projects!.document2}',
                                    fit: BoxFit.fill,
                                    width: 250,
                                    height: 300,
                                  ),
                                )
                          : Text(''),
                    ],
                  ),
                ),
              ],
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

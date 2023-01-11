import 'package:adil/helper/data_fetch.dart';
import 'package:adil/helper/model/project_model.dart';
import 'package:adil/screens/project_Detail_screeb.dart';
import 'package:flutter/material.dart';
import 'package:adil/helper/model/project_model.dart' as pr;

class ProjectListingScreen extends StatefulWidget {
  const ProjectListingScreen({Key? key}) : super(key: key);

  @override
  State<ProjectListingScreen> createState() => _ProjectListingScreenState();
}

class _ProjectListingScreenState extends State<ProjectListingScreen> {
  Future<ProjectsData>? fetchProject;
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    fetchProject = DataFetch().fetchProject();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white70,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                )),
          ),
          title: Text(
            'Projects',
            style: TextStyle(color: Colors.indigo.shade900),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          // validator: phoneValidator,
                          keyboardType: TextInputType.text,
                          cursorColor: Colors.green,
                          // controller: userNameController,
                          onChanged: (text) {
                            // mobileNumber = value;
                          },
                          decoration: InputDecoration(
                            fillColor: Colors.grey,
                            hintText: 'Search',

                            // prefixIcon: Icon(Icons.person),
                            suffixIcon: Icon(Icons.search),
                            // suffixText: "Search",
                            contentPadding: EdgeInsets.all(10),
                            focusColor: Colors.greenAccent,
                            // labelStyle: ktext14,
                            // labelText: "Username",

                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                )),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Icon(Icons.tune)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: FutureBuilder<ProjectsData>(
            future: fetchProject,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data!.projects!.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        // height: 150,
                        // width: 150,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          // borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                height: 161,
                                // width: MediaQuery.of(context).size.width / 2.5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image:
                                      snapshot.data!.projects![index].photo !=
                                              null
                                          ? snapshot.data!.projects![index]
                                                  .photo!.isNotEmpty
                                              ? DecorationImage(
                                                  image: NetworkImage(
                                                      'https://adil.optimisttechhub.com/storage/projects/${snapshot.data!.projects![index].projectId}/${snapshot.data!.projects![index].photo}'),
                                                  fit: BoxFit.fill,
                                                )
                                              : DecorationImage(
                                                  image: AssetImage(
                                                      "assets/images/construction.jpg"),
                                                  fit: BoxFit.cover,
                                                )
                                          : DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/construction.jpg"),
                                              fit: BoxFit.cover,
                                            ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Project ID',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                          Text(
                                            snapshot.data!.projects![index]
                                                .projectId
                                                .toString(),
                                            style:
                                                TextStyle(color: Colors.black),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Project Name',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                          Text(
                                            snapshot.data!.projects![index].name
                                                .toString(),
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                InkWell(
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                ProjectDetailScreen(
                                                                  id: snapshot
                                                                      .data!
                                                                      .projects![
                                                                          index]
                                                                      .id,
                                                                )));
                                                  },
                                                  child: Container(
                                                    height: 26,
                                                    width: 131,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                        color:
                                                            Color(0xFF201A56)),
                                                    child: Center(
                                                      child: Text(
                                                        'View in Detail',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xFFCAA644)),
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )),
                  ),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }));
  }
}

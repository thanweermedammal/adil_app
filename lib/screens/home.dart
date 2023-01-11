import 'package:adil/helper/authhelper.dart';
import 'package:adil/helper/data_fetch.dart';
import 'package:adil/helper/shared_value_helper.dart';
import 'package:adil/screens/inspection_screen.dart';
import 'package:adil/screens/login_screen.dart';
import 'package:adil/screens/project_Detail_screeb.dart';
import 'package:adil/screens/project_listing_screen.dart';
import 'package:flutter/material.dart';

import 'package:adil/helper/model/project_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool search = false;
  Future<ProjectsData>? fetchOngoing;
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    fetchOngoing = DataFetch().onGoingProject();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ProjectsData>(
      future: fetchOngoing,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Scaffold(
              appBar: AppBar(
                iconTheme: IconThemeData(color: Colors.black),
                toolbarHeight: 70,
                backgroundColor: Colors.grey.shade50,
                elevation: 0,
                automaticallyImplyLeading: false,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 50),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.black,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://adil.optimisttechhub.com/storage/engineers/${loguser_id.$}/${engimage.$}'),
                          radius: 25,
                          backgroundColor: Colors.white,
                          child: engimage.$.isNotEmpty
                              ? Text('')
                              : Icon(Icons.person),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Text(
                                "HI,",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                            Text(
                              name.$.toUpperCase(),
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              endDrawer: Drawer(
                  width: 250,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 60.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 28,
                                backgroundColor: Colors.black,
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://adil.optimisttechhub.com/storage/engineers/${loguser_id.$}/${engimage.$}'),
                                  radius: 25,
                                  backgroundColor: Colors.white,
                                  // child: Image.network("https://adil.optimisttechhub.com/storage/engineers/4/1667337901.avatar-2.jpg"),
                                  child: engimage.$.isNotEmpty
                                      ? Text('')
                                      : Icon(Icons.person),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  name.$.toUpperCase(),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.logout),
                          title: Text('Log Out'),
                          onTap: () async {
                            final prefs = await SharedPreferences.getInstance();
                            prefs.setString('userName', "");
                            prefs.setString('password', "");
                            AuthHelper().clearUserData();
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()),
                                (route) => false);
                          },
                        ),
                      ])),
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        // SizedBox(
                        //   height: 50,
                        // ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     Row(
                        //       children: [
                        //         CircleAvatar(
                        //           radius: 28,
                        //           backgroundColor: Colors.black,
                        //           child: CircleAvatar(
                        //             radius: 25,
                        //             backgroundColor: Colors.white,
                        //             child: Icon(Icons.person),
                        //           ),
                        //         ),
                        //         Padding(
                        //           padding: const EdgeInsets.all(8.0),
                        //           child: Column(
                        //             crossAxisAlignment: CrossAxisAlignment.start,
                        //             children: [
                        //               Padding(
                        //                 padding: const EdgeInsets.only(left: 5.0),
                        //                 child: Text(
                        //                   "HI,",
                        //                   style: TextStyle(
                        //                     color: Colors.black,
                        //                     fontSize: 16,
                        //                     fontWeight: FontWeight.normal,
                        //                   ),
                        //                 ),
                        //               ),
                        //               Text(
                        //                 name.$.toUpperCase(),
                        //                 style: TextStyle(
                        //                   color: Colors.black,
                        //                   fontSize: 18,
                        //                   fontWeight: FontWeight.bold,
                        //                 ),
                        //               ),
                        //             ],
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //     search == true
                        //         ? Expanded(
                        //             child: Padding(
                        //               padding: const EdgeInsets.all(8.0),
                        //               child: TextFormField(
                        //                 // validator: phoneValidator,
                        //                 keyboardType: TextInputType.text,
                        //                 cursorColor: Colors.green,
                        //                 // controller: lastNameController,
                        //                 onChanged: (text) {
                        //                   // mobileNumber = value;
                        //                 },
                        //                 decoration: InputDecoration(
                        //                   filled: true,
                        //                   fillColor: Colors.white,
                        //                   contentPadding: EdgeInsets.all(10),
                        //                   focusColor: Colors.greenAccent,
                        //                   // labelStyle: ktext14,
                        //                   labelText: "search",
                        //                   // suffixIcon: Icon(Icons.unfold_more),
                        //                   labelStyle: TextStyle(
                        //                     color: Colors.grey,
                        //                     fontSize: 12,
                        //                   ),
                        //                   focusedBorder: OutlineInputBorder(
                        //                       borderRadius: BorderRadius.all(
                        //                           Radius.circular(10.0)),
                        //                       borderSide: BorderSide(
                        //                         color: Colors.grey,
                        //                       )),
                        //                   border: OutlineInputBorder(
                        //                       borderRadius: BorderRadius.all(
                        //                           Radius.circular(10.0)),
                        //                       borderSide: BorderSide(
                        //                         color: Colors.grey,
                        //                       )),
                        //                 ),
                        //               ),
                        //             ),
                        //           )
                        //         : SizedBox(),
                        //     Row(
                        //       children: [
                        //         InkWell(
                        //             onTap: () {
                        //               setState(() {
                        //                 search == true ? search = false : search = true;
                        //               });
                        //             },
                        //             child: Icon(Icons.search)),
                        //         InkWell(
                        //             onTap: () {
                        //               Scaffold.of(context).openEndDrawer();
                        //             },
                        //             child: Icon(Icons.menu))
                        //       ],
                        //     ),
                        //   ],
                        // ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "CHOOSE",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          "CATEGORY",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ProjectListingScreen()));
                                  },
                                  child: Container(
                                    height: 100,
                                    // width: 200,
                                    decoration: const BoxDecoration(
                                      color: Colors.red,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                    ),
                                    child: Column(
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'PROJECTS',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        )
                                      ],
                                    ) /* add child content here */,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    print(username.$);
                                  },
                                  child: Container(
                                    height: 100,
                                    // width: 200,
                                    decoration: const BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'MESSAGES',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        )
                                      ],
                                    ) /* add child content here */,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                InspectionScreen()));
                                  },
                                  child: Container(
                                    height: 100,
                                    // width: 200,
                                    decoration: const BoxDecoration(
                                      color: Colors.yellow,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'INSPECTION',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        )
                                      ],
                                    ) /* add child content here */,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 100,
                                  // width: 200,
                                  decoration: const BoxDecoration(
                                    color: Colors.green,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                  ),
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'REPORTS',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )
                                    ],
                                  ) /* add child content here */,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Ongoing",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Text(
                                  "PROJECTS",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ProjectListingScreen()));
                              },
                              child: Container(
                                  height: 33,
                                  width: 33,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xFF201A56)),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: Color(0xFFCAA644),
                                  )),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 240,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: snapshot.data!.projects!.length,
                            itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ProjectDetailScreen(
                                                id: snapshot
                                                    .data!.projects![index].id,
                                              )));
                                },
                                child: Container(
                                  // height: 220,
                                  width: 150,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        offset: Offset(1, 1),
                                        blurRadius: 3,
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // width: 145,
                                        height: 130,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20)),
                                          image: snapshot.data!.projects![index]
                                                      .photo !=
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
                                        // color: Colors.green,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(snapshot.data!.projects![index]
                                                .projectId
                                                .toString()),
                                            Text(snapshot
                                                .data!.projects![index].name
                                                .toString()),
                                            Text(snapshot
                                                .data!.projects![index].location
                                                .toString()),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                ),
              ));
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

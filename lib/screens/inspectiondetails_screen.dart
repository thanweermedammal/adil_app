import 'package:adil/screens/inspectionverify_screeen.dart';
import 'package:adil/widgets/chekbox_name.dart';
import 'package:flutter/material.dart';

class InspectionDetailsScreen extends StatelessWidget {
  const InspectionDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.indigo.shade50,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                Expanded(child: Container()),
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Visit No',
                              ),
                            ),
                            Expanded(
                              child: Text(
                                '1',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Date',
                              ),
                            ),
                            Expanded(
                              child: Text(
                                '01-08-2022',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Time',
                              ),
                            ),
                            Expanded(
                              child: Text(
                                '09.00 Am',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Remaining Time',
                              ),
                            ),
                            Expanded(
                              child: Text(
                                '299 Days',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Inspection Subject : ',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  Expanded(
                    child: Text(
                      'Inspection Of Primary Documentation, Works & Land For Cotinuing The Works',
                      style: TextStyle(fontSize: 12),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(child: Text('File No    ASEC/11223344')),
                  Expanded(child: Text('Plot No      987654'))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(child: Text('Start Date     01  08  2022')),
                  Expanded(child: Text('Handover      30  05  2023'))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                      child: Text('Project Name',
                          style: TextStyle(fontWeight: FontWeight.w500))),
                  Expanded(
                      flex: 2,
                      child: Text('Construction Of Residential Twin Villa',
                          style: TextStyle(fontWeight: FontWeight.w500))),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                      child: Text('Owner Name',
                          style: TextStyle(fontWeight: FontWeight.w500))),
                  Expanded(
                      flex: 2,
                      child: Text('Mr Faisal Ali Nazer Al Makari',
                          style: TextStyle(fontWeight: FontWeight.w500))),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                      child: Text('Contractor Name',
                          style: TextStyle(fontWeight: FontWeight.w500))),
                  Expanded(
                      flex: 2,
                      child: Text('Arabian Home Of Excellence L.L.C',
                          style: TextStyle(fontWeight: FontWeight.w500))),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                      child: Text('Sub - Contractor',
                          style: TextStyle(fontWeight: FontWeight.w500))),
                  Expanded(
                      flex: 2,
                      child: Text('ABCD Constructor L.L.C',
                          style: TextStyle(fontWeight: FontWeight.w500))),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Text(
                    'Project Location',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )),
                  Expanded(
                    flex: 2,
                    child: Text(
                        'Plot: 1346, Phase :1, Sur Al Hadid, Ali Seeb, Muscat, Sultanate Of Oman',
                        style: TextStyle(fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
            ),
            Container(
              height: 55,
              color: Colors.white,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text('EVALUATION',
                        style: TextStyle(fontSize: 20, color: Colors.grey)),
                  ),
                ],
              ),
            ),
            CheckBoxName(
                true, false, "Muncipality Approvals", "Agreements papers"),
            CheckBoxName(false, false, "Camp Permission", "Material Approval"),
            CheckBoxName(
                false, false, "Land Location", "Road level / BM / Depth"),
            CheckBoxName(false, false, "Safety of Labor", "Electricty Line"),
            CheckBoxName(false, false, "Approved Drawings", "Sign Board"),
            CheckBoxName(
                false, false, "Work Schedule", "Marking Point & Position"),
            CheckBoxName(false, false, "Level / Angle / Degree",
                "Slope & landing Position"),
            CheckBoxName(
                false, false, "Security For Site", "Safety Wall / Fancying"),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => InspectionVerifyScreen()));
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
      ),
    );
  }
}

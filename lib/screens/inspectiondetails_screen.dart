import 'package:adil/helper/data_fetch.dart';
import 'package:adil/helper/model/contactordetails.dart';
import 'package:adil/helper/model/project_details_model.dart';
import 'package:adil/helper/shared_value_helper.dart';
import 'package:adil/screens/inspectionverify_screeen.dart';
import 'package:adil/widgets/chekbox_name.dart';
import 'package:flutter/material.dart';

class InspectionDetailsScreen extends StatefulWidget {
  var value;
  var snapshot;

  var constid;

  var constname;

  InspectionDetailsScreen(
      {Key? key,
      required this.snapshot,
      required this.value,
      required this.constid,
      required this.constname})
      : super(key: key);

  @override
  State<InspectionDetailsScreen> createState() =>
      _InspectionDetailsScreenState();
}

class _InspectionDetailsScreenState extends State<InspectionDetailsScreen> {
  bool muncipality = true;
  bool agreement = false;
  bool camp = false;
  bool material = false;
  bool land = false;
  bool road = false;
  bool safety = false;
  bool electricity = false;
  bool approved = false;
  bool sign = false;
  bool work = false;
  bool marketing = false;
  bool level = false;
  bool slope = false;
  bool sequrity = false;
  bool safetywall = false;
  bool onconstruct = false;
  bool mobilization = false;
  bool soilCompactionReport = false;
  bool footingMarking = false;
  bool shutteringSupport = false;
  bool footingHoneycomb = false;
  bool columnCuring = false;
  bool cleanSurface = false;
  bool secondStepBackFilling = false;
  bool pBSteelSetup = false;
  bool concreteTextReports = false;
  bool antiTerminalReports = false;
  bool excavation = false;
  bool pccMarking = false;
  bool columnsSteelSetup = false;
  bool footingConcreteCast = false;
  bool columnSteelCleaning = false;
  bool concreteTextReport = false;
  bool bitumenPaint = false;
  bool CompactionReport3 = false;
  bool pBBitumenPaint = false;
  bool bRMashPolythene = false;
  bool depthAreaPoints = false;
  bool pCCCastingReport = false;
  bool footingSteelSetup = false;
  bool spacingBindingCovering = false;
  bool columnsHoneycomb = false;
  bool StepBackFilling1st = false;
  bool stepBackFilling3rd = false;
  bool stepBackFilling4th = false;
  bool pCCConcreteText = false;
  bool soilCondition = false;
  bool columnsMarking = false;
  bool columnConcreteCost = false;
  bool solidBlockWorks = false;
  bool compactionReport2 = false;
  bool compactionReport4 = false;
  bool footingCuring = false;
  bool pBConcreteCost = false;
  bool compactionReport5 = false;
  bool gFColumnSteelSetup = false;
  bool concreteTestReports = false;
  bool shutteringQuality = false;
  bool gFSlabSteelSetup = false;
  bool slabConcreteCast = false;
  bool fFColumnSteelSetup = false;
  bool concreteTestReport1 = false;
  bool concreteTestReport6 = false;
  bool concreteTestReport3 = false;
  bool concreteTestReport4 = false;
  bool concreteTestReport5 = false;
  bool fFSlabSteelSetup = false;
  bool fFSlabSteelSetup1 = false;
  bool shutteringQuality1 = false;
  bool shutteringQuality2 = false;
  bool slabConcreteCost1 = false;
  bool slabConcreteCost2 = false;
  bool spacingBindingCovering1 = false;
  bool spacingBindingCovering2 = false;
  bool spacingBindingCovering3 = false;
  bool spacingBindingCovering4 = false;
  bool spacingBindingCovering5 = false;
  bool shutteringSupport1 = false;
  bool shutteringSupport2 = false;
  bool pHColumnSteelSetup = false;
  bool pHColumnHoneycomb = false;
  bool gFColumnHoneycomb = false;
  bool doorsWindowsPoint = false;
  bool doorsWindowsPoint2 = false;
  bool doorsWindowsPoint1 = false;
  bool slabCuring = false;
  bool slabCuring1 = false;
  bool slabCuring2 = false;
  bool gFColumnCuring = false;
  bool gFSlabShuttering = false;
  bool mEPFixingCheck = false;
  bool mEPFixingCheck1 = false;
  bool mEPFixingCheck2 = false;
  bool fFColumnCuring = false;
  bool fFColumnCuring1 = false;
  bool fFSlabShuttering = false;
  bool fFSlabShuttering1 = false;
  bool pHSlabSupport = false;
  bool gFColumnCasting = false;
  bool gFBlockWorkCuring = false;
  bool hightBeamAreaStair = false;
  bool gFSlabSupport = false;
  bool slabBeamHoneycomb = false;
  bool slabBeamHoneycomb1 = false;
  bool slabBeamHoneycomb2 = false;
  bool fFBlockWorkCuring = false;
  bool fFColumnCasting = false;
  bool fFSlabSupport = false;
  bool pHColumnCasting = false;
  bool pHBlockWorkCuring = false;
  bool pccCuring = false;
  bool siteCleaning = false;
  bool pipeBoxFixing = false;
  bool wallFoundation = false;
  bool wallTiles = false;
  bool primerPuttiWork = false;
  bool paintFinishingWork = false;
  bool kitchenFittings = false;
  bool waterLineSupply = false;
  bool mEP = false;
  bool sneakList = false;
  bool insidePlaster = false;
  bool wallColumns = false;
  bool wiringACDucting = false;
  bool floorTilesWorks = false;
  bool landscapeWorks = false;
  bool doorsWindowsFixing = false;
  bool electricityPassing = false;
  bool finalInspection = false;
  bool waterproofing = false;
  bool wallBlockWorks = false;
  bool dBFloorPipeWiring = false;
  bool dBDressingRoofWiring = false;
  bool electricityItemsFixing = false;
  bool carParking = false;
  bool deMobilization = false;
  bool documentationSubmit = false;
  bool roofTiles = false;
  bool wallPlasterWorks = false;
  bool outsidePlaster = false;
  bool toiletsKitchenItems = false;
  bool aCAccessoriesFixing = false;
  bool mainPocketGate = false;
  bool municipalityApprovals = false;
  bool hightBeamAreaStair1 = false;
  bool hightBeamAreaStair2 = false;
  bool fFColumnHoneycomb = false;

  // String constrcname = "";
  TextEditingController remarksController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.indigo.shade50,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            widget.value == "Primarily Work"
                ? primarilyWork(widget.snapshot)
                : widget.value == "Sub-Structure"
                    ? subStructure(widget.snapshot)
                    : widget.value == "Super-Structure"
                        ? superStructure(widget.snapshot)
                        : fishingMep(widget.snapshot),
          ],
        ),
      ),
    );
  }

  primarilyWork(snapshot) {
    return Column(
      children: [
        CheckBoxName(
            fstvalue: muncipality,
            scdvalue: agreement,
            fstname: "Muncipality Approvals",
            scdname: "Agreements papers",
            ontouch1: (bool) {
              setState(() {
                muncipality == true ? muncipality = false : muncipality = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                agreement == true ? agreement = false : agreement = true;
              });
            }),
        CheckBoxName(
            fstvalue: camp,
            scdvalue: material,
            fstname: "Camp Permission",
            scdname: "Material Approval",
            ontouch1: (bool) {
              setState(() {
                camp == true ? camp = false : camp = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                material == true ? material = false : material = true;
              });
            }),
        CheckBoxName(
            fstvalue: land,
            scdvalue: road,
            fstname: "Land Location",
            scdname: "Road level / BM / Depth",
            ontouch1: (bool) {
              setState(() {
                land == true ? land = false : land = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                road == true ? road = false : road = true;
              });
            }),
        CheckBoxName(
            fstvalue: safety,
            scdvalue: electricity,
            fstname: "Safety of Labor",
            scdname: "Electricty Line",
            ontouch1: (bool) {
              setState(() {
                safety == true ? safety = false : safety = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                electricity == true ? electricity = false : electricity = true;
              });
            }),
        CheckBoxName(
            fstvalue: approved,
            scdvalue: sign,
            fstname: "Approved Drawings",
            scdname: "Sign Board",
            ontouch1: (bool) {
              setState(() {
                approved == true ? approved = false : approved = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                sign == true ? sign = false : sign = true;
              });
            }),
        CheckBoxName(
            fstvalue: work,
            scdvalue: marketing,
            fstname: "Work Schedule",
            scdname: "Marking Point & Position",
            ontouch1: (bool) {
              setState(() {
                work == true ? work = false : work = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                marketing == true ? marketing = false : marketing = true;
              });
            }),
        CheckBoxName(
            fstvalue: level,
            scdvalue: slope,
            fstname: "Level / Angle / Degree",
            scdname: "Slope & landing Position",
            ontouch1: (bool) {
              setState(() {
                level == true ? level = false : level = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                slope == true ? slope = false : slope = true;
              });
            }),
        CheckBoxName(
            fstvalue: sequrity,
            scdvalue: safetywall,
            fstname: "Security For Site",
            scdname: "Safety Wall / Fancying",
            ontouch1: (bool) {
              setState(() {
                sequrity == true ? sequrity = false : sequrity = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                safetywall == true ? safetywall = false : safetywall = true;
              });
            }),

        // CheckBoxName(false, false, "Approved Drawings", "Sign Board"),

        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextFormField(
            maxLines: 5,
            // minLines: 3,
            // validator: phoneValidator,
            keyboardType: TextInputType.text,
            cursorColor: Colors.green,
            controller: remarksController,
            onChanged: (text) {
              // mobileNumber = value;
            },
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.all(10),
              focusColor: Colors.greenAccent,
              // labelStyle: ktext14,
              labelText: "Type Your Remarks",

              labelStyle: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  )),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  )),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
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
                    print(user_id.$);
                    print(snapshot.data!.projects!.id!);

                    DataFetch()
                        .postInspection(
                          project_id: snapshot.data!.projects!.id!,
                          engineeer_id: user_id.$,
                          contractor_id: widget.constid,
                          muncipality_approval:
                              muncipality == true ? "yes" : "No",
                          agreements_paper: agreement == true ? "yes" : "No",
                          camp_permission: camp == true ? "yes" : "No",
                          material_approval: material == true ? "yes" : "No",
                          land_location: land == true ? "yes" : "No",
                          road_level: road == true ? "yes" : "No",
                          safety_of_labour: safety == true ? "yes" : "No",
                          electricity_line: electricity == true ? "yes" : "No",
                          approved_drawings: approved == true ? "yes" : "No",
                          sign_board: sign == true ? "yes" : "No",
                          work_schedule: work == true ? "yes" : "No",
                          marketing_point: marketing == true ? "yes" : "No",
                          level: level == true ? "yes" : "No",
                          slope: slope == true ? "yes" : "No",
                          security_for_site: sequrity == true ? "yes" : "No",
                          security_wall: safetywall == true ? "yes" : "No",
                        )
                        .then((value) => {
                              if (value)
                                {
                                  print(report_id.$),
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              InspectionVerifyScreen(
                                                reportid:
                                                    report_id.$.toString(),
                                                value: widget.value,
                                                name: widget.constname,
                                                remarks: remarksController.text,
                                              ))),
                                }
                            });
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
            ),
          ],
        ),
      ],
    );
  }

  subStructure(snapshot) {
    return Column(
      children: [
        CheckBoxName(
            fstvalue: mobilization,
            scdvalue: soilCompactionReport,
            fstname: "Mobilization",
            scdname: "Soil Compaction Report",
            ontouch1: (bool) {
              setState(() {
                mobilization == true
                    ? mobilization = false
                    : mobilization = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                soilCompactionReport == true
                    ? soilCompactionReport = false
                    : soilCompactionReport = true;
              });
            }),
        CheckBoxName(
            fstvalue: footingMarking,
            scdvalue: shutteringSupport,
            fstname: "Footing Marking",
            scdname: "Shuttering & Support",
            ontouch1: (bool) {
              setState(() {
                footingMarking == true
                    ? footingMarking = false
                    : footingMarking = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                shutteringSupport == true
                    ? shutteringSupport = false
                    : shutteringSupport = true;
              });
            }),
        CheckBoxName(
            fstvalue: footingHoneycomb,
            scdvalue: columnCuring,
            fstname: "Footing Honeycomb",
            scdname: "Column Curing",
            ontouch1: (bool) {
              setState(() {
                footingHoneycomb == true
                    ? footingHoneycomb = false
                    : footingHoneycomb = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                columnCuring == true
                    ? columnCuring = false
                    : columnCuring = true;
              });
            }),
        CheckBoxName(
            fstvalue: cleanSurface,
            scdvalue: secondStepBackFilling,
            fstname: "Clean Surface",
            scdname: "2nd Step Back Filling",
            ontouch1: (bool) {
              setState(() {
                cleanSurface == true
                    ? cleanSurface = false
                    : cleanSurface = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                secondStepBackFilling == true
                    ? secondStepBackFilling = false
                    : secondStepBackFilling = true;
              });
            }),
        CheckBoxName(
            fstvalue: pBSteelSetup,
            scdvalue: concreteTextReports,
            fstname: "PB Steel Setup",
            scdname: "Concrete Text Reports",
            ontouch1: (bool) {
              setState(() {
                pBSteelSetup == true
                    ? pBSteelSetup = false
                    : pBSteelSetup = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                concreteTextReports == true
                    ? concreteTextReports = false
                    : concreteTextReports = true;
              });
            }),
        CheckBoxName(
            fstvalue: antiTerminalReports,
            scdvalue: excavation,
            fstname: "Anti Treatment Reports",
            scdname: "Excavation",
            ontouch1: (bool) {
              setState(() {
                antiTerminalReports == true
                    ? antiTerminalReports = false
                    : antiTerminalReports = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                excavation == true ? excavation = false : excavation = true;
              });
            }),
        CheckBoxName(
            fstvalue: pccMarking,
            scdvalue: columnsSteelSetup,
            fstname: "Pcc Marking",
            scdname: "Columns Steel Setup",
            ontouch1: (bool) {
              setState(() {
                pccMarking == true ? pccMarking = false : pccMarking = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                columnsSteelSetup == true
                    ? columnsSteelSetup = false
                    : columnsSteelSetup = true;
              });
            }),
        CheckBoxName(
            fstvalue: footingConcreteCast,
            scdvalue: columnSteelCleaning,
            fstname: "Footing Concrete Cast",
            scdname: "Column Steel Cleaning",
            ontouch1: (bool) {
              setState(() {
                footingConcreteCast == true
                    ? footingConcreteCast = false
                    : footingConcreteCast = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                columnSteelCleaning == true
                    ? columnSteelCleaning = false
                    : columnSteelCleaning = true;
              });
            }),
        CheckBoxName(
            fstvalue: concreteTextReport,
            scdvalue: bitumenPaint,
            fstname: "Concrete Text Report",
            scdname: "Bitumen Paint",
            ontouch1: (bool) {
              setState(() {
                concreteTextReport == true
                    ? concreteTextReport = false
                    : concreteTextReport = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                bitumenPaint == true
                    ? bitumenPaint = false
                    : bitumenPaint = true;
              });
            }),
        CheckBoxName(
            fstvalue: CompactionReport3,
            scdvalue: pccCuring,
            fstname: "Compaction Report-3",
            scdname: "Pcc Curing",
            ontouch1: (bool) {
              setState(() {
                CompactionReport3 == true
                    ? CompactionReport3 = false
                    : CompactionReport3 = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                pccCuring == true ? pccCuring = false : pccCuring = true;
              });
            }),
        CheckBoxName(
            fstvalue: pBBitumenPaint,
            scdvalue: bRMashPolythene,
            fstname: "PB Bitumen Paint",
            scdname: "BR Mash, Polythene",
            ontouch1: (bool) {
              setState(() {
                pBBitumenPaint == true
                    ? pBBitumenPaint = false
                    : pBBitumenPaint = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                bRMashPolythene == true
                    ? bRMashPolythene = false
                    : bRMashPolythene = true;
              });
            }),
        CheckBoxName(
            fstvalue: depthAreaPoints,
            scdvalue: pCCCastingReport,
            fstname: "Depth & Area & Points",
            scdname: "PCC Casting & Report",
            ontouch1: (bool) {
              setState(() {
                depthAreaPoints == true
                    ? depthAreaPoints = false
                    : depthAreaPoints = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                pCCCastingReport == true
                    ? pCCCastingReport = false
                    : pCCCastingReport = true;
              });
            }),
        CheckBoxName(
            fstvalue: footingSteelSetup,
            scdvalue: spacingBindingCovering,
            fstname: "Footing Steel Setup",
            scdname: "Spacing, Binding, Covering",
            ontouch1: (bool) {
              setState(() {
                footingSteelSetup == true
                    ? footingSteelSetup = false
                    : footingSteelSetup = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                spacingBindingCovering == true
                    ? spacingBindingCovering = false
                    : spacingBindingCovering = true;
              });
            }),
        CheckBoxName(
            fstvalue: columnsHoneycomb,
            scdvalue: StepBackFilling1st,
            fstname: "Columns Honeycomb",
            scdname: "1st Step Back Filling ",
            ontouch1: (bool) {
              setState(() {
                columnsHoneycomb == true
                    ? columnsHoneycomb = false
                    : columnsHoneycomb = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                StepBackFilling1st == true
                    ? StepBackFilling1st = false
                    : StepBackFilling1st = true;
              });
            }),
        CheckBoxName(
            fstvalue: stepBackFilling3rd,
            scdvalue: stepBackFilling4th,
            fstname: "3rd Step Back Filling",
            scdname: "4th Step Back Filling",
            ontouch1: (bool) {
              setState(() {
                stepBackFilling3rd == true
                    ? stepBackFilling3rd = false
                    : stepBackFilling3rd = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                stepBackFilling4th == true
                    ? stepBackFilling4th = false
                    : stepBackFilling4th = true;
              });
            }),
        CheckBoxName(
            fstvalue: pCCConcreteText,
            scdvalue: soilCondition,
            fstname: "PCC Concrete Text",
            scdname: "Soil Condition",
            ontouch1: (bool) {
              setState(() {
                pCCConcreteText == true
                    ? pCCConcreteText = false
                    : pCCConcreteText = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                soilCondition == true
                    ? soilCondition = false
                    : soilCondition = true;
              });
            }),
        CheckBoxName(
            fstvalue: columnsMarking,
            scdvalue: footingCuring,
            fstname: "Columns Marking",
            scdname: "Footing Curing",
            ontouch1: (bool) {
              setState(() {
                columnsMarking == true
                    ? columnsMarking = false
                    : columnsMarking = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                footingCuring == true
                    ? footingCuring = false
                    : footingCuring = true;
              });
            }),
        CheckBoxName(
            fstvalue: columnConcreteCost,
            scdvalue: solidBlockWorks,
            fstname: "Column Concrete Cost",
            scdname: "Solid Block Works",
            ontouch1: (bool) {
              setState(() {
                columnConcreteCost == true
                    ? columnConcreteCost = false
                    : columnConcreteCost = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                solidBlockWorks == true
                    ? solidBlockWorks = false
                    : solidBlockWorks = true;
              });
            }),
        CheckBoxName(
            fstvalue: compactionReport2,
            scdvalue: compactionReport4,
            fstname: "Compaction Report-2",
            scdname: "Compaction Report-4",
            ontouch1: (bool) {
              setState(() {
                compactionReport2 == true
                    ? compactionReport2 = false
                    : compactionReport2 = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                compactionReport4 == true
                    ? compactionReport4 = false
                    : compactionReport4 = true;
              });
            }),
        CheckBoxName(
            fstvalue: pBConcreteCost,
            scdvalue: compactionReport5,
            fstname: "PB Concrete Cast",
            scdname: "Compaction Report-5",
            ontouch1: (bool) {
              setState(() {
                pBConcreteCost == true
                    ? pBConcreteCost = false
                    : pBConcreteCost = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                compactionReport5 == true
                    ? compactionReport5 = false
                    : compactionReport5 = true;
              });
            }),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextFormField(
            maxLines: 5,
            // minLines: 3,
            // validator: phoneValidator,
            keyboardType: TextInputType.text,
            cursorColor: Colors.green,
            controller: remarksController,
            onChanged: (text) {
              // mobileNumber = value;
            },
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.all(10),
              focusColor: Colors.greenAccent,
              // labelStyle: ktext14,
              labelText: "Type Your Remarks",

              labelStyle: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  )),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  )),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
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
                    print(user_id.$);
                    DataFetch()
                        .postInspectionSubStructure(
                            prj_id: snapshot.data!.projects!.id!.toString(),
                            engineer_id: user_id.$.toString(),
                            mobilization: mobilization == true ? "yes" : "No",
                            soil_compaction_report:
                                soilCompactionReport == true ? "yes" : "No",
                            footing_marking:
                                footingMarking == true ? "yes" : "No",
                            shuttering_and_support:
                                shutteringSupport == true ? "yes" : "No",
                            footing_honeycomb:
                                footingHoneycomb == true ? "yes" : "No",
                            column_curing: columnCuring == true ? "yes" : "No",
                            clean_surface: cleanSurface == true ? "yes" : "No",
                            second_step_back_filling:
                                secondStepBackFilling == true ? "yes" : "No",
                            pb_steel_setup: pBSteelSetup == true ? "yes" : "No",
                            concrete_test_reports:
                                concreteTestReports == true ? "yes" : "No",
                            anti_treatment_report:
                                antiTerminalReports == true ? "yes" : "No",
                            excavation: excavation == true ? "yes" : "No",
                            pcc_marking: pccMarking == true ? "yes" : "No",
                            columns_steel_setup:
                                columnsSteelSetup == true ? "yes" : "No",
                            footing_concrete_cost:
                                footingConcreteCast == true ? "yes" : "No",
                            column_steel_cleaning:
                                columnSteelCleaning == true ? "yes" : "No",
                            bitumen_paint: bitumenPaint == true ? "yes" : "No",
                            compaction_report_three:
                                CompactionReport3 == true ? "yes" : "No",
                            pb_bitumen_paint:
                                pBBitumenPaint == true ? "yes" : "No",
                            br_mash: bRMashPolythene == true ? "yes" : "No",
                            depth_and_area_points:
                                depthAreaPoints == true ? "yes" : "No",
                            pcc_casting_and_report:
                                pCCCastingReport == true ? "yes" : "No",
                            footing_steel_setup:
                                footingSteelSetup == true ? "yes" : "No",
                            spacing:
                                spacingBindingCovering == true ? "yes" : "No",
                            columns_honeycomb:
                                columnsHoneycomb == true ? "yes" : "No",
                            first_step_back_filling:
                                StepBackFilling1st == true ? "yes" : "No",
                            third_step_back_filling:
                                stepBackFilling3rd == true ? "yes" : "No",
                            forth_step_back_filling:
                                stepBackFilling4th == true ? "yes" : "No",
                            pcc_concrete_test:
                                pCCConcreteText == true ? "yes" : "No",
                            soil_condition:
                                soilCondition == true ? "yes" : "No",
                            columns_marking:
                                columnsMarking == true ? "yes" : "No",
                            footing_curing:
                                footingCuring == true ? "yes" : "No",
                            column_concrete_cost:
                                columnConcreteCost == true ? "yes" : "No",
                            solid_block_works:
                                solidBlockWorks == true ? "yes" : "No",
                            compaction_report_second:
                                compactionReport2 == true ? "yes" : "No",
                            compaction_report_forth:
                                compactionReport4 == true ? "yes" : "No",
                            pb_concrete_cost:
                                pBConcreteCost == true ? "yes" : "No",
                            compaction_report_five:
                                compactionReport5 == true ? "yes" : "No",
                            pcc_curing: pccCuring == true ? "yes" : "No")
                        .then((value) => {
                              if (value)
                                {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              InspectionVerifyScreen(
                                                reportid:
                                                    report_id.$.toString(),
                                                value: widget.value,
                                                name: widget.constname,
                                                remarks: remarksController.text,
                                              ))),
                                }
                            });
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
            ),
          ],
        ),
      ],
    );
  }

  superStructure(snapshot) {
    return Column(
      children: [
        CheckBoxName(
            fstvalue: gFColumnSteelSetup,
            scdvalue: concreteTestReports,
            fstname: "GF Column Steel Setup",
            scdname: "Concrete Test Report",
            ontouch1: (bool) {
              setState(() {
                gFColumnSteelSetup == true
                    ? gFColumnSteelSetup = false
                    : gFColumnSteelSetup = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                concreteTestReports == true
                    ? concreteTestReports = false
                    : concreteTestReports = true;
              });
            }),
        CheckBoxName(
            fstvalue: shutteringQuality,
            scdvalue: gFSlabSteelSetup,
            fstname: "Shuttering Quality",
            scdname: "GF Slab Steel Setup",
            ontouch1: (bool) {
              setState(() {
                shutteringQuality == true
                    ? shutteringQuality = false
                    : shutteringQuality = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                gFSlabSteelSetup == true
                    ? gFSlabSteelSetup = false
                    : gFSlabSteelSetup = true;
              });
            }),
        CheckBoxName(
            fstvalue: slabConcreteCast,
            scdvalue: fFColumnSteelSetup,
            fstname: "Slab Concrete Cost",
            scdname: "FF Column Steel Setup",
            ontouch1: (bool) {
              setState(() {
                slabConcreteCast == true
                    ? slabConcreteCast = false
                    : slabConcreteCast = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                fFColumnSteelSetup == true
                    ? fFColumnSteelSetup = false
                    : fFColumnSteelSetup = true;
              });
            }),
        CheckBoxName(
            fstvalue: concreteTestReport6,
            scdvalue: shutteringQuality2,
            fstname: "Concrete Test Report6",
            scdname: "Shuttering Quality 2",
            ontouch1: (bool) {
              setState(() {
                concreteTestReport6 == true
                    ? concreteTestReport6 = false
                    : concreteTestReport6 = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                shutteringQuality2 == true
                    ? shutteringQuality2 = false
                    : shutteringQuality2 = true;
              });
            }),
        CheckBoxName(
            fstvalue: concreteTestReport1,
            scdvalue: shutteringQuality1,
            fstname: "Concrete Test Report 1",
            scdname: "Shuttering Quality 1",
            ontouch1: (bool) {
              setState(() {
                concreteTestReport1 == true
                    ? concreteTestReport1 = false
                    : concreteTestReport1 = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                shutteringQuality1 == true
                    ? shutteringQuality1 = false
                    : shutteringQuality1 = true;
              });
            }),
        CheckBoxName(
            fstvalue: fFSlabSteelSetup,
            scdvalue: slabConcreteCost1,
            fstname: "FF Slab Steel Setup",
            scdname: "Slab Concrete Cost 1",
            ontouch1: (bool) {
              setState(() {
                fFSlabSteelSetup == true
                    ? fFSlabSteelSetup = false
                    : fFSlabSteelSetup = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                slabConcreteCost1 == true
                    ? slabConcreteCost1 = false
                    : slabConcreteCost1 = true;
              });
            }),
        CheckBoxName(
            fstvalue: pHColumnSteelSetup,
            scdvalue: concreteTestReport3,
            fstname: "PH Column Steel Setup",
            scdname: "Concrete Test Report3",
            ontouch1: (bool) {
              setState(() {
                pHColumnSteelSetup == true
                    ? pHColumnSteelSetup = false
                    : pHColumnSteelSetup = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                concreteTestReport3 == true
                    ? concreteTestReport3 = false
                    : concreteTestReport3 = true;
              });
            }),
        CheckBoxName(
            fstvalue: slabConcreteCost2,
            scdvalue: spacingBindingCovering,
            fstname: "Slab Concrete Cost 2",
            scdname: "Spacing, Binding, Covering",
            ontouch1: (bool) {
              setState(() {
                slabConcreteCost2 == true
                    ? slabConcreteCost2 = false
                    : slabConcreteCost2 = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                spacingBindingCovering == true
                    ? spacingBindingCovering = false
                    : spacingBindingCovering = true;
              });
            }),
        CheckBoxName(
            fstvalue: fFSlabSteelSetup1,
            scdvalue: spacingBindingCovering3,
            fstname: "FF Slab Steel Setup 1",
            scdname: "Spacing,Binding,Covering3",
            ontouch1: (bool) {
              setState(() {
                fFSlabSteelSetup1 == true
                    ? fFSlabSteelSetup1 = false
                    : fFSlabSteelSetup1 = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                spacingBindingCovering3 == true
                    ? spacingBindingCovering3 = false
                    : spacingBindingCovering3 = true;
              });
            }),
        CheckBoxName(
            fstvalue: spacingBindingCovering4,
            scdvalue: spacingBindingCovering5,
            fstname: "Spacing,Binding,Covering 4",
            scdname: "Spacing,Binding,Covering 5",
            ontouch1: (bool) {
              setState(() {
                spacingBindingCovering4 == true
                    ? spacingBindingCovering4 = false
                    : spacingBindingCovering4 = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                spacingBindingCovering5 == true
                    ? spacingBindingCovering5 = false
                    : spacingBindingCovering5 = true;
              });
            }),
        CheckBoxName(
            fstvalue: gFColumnHoneycomb,
            scdvalue: doorsWindowsPoint,
            fstname: "GF Column Honeycomb",
            scdname: "Doors & Windows Point",
            ontouch1: (bool) {
              setState(() {
                gFColumnHoneycomb == true
                    ? gFColumnHoneycomb = false
                    : gFColumnHoneycomb = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                doorsWindowsPoint == true
                    ? doorsWindowsPoint = false
                    : doorsWindowsPoint = true;
              });
            }),
        CheckBoxName(
            fstvalue: pHColumnHoneycomb,
            scdvalue: doorsWindowsPoint2,
            fstname: "PH Column Honeycomb",
            scdname: "Doors & Windows Point 2",
            ontouch1: (bool) {
              setState(() {
                pHColumnHoneycomb == true
                    ? pHColumnHoneycomb = false
                    : pHColumnHoneycomb = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                doorsWindowsPoint2 == true
                    ? doorsWindowsPoint2 = false
                    : doorsWindowsPoint2 = true;
              });
            }),
        CheckBoxName(
            fstvalue: slabCuring,
            scdvalue: shutteringSupport,
            fstname: "Slab Curing",
            scdname: "Shuttering & Support",
            ontouch1: (bool) {
              setState(() {
                slabCuring == true ? slabCuring = false : slabCuring = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                shutteringSupport == true
                    ? shutteringSupport = false
                    : shutteringSupport = true;
              });
            }),
        CheckBoxName(
            fstvalue: gFColumnCuring,
            scdvalue: gFSlabShuttering,
            fstname: "GF Column Curing",
            scdname: "GF Slab Shuttering",
            ontouch1: (bool) {
              setState(() {
                gFColumnCuring == true
                    ? gFColumnCuring = false
                    : gFColumnCuring = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                gFSlabShuttering == true
                    ? gFSlabShuttering = false
                    : gFSlabShuttering = true;
              });
            }),
        CheckBoxName(
            fstvalue: mEPFixingCheck,
            scdvalue: concreteTestReport5,
            fstname: "MEP Fixing Check",
            scdname: "Concrete Test Report5",
            ontouch1: (bool) {
              setState(() {
                mEPFixingCheck == true
                    ? mEPFixingCheck = false
                    : mEPFixingCheck = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                concreteTestReport5 == true
                    ? concreteTestReport5 = false
                    : concreteTestReport5 = true;
              });
            }),
        CheckBoxName(
            fstvalue: fFColumnCuring,
            scdvalue: fFColumnCuring1,
            fstname: "FF Column Curing",
            scdname: "FF Column Curing 1",
            ontouch1: (bool) {
              setState(() {
                fFColumnCuring == true
                    ? fFColumnCuring = false
                    : fFColumnCuring = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                fFColumnCuring1 == true
                    ? fFColumnCuring1 = false
                    : fFColumnCuring1 = true;
              });
            }),
        CheckBoxName(
            fstvalue: fFSlabShuttering,
            scdvalue: mEPFixingCheck2,
            fstname: "FF Slab Shuttering",
            scdname: "MEP Fixing Check 2",
            ontouch1: (bool) {
              setState(() {
                fFSlabShuttering == true
                    ? fFSlabShuttering = false
                    : fFSlabShuttering = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                mEPFixingCheck2 == true
                    ? mEPFixingCheck2 = false
                    : mEPFixingCheck2 = true;
              });
            }),
        CheckBoxName(
            fstvalue: concreteTestReport4,
            scdvalue: pHSlabSupport,
            fstname: "Concrete Test Report4",
            scdname: "PH Slab Support",
            ontouch1: (bool) {
              setState(() {
                concreteTestReport4 == true
                    ? concreteTestReport4 = false
                    : concreteTestReport4 = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                pHSlabSupport == true
                    ? pHSlabSupport = false
                    : pHSlabSupport = true;
              });
            }),
        CheckBoxName(
            fstvalue: slabCuring2,
            scdvalue: shutteringSupport1,
            fstname: "Slab Curing 2",
            scdname: "Shuttering & Support 1",
            ontouch1: (bool) {
              setState(() {
                slabCuring2 == true ? slabCuring2 = false : slabCuring2 = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                shutteringSupport1 == true
                    ? shutteringSupport1 = false
                    : shutteringSupport1 = true;
              });
            }),
        CheckBoxName(
            fstvalue: mEPFixingCheck1,
            scdvalue: shutteringSupport1,
            fstname: "MEP Fixing Check 1",
            scdname: "Shuttering & Support 2",
            ontouch1: (bool) {
              setState(() {
                mEPFixingCheck1 == true
                    ? mEPFixingCheck1 = false
                    : mEPFixingCheck1 = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                shutteringSupport2 == true
                    ? shutteringSupport2 = false
                    : shutteringSupport2 = true;
              });
            }),
        CheckBoxName(
            fstvalue: gFColumnCasting,
            scdvalue: gFBlockWorkCuring,
            fstname: "GF Column Casting",
            scdname: "GF Block Work & Curing",
            ontouch1: (bool) {
              setState(() {
                gFColumnCasting == true
                    ? gFColumnCasting = false
                    : gFColumnCasting = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                gFBlockWorkCuring == true
                    ? gFBlockWorkCuring = false
                    : gFBlockWorkCuring = true;
              });
            }),
        CheckBoxName(
            fstvalue: hightBeamAreaStair,
            scdvalue: gFSlabSupport,
            fstname: "Hight, Beam, Area, Stair",
            scdname: "GF Slab Support",
            ontouch1: (bool) {
              setState(() {
                hightBeamAreaStair == true
                    ? hightBeamAreaStair = false
                    : hightBeamAreaStair = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                gFSlabSupport == true
                    ? gFSlabSupport = false
                    : gFSlabSupport = true;
              });
            }),
        CheckBoxName(
            fstvalue: slabBeamHoneycomb,
            scdvalue: fFColumnCasting,
            fstname: "Slab Beam Honeycomb",
            scdname: "FF Column Casting",
            ontouch1: (bool) {
              setState(() {
                slabBeamHoneycomb == true
                    ? slabBeamHoneycomb = false
                    : slabBeamHoneycomb = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                fFColumnCasting == true
                    ? fFColumnCasting = false
                    : fFColumnCasting = true;
              });
            }),
        CheckBoxName(
            fstvalue: slabBeamHoneycomb1,
            scdvalue: slabBeamHoneycomb2,
            fstname: "Slab Beam Honeycomb 1",
            scdname: "Slab Beam Honeycomb 2",
            ontouch1: (bool) {
              setState(() {
                slabBeamHoneycomb1 == true
                    ? slabBeamHoneycomb1 = false
                    : slabBeamHoneycomb1 = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                slabBeamHoneycomb2 == true
                    ? slabBeamHoneycomb2 = false
                    : slabBeamHoneycomb2 = true;
              });
            }),
        CheckBoxName(
            fstvalue: hightBeamAreaStair1,
            scdvalue: hightBeamAreaStair2,
            fstname: "Hight, Beam, Area, Stair 1",
            scdname: "Hight, Beam, Area, Stair 2",
            ontouch1: (bool) {
              setState(() {
                hightBeamAreaStair1 == true
                    ? hightBeamAreaStair1 = false
                    : hightBeamAreaStair1 = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                hightBeamAreaStair2 == true
                    ? hightBeamAreaStair2 = false
                    : hightBeamAreaStair2 = true;
              });
            }),
        CheckBoxName(
            fstvalue: fFBlockWorkCuring,
            scdvalue: fFSlabSupport,
            fstname: "FF Block Work & Curing",
            scdname: "FF Slab Support",
            ontouch1: (bool) {
              setState(() {
                fFBlockWorkCuring == true
                    ? fFBlockWorkCuring = false
                    : fFBlockWorkCuring = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                fFSlabSupport == true
                    ? fFSlabSupport = false
                    : fFSlabSupport = true;
              });
            }),
        CheckBoxName(
            fstvalue: pHColumnCasting,
            scdvalue: pHBlockWorkCuring,
            fstname: "PH Column Casting",
            scdname: "PH Block Work & Curing",
            ontouch1: (bool) {
              setState(() {
                pHColumnCasting == true
                    ? pHColumnCasting = false
                    : pHColumnCasting = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                pHBlockWorkCuring == true
                    ? pHBlockWorkCuring = false
                    : pHBlockWorkCuring = true;
              });
            }),
        CheckBoxName(
            fstvalue: fFSlabShuttering1,
            scdvalue: doorsWindowsPoint1,
            fstname: "FF Slab Shuttering 1",
            scdname: "Doors & Windows Point 1",
            ontouch1: (bool) {
              setState(() {
                fFSlabShuttering1 == true
                    ? fFSlabShuttering1 = false
                    : fFSlabShuttering1 = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                doorsWindowsPoint1 == true
                    ? doorsWindowsPoint1 = false
                    : doorsWindowsPoint1 = true;
              });
            }),
        CheckBoxName(
            fstvalue: spacingBindingCovering1,
            scdvalue: spacingBindingCovering2,
            fstname: "Spacing,Binding,Covering 1",
            scdname: "Spacing,Binding,Covering 2",
            ontouch1: (bool) {
              setState(() {
                spacingBindingCovering1 == true
                    ? spacingBindingCovering1 = false
                    : spacingBindingCovering1 = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                spacingBindingCovering2 == true
                    ? spacingBindingCovering2 = false
                    : spacingBindingCovering2 = true;
              });
            }),
        CheckBoxName(
            fstvalue: slabCuring1,
            scdvalue: fFColumnHoneycomb,
            fstname: "Slab Curing 1",
            scdname: "FF Column Honeycomb",
            ontouch1: (bool) {
              setState(() {
                slabCuring1 == true ? slabCuring1 = false : slabCuring1 = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                fFColumnHoneycomb == true
                    ? fFColumnHoneycomb = false
                    : fFColumnHoneycomb = true;
              });
            }),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextFormField(
            maxLines: 5,
            // minLines: 3,
            // validator: phoneValidator,
            keyboardType: TextInputType.text,
            cursorColor: Colors.green,
            controller: remarksController,
            onChanged: (text) {
              // mobileNumber = value;
            },
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.all(10),
              focusColor: Colors.greenAccent,
              // labelStyle: ktext14,
              labelText: "Type Your Remarks",

              labelStyle: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  )),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  )),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
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
                    print(user_id.$);
                    DataFetch()
                        .postInspection3(
                            prj_id: snapshot.data!.projects!.id!.toString(),
                            engineer_id: user_id.$.toString(),
                            gf_column_steel_setup:
                                gFColumnSteelSetup == true ? "yes" : "No",
                            concrete_test_reports:
                                concreteTestReports == true ? "yes" : "No",
                            shuttering_quality:
                                shutteringQuality == true ? "yes" : "No",
                            gf_slab_steel_setup:
                                gFSlabSteelSetup == true ? "yes" : "No",
                            slab_concrete_cost:
                                slabConcreteCast == true ? "yes" : "No",
                            ff_column_steel_setup:
                                fFColumnSteelSetup == true ? "yes" : "No",
                            concrete_test_reports1:
                                concreteTestReport1 == true ? "yes" : "No",
                            shuttering_quality1:
                                shutteringQuality1 == true ? "yes" : "No",
                            ff_slab_steel_setup:
                                fFSlabSteelSetup == true ? "yes" : "No",
                            slab_concrete_cost1:
                                slabConcreteCost1 == true ? "yes" : "No",
                            ph_column_steel_setup:
                                pHColumnSteelSetup == true ? "yes" : "No",
                            concrete_test_reports3:
                                concreteTestReport3 == true ? "yes" : "No",
                            shuttering_quality2:
                                shutteringQuality2 == true ? "yes" : "No",
                            ff_slab_steel_setup1:
                                fFSlabSteelSetup1 == true ? "yes" : "No",
                            slab_concrete_cost2:
                                slabConcreteCost2 == true ? "yes" : "No",
                            spacing:
                                spacingBindingCovering == true ? "yes" : "No",
                            gf_colummn_honeycomb:
                                gFColumnHoneycomb == true ? "yes" : "No",
                            doors_and_windows_point1:
                                doorsWindowsPoint1 == true ? "yes" : "No",
                            spacing3:
                                spacingBindingCovering3 == true ? "yes" : "No",
                            slab_curing1: slabCuring1 == true ? "yes" : "No",
                            spacing4:
                                spacingBindingCovering4 == true ? "yes" : "No",
                            ph_column_honeycomb:
                                pHColumnHoneycomb == true ? "yes" : "No",
                            doors_and_windows_point2:
                                doorsWindowsPoint2 == true ? "yes" : "No",
                            spacing5:
                                spacingBindingCovering5 == true ? "yes" : "No",
                            slab_curing2: slabCuring2 == true ? "yes" : "No",
                            shuttering_and_support:
                                shutteringSupport == true ? "yes" : "No",
                            gf_slab_shuttering:
                                gFSlabShuttering == true ? "yes" : "No",
                            mep_fixing_check:
                                mEPFixingCheck == true ? "yes" : "No",
                            concrete_test_reports4:
                                concreteTestReport4 == true ? "yes" : "No",
                            shuttering_and_support1:
                                shutteringSupport1 == true ? "yes" : "No",
                            ff_column_curing:
                                fFColumnCuring == true ? "yes" : "No",
                            ff_slab_shuttering:
                                fFSlabShuttering == true ? "yes" : "No",
                            mep_fixing_check1:
                                mEPFixingCheck1 == true ? "yes" : "No",
                            concrete_test_reports5:
                                concreteTestReport5 == true ? "yes" : "No",
                            shuttering_and_support2:
                                shutteringSupport2 == true ? "yes" : "No",
                            ff_column_curing1:
                                fFColumnCuring1 == true ? "yes" : "No",
                            ff_slab_shuttering1:
                                fFSlabShuttering1 == true ? "yes" : "No",
                            mep_fixing_checkq2:
                                mEPFixingCheck2 == true ? "yes" : "No",
                            concrete_test_reports6:
                                concreteTestReport6 == true ? "yes" : "No",
                            gf_column_casting:
                                gFColumnCasting == true ? "yes" : "No",
                            gf_block_work_curing:
                                gFBlockWorkCuring == true ? "yes" : "No",
                            hight: hightBeamAreaStair == true ? "yes" : "No",
                            gf_slab_support:
                                gFSlabSupport == true ? "yes" : "No",
                            slab_beam_honeycomb:
                                slabBeamHoneycomb == true ? "yes" : "No",
                            ff_column_casting:
                                fFColumnCasting == true ? "yes" : "No",
                            ff_block_work_and_curing:
                                fFBlockWorkCuring == true ? "yes" : "No",
                            hight1: hightBeamAreaStair1 == true ? "yes" : "No",
                            ff_slab_support:
                                fFSlabSupport == true ? "yes" : "No",
                            slab_beam_honeycomb1:
                                slabBeamHoneycomb1 == true ? "yes" : "No",
                            ph_column_casting:
                                pHColumnCasting == true ? "yes" : "No",
                            ph_block_work_and_curing:
                                pHBlockWorkCuring == true ? "yes" : "No",
                            height2: hightBeamAreaStair2 == true ? "yes" : "No",
                            ph_slab_support:
                                pHSlabSupport == true ? "yes" : "No",
                            slab_beam_honeycomb2:
                                slabBeamHoneycomb2 == true ? "yes" : "No",
                            doors_and_windows_point:
                                doorsWindowsPoint == true ? "yes" : "No",
                            spacing1:
                                spacingBindingCovering1 == true ? "yes" : "No",
                            slab_curing: slabCuring == true ? "yes" : "No",
                            spacing2:
                                spacingBindingCovering2 == true ? "yes" : "No",
                            ff_column_honeycomb:
                                fFColumnHoneycomb == true ? "yes" : "No",
                            gf_column_cuuring:
                                gFColumnCuring == true ? "yes" : "No")
                        .then((value) => {
                              if (value)
                                {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              InspectionVerifyScreen(
                                                reportid:
                                                    report_id.$.toString(),
                                                value: widget.value,
                                                name: widget.constname,
                                                remarks: remarksController.text,
                                              ))),
                                }
                            });
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
            ),
          ],
        ),
      ],
    );
  }

  fishingMep(snapshot) {
    return Column(
      children: [
        CheckBoxName(
            fstvalue: pipeBoxFixing,
            scdvalue: wallFoundation,
            fstname: "Pipe & Box Fixing",
            scdname: "Wall Foundation",
            ontouch1: (bool) {
              setState(() {
                pipeBoxFixing == true
                    ? pipeBoxFixing = false
                    : pipeBoxFixing = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                wallFoundation == true
                    ? wallFoundation = false
                    : wallFoundation = true;
              });
            }),
        CheckBoxName(
            fstvalue: wallTiles,
            scdvalue: primerPuttiWork,
            fstname: "Wall Tiles",
            scdname: "Primer & Putti Work",
            ontouch1: (bool) {
              setState(() {
                wallTiles == true ? wallTiles = false : wallTiles = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                primerPuttiWork == true
                    ? primerPuttiWork = false
                    : primerPuttiWork = true;
              });
            }),
        CheckBoxName(
            fstvalue: paintFinishingWork,
            scdvalue: kitchenFittings,
            fstname: "Paint Finishing Work",
            scdname: "Kitchen Fittings",
            ontouch1: (bool) {
              setState(() {
                paintFinishingWork == true
                    ? paintFinishingWork = false
                    : paintFinishingWork = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                kitchenFittings == true
                    ? kitchenFittings = false
                    : kitchenFittings = true;
              });
            }),
        CheckBoxName(
            fstvalue: waterLineSupply,
            scdvalue: mEP,
            fstname: "Water Line Supply",
            scdname: "MEP",
            ontouch1: (bool) {
              setState(() {
                waterLineSupply == true
                    ? waterLineSupply = false
                    : waterLineSupply = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                mEP == true ? mEP = false : mEP = true;
              });
            }),
        CheckBoxName(
            fstvalue: sneakList,
            scdvalue: insidePlaster,
            fstname: "Sneak List",
            scdname: "Inside Plaster",
            ontouch1: (bool) {
              setState(() {
                sneakList == true ? sneakList = false : sneakList = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                insidePlaster == true
                    ? insidePlaster = false
                    : insidePlaster = true;
              });
            }),
        CheckBoxName(
            fstvalue: wallColumns,
            scdvalue: wiringACDucting,
            fstname: "Wall Columns",
            scdname: "Wiring & AC Ducting",
            ontouch1: (bool) {
              setState(() {
                wallColumns == true ? wallColumns = false : wallColumns = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                wiringACDucting == true
                    ? wiringACDucting = false
                    : wiringACDucting = true;
              });
            }),
        CheckBoxName(
            fstvalue: floorTilesWorks,
            scdvalue: doorsWindowsFixing,
            fstname: "Floor Tiles Works",
            scdname: "Doors & Windows Fixing",
            ontouch1: (bool) {
              setState(() {
                floorTilesWorks == true
                    ? floorTilesWorks = false
                    : floorTilesWorks = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                doorsWindowsFixing == true
                    ? doorsWindowsFixing = false
                    : doorsWindowsFixing = true;
              });
            }),
        CheckBoxName(
            fstvalue: landscapeWorks,
            scdvalue: electricityPassing,
            fstname: "Landscape Works",
            scdname: "Electricity Passing",
            ontouch1: (bool) {
              setState(() {
                landscapeWorks == true
                    ? landscapeWorks = false
                    : landscapeWorks = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                electricityPassing == true
                    ? electricityPassing = false
                    : electricityPassing = true;
              });
            }),
        CheckBoxName(
            fstvalue: finalInspection,
            scdvalue: waterproofing,
            fstname: "Final Inspection",
            scdname: "Waterproofing",
            ontouch1: (bool) {
              setState(() {
                finalInspection == true
                    ? finalInspection = false
                    : finalInspection = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                waterproofing == true
                    ? waterproofing = false
                    : waterproofing = true;
              });
            }),
        CheckBoxName(
            fstvalue: wallBlockWorks,
            scdvalue: dBFloorPipeWiring,
            fstname: "Wall Block Works",
            scdname: "DB & Floor Pipe & Wiring",
            ontouch1: (bool) {
              setState(() {
                wallBlockWorks == true
                    ? wallBlockWorks = false
                    : wallBlockWorks = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                dBFloorPipeWiring == true
                    ? dBFloorPipeWiring = false
                    : dBFloorPipeWiring = true;
              });
            }),
        CheckBoxName(
            fstvalue: dBDressingRoofWiring,
            scdvalue: electricityItemsFixing,
            fstname: "DB Dressing & Roof Wiring",
            scdname: "Electricity Items Fixing",
            ontouch1: (bool) {
              setState(() {
                dBDressingRoofWiring == true
                    ? dBDressingRoofWiring = false
                    : dBDressingRoofWiring = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                electricityItemsFixing == true
                    ? electricityItemsFixing = false
                    : electricityItemsFixing = true;
              });
            }),
        CheckBoxName(
            fstvalue: carParking,
            scdvalue: deMobilization,
            fstname: "Car Parking",
            scdname: "De-Mobilization",
            ontouch1: (bool) {
              setState(() {
                carParking == true ? carParking = false : carParking = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                deMobilization == true
                    ? deMobilization = false
                    : deMobilization = true;
              });
            }),
        CheckBoxName(
            fstvalue: documentationSubmit,
            scdvalue: roofTiles,
            fstname: "Documentation Submit",
            scdname: "Roof Tiles",
            ontouch1: (bool) {
              setState(() {
                documentationSubmit == true
                    ? documentationSubmit = false
                    : documentationSubmit = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                roofTiles == true ? roofTiles = false : roofTiles = true;
              });
            }),
        CheckBoxName(
            fstvalue: wallPlasterWorks,
            scdvalue: outsidePlaster,
            fstname: "Wall Plaster Works",
            scdname: "Outside Plaster",
            ontouch1: (bool) {
              setState(() {
                wallPlasterWorks == true
                    ? wallPlasterWorks = false
                    : wallPlasterWorks = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                outsidePlaster == true
                    ? outsidePlaster = false
                    : outsidePlaster = true;
              });
            }),
        CheckBoxName(
            fstvalue: toiletsKitchenItems,
            scdvalue: aCAccessoriesFixing,
            fstname: "Toilets & Kitchen Items",
            scdname: "AC & Accessories Fixing",
            ontouch1: (bool) {
              setState(() {
                toiletsKitchenItems == true
                    ? toiletsKitchenItems = false
                    : toiletsKitchenItems = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                aCAccessoriesFixing == true
                    ? aCAccessoriesFixing = false
                    : aCAccessoriesFixing = true;
              });
            }),
        CheckBoxName(
            fstvalue: mainPocketGate,
            scdvalue: municipalityApprovals,
            fstname: "Main & Pocket Gate",
            scdname: "Municipality Approvals",
            ontouch1: (bool) {
              setState(() {
                mainPocketGate == true
                    ? mainPocketGate = false
                    : mainPocketGate = true;
              });
            },
            ontouch: (bool) {
              setState(() {
                municipalityApprovals == true
                    ? municipalityApprovals = false
                    : municipalityApprovals = true;
              });
            }),
        Row(
          children: [
            Row(
              children: [
                Checkbox(
                  value: siteCleaning,
                  onChanged: (bool) {
                    setState(() {
                      siteCleaning == true
                          ? siteCleaning = false
                          : siteCleaning = true;
                    });
                  },
                ),
                Text(
                  "Site Cleaning",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextFormField(
            maxLines: 5,
            // minLines: 3,
            // validator: phoneValidator,
            keyboardType: TextInputType.text,
            cursorColor: Colors.green,
            controller: remarksController,
            onChanged: (text) {
              // mobileNumber = value;
            },
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.all(10),
              focusColor: Colors.greenAccent,
              // labelStyle: ktext14,
              labelText: "Type Your Remarks",

              labelStyle: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  )),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  )),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
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
                    print(user_id.$);
                    DataFetch()
                        .postInspection4(
                            prj_id: snapshot.data!.projects!.id!.toString(),
                            engineer_id: user_id.$.toString(),
                            pipe_and_box_fixing:
                                pipeBoxFixing == true ? "yes" : "No",
                            wall_foundation:
                                wallFoundation == true ? "yes" : "No",
                            wall_tiles: wallTiles == true ? "yes" : "No",
                            primer_and_putty_work:
                                primerPuttiWork == true ? "yes" : "No",
                            paint_finishing_work:
                                paintFinishingWork == true ? "yes" : "No",
                            kitchen_fitting:
                                kitchenFittings == true ? "yes" : "No",
                            water_line_supply:
                                waterLineSupply == true ? "yes" : "No",
                            sneak_list: sneakList == true
                                ? "yes"
                                : "No" == true
                                    ? "yes"
                                    : "No",
                            inside_plaster:
                                insidePlaster == true ? "yes" : "No",
                            wall_columns: wallColumns == true ? "yes" : "No",
                            wiring_and_ac_ducting:
                                wiringACDucting == true ? "yes" : "No",
                            floor_tiles_works:
                                floorTilesWorks == true ? "yes" : "No",
                            doors_and_windows_fixing:
                                doorsWindowsFixing == true ? "yes" : "No",
                            landscape_works:
                                landscapeWorks == true ? "yes" : "No",
                            electricity_passing:
                                electricityPassing == true ? "yes" : "No",
                            final_inspection:
                                finalInspection == true ? "yes" : "No",
                            waterproofing: waterproofing == true ? "yes" : "No",
                            wall_block_works:
                                wallBlockWorks == true ? "yes" : "No",
                            db_dressing_and_roof_wiring:
                                dBDressingRoofWiring == true ? "yes" : "No",
                            electricity_items_fixing:
                                electricityItemsFixing == true ? "yes" : "No",
                            car_parking: carParking == true ? "yes" : "No",
                            de_mobilization:
                                deMobilization == true ? "yes" : "No",
                            documentation_submit:
                                documentationSubmit == true ? "yes" : "No",
                            roof_tiles: roofTiles == true ? "yes" : "No",
                            wall_plaster_works:
                                wallPlasterWorks == true ? "yes" : "No",
                            outside_plaster:
                                outsidePlaster == true ? "yes" : "No",
                            toilets_and_kitchen_items:
                                toiletsKitchenItems == true ? "yes" : "No",
                            ac_and_accessories_fixing:
                                aCAccessoriesFixing == true ? "yes" : "No",
                            main_and_pocket_gate:
                                mainPocketGate == true ? "yes" : "No",
                            site_cleaning: siteCleaning == true ? "yes" : "No",
                            muncipality_approvals:
                                municipalityApprovals == true ? "yes" : "No",
                            db_and_floor_pipe_and_wiring:
                                dBFloorPipeWiring == true ? "yes" : "No")
                        .then((value) => {
                              if (value)
                                {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              InspectionVerifyScreen(
                                                reportid:
                                                    report_id.$.toString(),
                                                value: widget.value,
                                                name: widget.constname,
                                                remarks: remarksController.text,
                                              ))),
                                }
                            });
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
            ),
          ],
        ),
      ],
    );
  }
}

import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:adil/helper/model/contactordetails.dart';
import 'package:adil/helper/model/project_details_model.dart';
import 'package:adil/helper/model/project_model.dart';
import 'package:adil/helper/shared_value_helper.dart';
import 'package:http/http.dart' as http;

class DataFetch {
  Future<ProjectsData> fetchProject() async {
    // String token = access_token.$;

    //encode Map to JSON
    // Map data = {'id': id};
    // var body = json.encode(data);

    final response =
        await http.get(Uri.parse('http://adil.exouzia.in/api/projects'));
    print(response.body);

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return projectsDataFromJson(response.body);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  Future<ProjectDetail> fetchProjectDetails(int id) async {
    // String token = access_token.$;

    Map data = {'id': id};
    //encode Map to JSON
    var body = json.encode(data);

    final response =
        await http.post(Uri.parse('http://adil.exouzia.in/api/project/details'),
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
            },
            body: body);
    print(response.body);

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return projectDetailFromJson(response.body);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  Future<ProjectsData> onGoingProject() async {
    // String token = access_token.$;

    final response = await http.get(
      Uri.parse('http://adil.exouzia.in/api/projects/ongoing'),
    );
    print(response.body);

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return projectsDataFromJson(response.body);
    } else {
      print(response.statusCode);
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  Future<ContactorDetails> fetchContractor() async {
    // String token = access_token.$;

    //encode Map to JSON
    // Map data = {'id': id};
    // var body = json.encode(data);

    final response =
        await http.get(Uri.parse('http://adil.exouzia.in/api/contractors'));
    print(response.body);

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return contactorDetailsFromJson(response.body);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  Future<ProjectsData> searchProject() async {
    // String token = access_token.$;

    final response = await http.get(
      Uri.parse('http://adil.exouzia.in/api/project/search'),
    );
    print(response.body);

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return projectsDataFromJson(response.body);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  Future<bool> postInspection({
    required int project_id,
    required int engineeer_id,
    required int contractor_id,
    required String muncipality_approval,
    required String agreements_paper,
    required String camp_permission,
    required String material_approval,
    required String land_location,
    required String road_level,
    required String safety_of_labour,
    required String electricity_line,
    required String approved_drawings,
    required String sign_board,
    required String work_schedule,
    required String marketing_point,
    required String level,
    required String slope,
    required String security_for_site,
    required String security_wall,
  }) async {
    Map data = {
      "prj_id": project_id,
      "engineer_id": engineeer_id,
      "contractor_id": contractor_id,
      "muncipality_approval": muncipality_approval,
      "agreements_paper": agreements_paper,
      "camp_permission": camp_permission,
      "material_approval": material_approval,
      "land_location": land_location,
      "road_level": road_level,
      "safety_of_labour": safety_of_labour,
      "electricity_line": electricity_line,
      "approved_drawings": approved_drawings,
      "sign_board": sign_board,
      "work_schedule": work_schedule,
      "marking_point": marketing_point,
      "level": level,
      "slope": slope,
      "security_for_site": security_for_site,
      "safety_wall": security_wall,
    };
    //encode Map to JSON
    var body = json.encode(data);

    final response = await http.post(
        Uri.parse('http://adil.exouzia.in/api/inspection/submit'),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        body: body);

    Map a = json.decode(response.body);

    if (response.statusCode == 200) {
      report_id.$ = a['report']['id'];
      // If the server did return a 200 OK response,
      // then parse the JSON.
      print(response.body);

      return true;
    } else {
      print(response.statusCode);
      print(response.body);
      // If the server did not return a 200 OK response,
      // then throw an exception.
      //throw Exception('Failed to load album');

      return false;
    }
  }

  Future<bool> postInspectionSubStructure({
    required String prj_id,
    required String engineer_id,
    required String mobilization,
    required String soil_compaction_report,
    required String footing_marking,
    required String shuttering_and_support,
    required String footing_honeycomb,
    required String column_curing,
    required String clean_surface,
    required String second_step_back_filling,
    required String pb_steel_setup,
    required String concrete_test_reports,
    required String anti_treatment_report,
    required String excavation,
    required String pcc_marking,
    required String columns_steel_setup,
    required String footing_concrete_cost,
    required String column_steel_cleaning,
    required String bitumen_paint,
    required String compaction_report_three,
    required String pb_bitumen_paint,
    required String br_mash,
    required String depth_and_area_points,
    required String pcc_casting_and_report,
    required String footing_steel_setup,
    required String spacing,
    required String columns_honeycomb,
    required String first_step_back_filling,
    required String third_step_back_filling,
    required String forth_step_back_filling,
    required String pcc_concrete_test,
    required String soil_condition,
    required String columns_marking,
    required String footing_curing,
    required String column_concrete_cost,
    required String solid_block_works,
    required String compaction_report_second,
    required String compaction_report_forth,
    required String pb_concrete_cost,
    required String compaction_report_five,
    required String pcc_curing,
  }) async {
    Map data = {
      "prj_id": prj_id,
      "engineer_id": engineer_id,
      "mobilization": mobilization,
      "soil_compaction_report": soil_compaction_report,
      "footing_marking": footing_marking,
      'shuttering_and_support': shuttering_and_support,
      "footing_honeycomb": footing_honeycomb,
      "column_curing": column_curing,
      'clean_surface': clean_surface,
      "second_step_back_filling": second_step_back_filling,
      "pb_steel_setup": pb_steel_setup,
      "concrete_test_reports": concrete_test_reports,
      "anti_treatment_report": anti_treatment_report,
      "excavation": excavation,
      "pcc_marking": pcc_marking,
      "columns_steel_setup": columns_steel_setup,
      "footing_concrete_cost": footing_concrete_cost,
      "column_steel_cleaning": column_steel_cleaning,
      "bitumen_paint": bitumen_paint,
      'compaction_report_three': compaction_report_three,
      "pb_bitumen_paint": pb_bitumen_paint,
      'br_mash': br_mash,
      "depth_and_area_points": depth_and_area_points,
      'pcc_casting_and_report': pcc_casting_and_report,
      "footing_steel_setup": footing_steel_setup,
      'spacing': spacing,
      'columns_honeycomb': columns_honeycomb,
      'first_step_back_filling': first_step_back_filling,
      "third_step_back_filling": third_step_back_filling,
      "forth_step_back_filling": forth_step_back_filling,
      "pcc_concrete_test": pcc_concrete_test,
      'soil_condition': soil_condition,
      "columns_marking": columns_marking,
      "footing_curing": footing_curing,
      "column_concrete_cost": column_concrete_cost,
      "solid_block_works": solid_block_works,
      "compaction_report_second": compaction_report_second,
      "compaction_report_forth": compaction_report_forth,
      "pb_concrete_cost": pb_concrete_cost,
      'compaction_report_five': compaction_report_five,
      "pcc_curing": pcc_curing
    };
    //encode Map to JSON
    var body = json.encode(data);

    final response = await http.post(
        Uri.parse('http://adil.exouzia.in/api/inspection/second/submit'),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        body: body);

    Map a = json.decode(response.body);

    if (response.statusCode == 200) {
      report_id.$ = a['report']['id'];
      // If the server did return a 200 OK response,
      // then parse the JSON.
      print(response.body);

      return true;
    } else {
      print(response.statusCode);
      print(response.body);
      // If the server did not return a 200 OK response,
      // then throw an exception.
      //throw Exception('Failed to load album');

      return false;
    }
  }

  Future<bool> postInspection3(
      {required String prj_id,
      required String engineer_id,
      required String gf_column_steel_setup,
      required String concrete_test_reports,
      required String shuttering_quality,
      required String gf_slab_steel_setup,
      required String slab_concrete_cost,
      required String ff_column_steel_setup,
      required String concrete_test_reports1,
      required String shuttering_quality1,
      required String ff_slab_steel_setup,
      required String slab_concrete_cost1,
      required String ph_column_steel_setup,
      required String concrete_test_reports3,
      required String shuttering_quality2,
      required String ff_slab_steel_setup1,
      required String slab_concrete_cost2,
      required String spacing,
      required String gf_colummn_honeycomb,
      required String doors_and_windows_point1,
      required String spacing3,
      required String slab_curing1,
      required String spacing4,
      required String ph_column_honeycomb,
      required String doors_and_windows_point2,
      required String spacing5,
      required String slab_curing2,
      required String shuttering_and_support,
      required String gf_slab_shuttering,
      required String mep_fixing_check,
      required String concrete_test_reports4,
      required String shuttering_and_support1,
      required String ff_column_curing,
      required String ff_slab_shuttering,
      required String mep_fixing_check1,
      required String concrete_test_reports5,
      required String shuttering_and_support2,
      required String ff_column_curing1,
      required String ff_slab_shuttering1,
      required String mep_fixing_checkq2,
      required String concrete_test_reports6,
      required String gf_column_casting,
      required String gf_block_work_curing,
      required String hight,
      required String gf_slab_support,
      required String slab_beam_honeycomb,
      required String ff_column_casting,
      required String ff_block_work_and_curing,
      required String hight1,
      required String ff_slab_support,
      required String slab_beam_honeycomb1,
      required String ph_column_casting,
      required String ph_block_work_and_curing,
      required String height2,
      required String ph_slab_support,
      required String slab_beam_honeycomb2,
      required String doors_and_windows_point,
      required String spacing1,
      required String slab_curing,
      required String spacing2,
      required String gf_column_cuuring,
      required String ff_column_honeycomb}) async {
    Map data = {
      "prj_id": prj_id,
      "engineer_id": engineer_id,
      "gf_column_steel_setup": gf_column_steel_setup,
      "concrete_test_reports": concrete_test_reports,
      "shuttering_quality": shuttering_quality,
      'gf_slab_steel_setup': gf_slab_steel_setup,
      "slab_concrete_cost": slab_concrete_cost,
      "ff_column_steel_setup": ff_column_steel_setup,
      'concrete_test_reports1': concrete_test_reports1,
      "shuttering_quality1": shuttering_quality1,
      "ff_slab_steel_setup": ff_slab_steel_setup,
      "slab_concrete_cost1": slab_concrete_cost1,
      "ph_column_steel_setup": ph_column_steel_setup,
      "concrete_test_reports3": concrete_test_reports3,
      "shuttering_quality2": shuttering_quality2,
      "ff_slab_steel_setup1": ff_slab_steel_setup1,
      "slab_concrete_cost2": slab_concrete_cost2,
      "spacing": spacing,
      "gf_column_honeycomb": gf_colummn_honeycomb,
      "doors_and_windows_point": doors_and_windows_point,
      "spacing1": spacing1,
      'slab_curing': slab_curing,
      "spacing2": spacing2,
      'ff_column_honeycomb': ff_column_honeycomb,
      'doors_and_windows_point1': doors_and_windows_point1,
      "spacing3": spacing3,
      'slab_curing1': slab_curing1,
      "spacing4": spacing4,
      'ph_column_honeycomb': ph_column_honeycomb,
      "doors_and_windows_point2": doors_and_windows_point2,
      'spacing5': spacing5,
      'slab_curing2': slab_curing2,
      'shuttering_and_support': shuttering_and_support,
      "gf_slab_shuttering": gf_slab_shuttering,
      "gf_column_curing": gf_column_cuuring,
      "mep_fixing_check": mep_fixing_check,
      "concrete_test_reports4": concrete_test_reports4,
      'shuttering_and_support1': shuttering_and_support1,
      "ff_column_curing": ff_column_curing,
      "ff_slab_shuttering": ff_slab_shuttering,
      "mep_fixing_check1": mep_fixing_check1,
      "concrete_test_reports5": concrete_test_reports5,
      "shuttering_and_support2": shuttering_and_support2,
      "ff_column_curing1": ff_column_curing1,
      'ff_slab_shuttering1': ff_slab_shuttering1,
      "mep_fixing_check2": mep_fixing_checkq2,
      "concrete_test_reports6": concrete_test_reports6,
      "gf_column_casting": gf_column_casting,
      "gf_block_work_curing": gf_block_work_curing,
      "hight": hight,
      "gf_slab_support": gf_slab_support,
      "slab_beam_honeycomb": slab_beam_honeycomb,
      "ff_column_casting": ff_column_casting,
      "ff_block_work_and_curing": ff_block_work_and_curing,
      "hight1": hight1,
      "ff_slab_support": ff_slab_support,
      "slab_beam_honeycomb1": slab_beam_honeycomb1,
      "ph_column_casting": ph_column_casting,
      "ph_block_work_and_curing": ph_block_work_and_curing,
      "hight2": height2,
      "ph_slab_support": ph_slab_support,
      "slab_beam_honeycomb2": slab_beam_honeycomb2,
    };
    //encode Map to JSON
    var body = json.encode(data);

    final response = await http.post(
        Uri.parse('http://adil.exouzia.in/api/inspection/third/submit'),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        body: body);

    Map a = json.decode(response.body);

    if (response.statusCode == 200) {
      report_id.$ = a['report']['id'];
      // If the server did return a 200 OK response,
      // then parse the JSON.
      print(response.body);

      return true;
    } else {
      print(response.statusCode);
      print(response.body);
      // If the server did not return a 200 OK response,
      // then throw an exception.
      //throw Exception('Failed to load album');

      return false;
    }
  }

  Future<bool> postInspection4(
      {required String prj_id,
      required String engineer_id,
      required String pipe_and_box_fixing,
      required String wall_foundation,
      required String wall_tiles,
      required String primer_and_putty_work,
      required String paint_finishing_work,
      required String kitchen_fitting,
      required String water_line_supply,
      required String sneak_list,
      required String inside_plaster,
      required String wall_columns,
      required String wiring_and_ac_ducting,
      required String floor_tiles_works,
      required String doors_and_windows_fixing,
      required String landscape_works,
      required String electricity_passing,
      required String final_inspection,
      required String waterproofing,
      required String wall_block_works,
      required String db_dressing_and_roof_wiring,
      required String electricity_items_fixing,
      required String car_parking,
      required String de_mobilization,
      required String documentation_submit,
      required String roof_tiles,
      required String wall_plaster_works,
      required String outside_plaster,
      required String toilets_and_kitchen_items,
      required String ac_and_accessories_fixing,
      required String main_and_pocket_gate,
      required String site_cleaning,
      required String db_and_floor_pipe_and_wiring,
      required String muncipality_approvals}) async {
    Map data = {
      "prj_id": prj_id,
      "engineer_id": engineer_id,
      "pipe_and_box_fixing": pipe_and_box_fixing,
      "wall_foundation": wall_foundation,
      "wall_tiles": wall_tiles,
      "primer_and_putty_work": primer_and_putty_work,
      "paint_finishing_work": paint_finishing_work,
      "kitchen_fittings": kitchen_fitting,
      "water_line_supply": water_line_supply,
      "sneak_list": sneak_list,
      "inside_plaster": inside_plaster,
      "wall_columns": wall_columns,
      "wiring_and_ac_ducting": wiring_and_ac_ducting,
      "floor_tiles_works": floor_tiles_works,
      "doors_and_windows_fixing": doors_and_windows_fixing,
      "landscape_works": landscape_works,
      "electricity_passing": electricity_passing,
      "final_inspection": final_inspection,
      "waterproofing": waterproofing,
      "wall_block_works": wall_block_works,
      "db_and_floor_pipe_and_wiring": db_and_floor_pipe_and_wiring,
      "db_dressing_and_roof_wiring": db_dressing_and_roof_wiring,
      "electricity_items_fixing": electricity_items_fixing,
      "car_parking": car_parking,
      "de_mobilization": de_mobilization,
      "documentation_submit": documentation_submit,
      "roof_tiles": roof_tiles,
      "wall_plaster_works": wall_plaster_works,
      "outside_plaster": outside_plaster,
      "toilets_and_kitchen_items": toilets_and_kitchen_items,
      "ac_and_accessories_fixing": ac_and_accessories_fixing,
      "main_and_pocket_gate": main_and_pocket_gate,
      "site_cleaning": site_cleaning,
      "muncipality_approvals": muncipality_approvals,
    };
    //encode Map to JSON
    var body = json.encode(data);

    final response = await http.post(
        Uri.parse('http://adil.exouzia.in/api/inspection/forth/submit'),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        body: body);

    Map a = json.decode(response.body);

    if (response.statusCode == 200) {
      report_id.$ = a['report']['id'];
      // If the server did return a 200 OK response,
      // then parse the JSON.
      print(response.body);

      return true;
    } else {
      print(response.statusCode);
      print(response.body);
      // If the server did not return a 200 OK response,
      // then throw an exception.
      //throw Exception('Failed to load album');

      return false;
    }
  }

  static String getRandString(int len) {
    var r = Random();
    const _chars =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    return List.generate(len, (index) => _chars[r.nextInt(_chars.length)])
        .join();
  }

  Future<bool> saveInspection(
      String reportid,
      String name,
      String imagePath1,
      String imagePath2,
      String engineersign,
      String contractorsign,
      String remarks,
      String imagePath3,
      String imagePath4,
      String heading1,
      String heading2,
      String heading3,
      String heading4,
      context) async {
    // Map data = {
    //   'doctor_id': user_id.$,
    //   'name': name,
    //   'image': imagePat,
    //   "link": link
    // };
    // var body = json.encode(data);

    var headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    String url = 'http://adil.exouzia.in/api/inspection/save';
    // var headers = Provider.of<AppProvider>(context, listen: false).getHeaders();
    http.Client client = new http.Client();
    var request = new http.MultipartRequest("POST", Uri.parse(url));
    if (imagePath1 != "") {
      File imageFile = new File(imagePath1);
      // String fileName = imageFile.path.split("/").last;
      String ext = imageFile.path.split(".").last;
      String fileName = getRandString(7) + "." + ext;

      var stream = new http.ByteStream(imageFile.openRead());
      var length = await imageFile.length();

      var multipartFile =
          new http.MultipartFile("image1", stream, length, filename: fileName);
      request.files.add(multipartFile);
      request.fields['image1'] = fileName;
    }
    if (imagePath2 != "") {
      File imageFile1 = new File(imagePath2);
      // String fileName = imageFile.path.split("/").last;
      String ext1 = imageFile1.path.split(".").last;
      String fileName1 = getRandString(7) + "." + ext1;

      var stream1 = new http.ByteStream(imageFile1.openRead());
      var length1 = await imageFile1.length();
      var multipartFile1 = new http.MultipartFile("image2", stream1, length1,
          filename: fileName1);
      request.files.add(multipartFile1);
      request.fields['image2'] = fileName1;
    }
    if (imagePath3 != "") {
      File imageFile1 = new File(imagePath3);
      // String fileName = imageFile.path.split("/").last;
      String ext1 = imageFile1.path.split(".").last;
      String fileName1 = getRandString(7) + "." + ext1;

      var stream1 = new http.ByteStream(imageFile1.openRead());
      var length1 = await imageFile1.length();
      var multipartFile1 = new http.MultipartFile("image3", stream1, length1,
          filename: fileName1);
      request.files.add(multipartFile1);
      request.fields['image3'] = fileName1;
    }
    if (imagePath4 != "") {
      File imageFile1 = new File(imagePath4);
      // String fileName = imageFile.path.split("/").last;
      String ext1 = imageFile1.path.split(".").last;
      String fileName1 = getRandString(7) + "." + ext1;

      var stream1 = new http.ByteStream(imageFile1.openRead());
      var length1 = await imageFile1.length();
      var multipartFile1 = new http.MultipartFile("image4", stream1, length1,
          filename: fileName1);
      request.files.add(multipartFile1);
      request.fields['image4'] = fileName1;
    }
    if (engineersign != "") {
      File imageFile2 = new File(engineersign);
      // String fileName = imageFile.path.split("/").last;
      String ext2 = imageFile2.path.split(".").last;
      String fileName2 = getRandString(7) + "." + ext2;

      var stream2 = new http.ByteStream(imageFile2.openRead());
      var length2 = await imageFile2.length();

      var multipartFile2 = new http.MultipartFile(
          "engineer_sign", stream2, length2,
          filename: fileName2);
      request.files.add(multipartFile2);
      request.fields['engineer_sign'] = fileName2;
    }
    if (contractorsign != "") {
      File imageFile3 = new File(contractorsign);
      // String fileName = imageFile.path.split("/").last;
      String ext3 = imageFile3.path.split(".").last;
      String fileName3 = getRandString(7) + "." + ext3;

      var stream3 = new http.ByteStream(imageFile3.openRead());
      var length3 = await imageFile3.length();

      var multipartFile3 = new http.MultipartFile(
          "contrctor_sign", stream3, length3,
          filename: fileName3);
      request.files.add(multipartFile3);
      request.fields['contrctor_sign'] = fileName3;
    }

    request.fields['report_id'] = reportid;
    request.fields['heading1'] = heading1;
    request.fields['heading2'] = heading2;
    request.fields['heading3'] = heading3;
    request.fields['heading4'] = heading4;
    request.fields['name'] = name;
    request.fields['remarks'] = remarks;
    request.headers.addAll(headers);

    // final respond = await request.send();
    var res = await client.send(request);

    if (res.statusCode == 200) {
      http.Response.fromStream(res).then((value) {
        String data = value.body.toString();
        final responsebody = json.decode(data);

        // setState(() {});
      });
      // setState(() {});

      print("Image Uploaded");
      return true;
    } else {
      print(res.statusCode);
      http.Response.fromStream(res).then((value) {
        String data = value.body.toString();
        final responsebody = json.decode(data);
        print(responsebody);
        // setState(() {});
      });
      return false;
      // Utils.showToast("Profile image upload failed", context);
    }
  }

  Future<bool> saveInspection2(
      String reportid,
      String name,
      String imagePath1,
      String imagePath2,
      String engineersign,
      String contractorsign,
      String remarks,
      String imagePath3,
      String imagePath4,
      String heading1,
      String heading2,
      String heading3,
      String heading4,
      context) async {
    // Map data = {
    //   'doctor_id': user_id.$,
    //   'name': name,
    //   'image': imagePat,
    //   "link": link
    // };
    // var body = json.encode(data);

    var headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    String url = 'http://adil.exouzia.in/api/inspection/second/save';
    // var headers = Provider.of<AppProvider>(context, listen: false).getHeaders();
    http.Client client = new http.Client();
    var request = new http.MultipartRequest("POST", Uri.parse(url));
    if (imagePath1 != "") {
      File imageFile = new File(imagePath1);
      // String fileName = imageFile.path.split("/").last;
      String ext = imageFile.path.split(".").last;
      String fileName = getRandString(7) + "." + ext;

      var stream = new http.ByteStream(imageFile.openRead());
      var length = await imageFile.length();

      var multipartFile =
          new http.MultipartFile("image1", stream, length, filename: fileName);
      request.files.add(multipartFile);
      request.fields['image1'] = fileName;
    }
    if (imagePath2 != "") {
      File imageFile1 = new File(imagePath2);
      // String fileName = imageFile.path.split("/").last;
      String ext1 = imageFile1.path.split(".").last;
      String fileName1 = getRandString(7) + "." + ext1;

      var stream1 = new http.ByteStream(imageFile1.openRead());
      var length1 = await imageFile1.length();
      var multipartFile1 = new http.MultipartFile("image2", stream1, length1,
          filename: fileName1);
      request.files.add(multipartFile1);
      request.fields['image2'] = fileName1;
    }
    if (imagePath3 != "") {
      File imageFile1 = new File(imagePath3);
      // String fileName = imageFile.path.split("/").last;
      String ext1 = imageFile1.path.split(".").last;
      String fileName1 = getRandString(7) + "." + ext1;

      var stream1 = new http.ByteStream(imageFile1.openRead());
      var length1 = await imageFile1.length();
      var multipartFile1 = new http.MultipartFile("image3", stream1, length1,
          filename: fileName1);
      request.files.add(multipartFile1);
      request.fields['image3'] = fileName1;
    }
    if (imagePath4 != "") {
      File imageFile1 = new File(imagePath4);
      // String fileName = imageFile.path.split("/").last;
      String ext1 = imageFile1.path.split(".").last;
      String fileName1 = getRandString(7) + "." + ext1;

      var stream1 = new http.ByteStream(imageFile1.openRead());
      var length1 = await imageFile1.length();
      var multipartFile1 = new http.MultipartFile("image4", stream1, length1,
          filename: fileName1);
      request.files.add(multipartFile1);
      request.fields['image4'] = fileName1;
    }
    if (engineersign != "") {
      File imageFile2 = new File(engineersign);
      // String fileName = imageFile.path.split("/").last;
      String ext2 = imageFile2.path.split(".").last;
      String fileName2 = getRandString(7) + "." + ext2;

      var stream2 = new http.ByteStream(imageFile2.openRead());
      var length2 = await imageFile2.length();

      var multipartFile2 = new http.MultipartFile(
          "engineer_sign", stream2, length2,
          filename: fileName2);
      request.files.add(multipartFile2);
      request.fields['engineer_sign'] = fileName2;
    }
    if (contractorsign != "") {
      File imageFile3 = new File(contractorsign);
      // String fileName = imageFile.path.split("/").last;
      String ext3 = imageFile3.path.split(".").last;
      String fileName3 = getRandString(7) + "." + ext3;

      var stream3 = new http.ByteStream(imageFile3.openRead());
      var length3 = await imageFile3.length();

      var multipartFile3 = new http.MultipartFile(
          "contrctor_sign", stream3, length3,
          filename: fileName3);
      request.files.add(multipartFile3);
      request.fields['contrctor_sign'] = fileName3;
    }

    request.fields['report_id'] = reportid;
    request.fields['heading1'] = heading1;
    request.fields['heading2'] = heading2;
    request.fields['heading3'] = heading3;
    request.fields['heading4'] = heading4;
    request.fields['name'] = name;
    request.fields['remarks'] = remarks;
    request.headers.addAll(headers);

    // final respond = await request.send();
    var res = await client.send(request);

    if (res.statusCode == 200) {
      http.Response.fromStream(res).then((value) {
        String data = value.body.toString();
        final responsebody = json.decode(data);

        // setState(() {});
      });
      // setState(() {});

      print("Image Uploaded");
      return true;
    } else {
      print(res.statusCode);
      http.Response.fromStream(res).then((value) {
        String data = value.body.toString();
        final responsebody = json.decode(data);
        print(responsebody);
        // setState(() {});
      });
      return false;
      // Utils.showToast("Profile image upload failed", context);
    }
  }

  Future<bool> saveInspection3(
      String reportid,
      String name,
      String imagePath1,
      String imagePath2,
      String engineersign,
      String contractorsign,
      String remarks,
      String imagePath3,
      String imagePath4,
      String heading1,
      String heading2,
      String heading3,
      String heading4,
      context) async {
    // Map data = {
    //   'doctor_id': user_id.$,
    //   'name': name,
    //   'image': imagePat,
    //   "link": link
    // };
    // var body = json.encode(data);

    var headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    String url = 'http://adil.exouzia.in/api/inspection/third/save';
    // var headers = Provider.of<AppProvider>(context, listen: false).getHeaders();
    http.Client client = new http.Client();
    var request = new http.MultipartRequest("POST", Uri.parse(url));
    if (imagePath1 != "") {
      File imageFile = new File(imagePath1);
      // String fileName = imageFile.path.split("/").last;
      String ext = imageFile.path.split(".").last;
      String fileName = getRandString(7) + "." + ext;

      var stream = new http.ByteStream(imageFile.openRead());
      var length = await imageFile.length();

      var multipartFile =
          new http.MultipartFile("image1", stream, length, filename: fileName);
      request.files.add(multipartFile);
      request.fields['image1'] = fileName;
    }
    if (imagePath2 != "") {
      File imageFile1 = new File(imagePath2);
      // String fileName = imageFile.path.split("/").last;
      String ext1 = imageFile1.path.split(".").last;
      String fileName1 = getRandString(7) + "." + ext1;

      var stream1 = new http.ByteStream(imageFile1.openRead());
      var length1 = await imageFile1.length();
      var multipartFile1 = new http.MultipartFile("image2", stream1, length1,
          filename: fileName1);
      request.files.add(multipartFile1);
      request.fields['image2'] = fileName1;
    }
    if (imagePath3 != "") {
      File imageFile1 = new File(imagePath3);
      // String fileName = imageFile.path.split("/").last;
      String ext1 = imageFile1.path.split(".").last;
      String fileName1 = getRandString(7) + "." + ext1;

      var stream1 = new http.ByteStream(imageFile1.openRead());
      var length1 = await imageFile1.length();
      var multipartFile1 = new http.MultipartFile("image3", stream1, length1,
          filename: fileName1);
      request.files.add(multipartFile1);
      request.fields['image3'] = fileName1;
    }
    if (imagePath4 != "") {
      File imageFile1 = new File(imagePath4);
      // String fileName = imageFile.path.split("/").last;
      String ext1 = imageFile1.path.split(".").last;
      String fileName1 = getRandString(7) + "." + ext1;

      var stream1 = new http.ByteStream(imageFile1.openRead());
      var length1 = await imageFile1.length();
      var multipartFile1 = new http.MultipartFile("image4", stream1, length1,
          filename: fileName1);
      request.files.add(multipartFile1);
      request.fields['image4'] = fileName1;
    }
    if (engineersign != "") {
      File imageFile2 = new File(engineersign);
      // String fileName = imageFile.path.split("/").last;
      String ext2 = imageFile2.path.split(".").last;
      String fileName2 = getRandString(7) + "." + ext2;

      var stream2 = new http.ByteStream(imageFile2.openRead());
      var length2 = await imageFile2.length();

      var multipartFile2 = new http.MultipartFile(
          "engineer_sign", stream2, length2,
          filename: fileName2);
      request.files.add(multipartFile2);
      request.fields['engineer_sign'] = fileName2;
    }
    if (contractorsign != "") {
      File imageFile3 = new File(contractorsign);
      // String fileName = imageFile.path.split("/").last;
      String ext3 = imageFile3.path.split(".").last;
      String fileName3 = getRandString(7) + "." + ext3;

      var stream3 = new http.ByteStream(imageFile3.openRead());
      var length3 = await imageFile3.length();

      var multipartFile3 = new http.MultipartFile(
          "contrctor_sign", stream3, length3,
          filename: fileName3);
      request.files.add(multipartFile3);
      request.fields['contrctor_sign'] = fileName3;
    }

    request.fields['report_id'] = reportid;
    request.fields['heading1'] = heading1;
    request.fields['heading2'] = heading2;
    request.fields['heading3'] = heading3;
    request.fields['heading4'] = heading4;
    request.fields['name'] = name;
    request.fields['remarks'] = remarks;
    request.headers.addAll(headers);

    // final respond = await request.send();
    var res = await client.send(request);

    if (res.statusCode == 200) {
      http.Response.fromStream(res).then((value) {
        String data = value.body.toString();
        final responsebody = json.decode(data);

        // setState(() {});
      });
      // setState(() {});

      print("Image Uploaded");
      return true;
    } else {
      print(res.statusCode);
      http.Response.fromStream(res).then((value) {
        String data = value.body.toString();
        final responsebody = json.decode(data);
        print(responsebody);
        // setState(() {});
      });
      return false;
      // Utils.showToast("Profile image upload failed", context);
    }
  }

  Future<bool> saveInspection4(
      String reportid,
      String name,
      String imagePath1,
      String imagePath2,
      String engineersign,
      String contractorsign,
      String remarks,
      String imagePath3,
      String imagePath4,
      String heading1,
      String heading2,
      String heading3,
      String heading4,
      context) async {
    // Map data = {
    //   'doctor_id': user_id.$,
    //   'name': name,
    //   'image': imagePat,
    //   "link": link
    // };
    // var body = json.encode(data);

    var headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    String url = 'http://adil.exouzia.in/api/inspection/forth/save';
    // var headers = Provider.of<AppProvider>(context, listen: false).getHeaders();
    http.Client client = new http.Client();
    var request = new http.MultipartRequest("POST", Uri.parse(url));
    if (imagePath1 != "") {
      File imageFile = new File(imagePath1);
      // String fileName = imageFile.path.split("/").last;
      String ext = imageFile.path.split(".").last;
      String fileName = getRandString(7) + "." + ext;

      var stream = new http.ByteStream(imageFile.openRead());
      var length = await imageFile.length();

      var multipartFile =
          new http.MultipartFile("image1", stream, length, filename: fileName);
      request.files.add(multipartFile);
      request.fields['image1'] = fileName;
    }
    if (imagePath2 != "") {
      File imageFile1 = new File(imagePath2);
      // String fileName = imageFile.path.split("/").last;
      String ext1 = imageFile1.path.split(".").last;
      String fileName1 = getRandString(7) + "." + ext1;

      var stream1 = new http.ByteStream(imageFile1.openRead());
      var length1 = await imageFile1.length();
      var multipartFile1 = new http.MultipartFile("image2", stream1, length1,
          filename: fileName1);
      request.files.add(multipartFile1);
      request.fields['image2'] = fileName1;
    }
    if (imagePath3 != "") {
      File imageFile1 = new File(imagePath3);
      // String fileName = imageFile.path.split("/").last;
      String ext1 = imageFile1.path.split(".").last;
      String fileName1 = getRandString(7) + "." + ext1;

      var stream1 = new http.ByteStream(imageFile1.openRead());
      var length1 = await imageFile1.length();
      var multipartFile1 = new http.MultipartFile("image3", stream1, length1,
          filename: fileName1);
      request.files.add(multipartFile1);
      request.fields['image3'] = fileName1;
    }
    if (imagePath4 != "") {
      File imageFile1 = new File(imagePath4);
      // String fileName = imageFile.path.split("/").last;
      String ext1 = imageFile1.path.split(".").last;
      String fileName1 = getRandString(7) + "." + ext1;

      var stream1 = new http.ByteStream(imageFile1.openRead());
      var length1 = await imageFile1.length();
      var multipartFile1 = new http.MultipartFile("image4", stream1, length1,
          filename: fileName1);
      request.files.add(multipartFile1);
      request.fields['image4'] = fileName1;
    }
    if (engineersign != "") {
      File imageFile2 = new File(engineersign);
      // String fileName = imageFile.path.split("/").last;
      String ext2 = imageFile2.path.split(".").last;
      String fileName2 = getRandString(7) + "." + ext2;

      var stream2 = new http.ByteStream(imageFile2.openRead());
      var length2 = await imageFile2.length();

      var multipartFile2 = new http.MultipartFile(
          "engineer_sign", stream2, length2,
          filename: fileName2);
      request.files.add(multipartFile2);
      request.fields['engineer_sign'] = fileName2;
    }
    if (contractorsign != "") {
      File imageFile3 = new File(contractorsign);
      // String fileName = imageFile.path.split("/").last;
      String ext3 = imageFile3.path.split(".").last;
      String fileName3 = getRandString(7) + "." + ext3;

      var stream3 = new http.ByteStream(imageFile3.openRead());
      var length3 = await imageFile3.length();

      var multipartFile3 = new http.MultipartFile(
          "contrctor_sign", stream3, length3,
          filename: fileName3);
      request.files.add(multipartFile3);
      request.fields['contrctor_sign'] = fileName3;
    }

    request.fields['report_id'] = reportid;
    request.fields['heading1'] = heading1;
    request.fields['heading2'] = heading2;
    request.fields['heading3'] = heading3;
    request.fields['heading4'] = heading4;
    request.fields['name'] = name;
    request.fields['remarks'] = remarks;
    request.headers.addAll(headers);

    // final respond = await request.send();
    var res = await client.send(request);

    if (res.statusCode == 200) {
      http.Response.fromStream(res).then((value) {
        String data = value.body.toString();
        final responsebody = json.decode(data);

        // setState(() {});
      });
      // setState(() {});

      print("Image Uploaded");
      return true;
    } else {
      print(res.statusCode);
      http.Response.fromStream(res).then((value) {
        String data = value.body.toString();
        final responsebody = json.decode(data);
        print(responsebody);
        // setState(() {});
      });
      return false;
      // Utils.showToast("Profile image upload failed", context);
    }
  }
}

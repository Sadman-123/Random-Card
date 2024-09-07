import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class BossController extends GetxController{
  RxList<dynamic>arr=[].obs;
  @override
  void onInit()
  {
    super.onInit();
    getData();
  }
  void getData() async {
    var uri = Uri.parse("https://randomuser.me/api/?results=10");
    var res = await http.get(uri);
    var data = jsonDecode(res.body);
    arr.assignAll(data['results']);
  }
}

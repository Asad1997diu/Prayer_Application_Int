import 'package:get/get.dart';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import '../models/model.dart';

class PrayerController extends GetxController {
  var isloading = true.obs;
  Item? item;

  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  fetchData() async{
    try {
      isloading(true);
      http.Response response = await http.get(
          Uri.tryParse('https://muslimsalat.com/london.json')!);
      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);

        item = Item.fromJson(result);
      }
      else {}
    }
    catch(e){
      print('Error while getting data is $e');
    }
    finally{
      isloading(false);
    }
  }
}


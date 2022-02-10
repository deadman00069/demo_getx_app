import 'dart:convert';

import 'package:aveg_project/config/app_config.dart';
import 'package:aveg_project/models/CategoryModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

Future<List<CategoryModel>?> getCategoriesRepo() async {
  print('I am cate');
  Uri url = Uri.parse(AppConfig.BASEAPIURL + 'get-all-category');
  try {
    var response = await http.get(
      url,
      headers: {'Accept': 'application/json'},
    );
    // print(response.statusCode);
    // print(response.body);
    if (response.statusCode == 200) {
      List<CategoryModel> categories = [];
      for (Map data in json.decode(response.body)['data']) {
        categories.add(CategoryModel.fromJson(data));
      }
      return categories;
    }
    return null;
  } on Exception catch (e) {
    Get.snackbar('Error', e.toString(), backgroundColor: Colors.red);
    return null;
  }
}

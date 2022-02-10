import 'dart:convert';

import 'package:aveg_project/config/app_config.dart';
import 'package:aveg_project/models/BundleModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

Future<List<BundleModel>?> getAllBundlesWithProductsRepo() async {
  Uri url = Uri.parse(AppConfig.BASEAPIURL + 'get-all-bundles-with-products');
  try {
    final response = await http.get(
      url,
      headers: {'Accept': 'application/json'},
    );
    debugPrint(response.body);
    print(response.statusCode);
    if (response.statusCode == 200) {
      final List<BundleModel> bundles = [];
      for (Map data in json.decode(response.body)['data']) {
        bundles.add(BundleModel.fromJson(data));
      }
      return bundles;
    }
    return null;
  } on Exception catch (e) {
    Get.snackbar('Error', e.toString(), backgroundColor: Colors.red);
    return null;
  }
}

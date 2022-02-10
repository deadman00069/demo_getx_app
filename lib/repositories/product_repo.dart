import 'dart:convert';

import 'package:aveg_project/config/app_config.dart';
import 'package:aveg_project/models/ProductModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

Future<List<ProductModel>?> getProductsRepo() async {
  Uri url = Uri.parse(AppConfig.BASEAPIURL + 'get-all-product');
  try {
    final response = await http.get(
      url,
      headers: {'Accept': 'application/json'},
    );
    if (response.statusCode == 200) {
      final List<ProductModel> products = [];
      for (Map data in json.decode(response.body)['data']) {
        products.add(ProductModel.fromJson(data));
      }
      return products;
    }
    return null;
  } on Exception catch (e) {
    Get.snackbar('Error', e.toString(), backgroundColor: Colors.red);
    return null;
  }
}

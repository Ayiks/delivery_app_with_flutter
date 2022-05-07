import 'package:flutter/material.dart';
import 'package:food_delivery/data/repository/popular_product_repo.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:get/get.dart';

import '../models/products_model.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});

  List<dynamic> _popularProductsList = [];
  List<dynamic> get popularProductList => _popularProductsList;
  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  int _quantity = 0;
  int get quantity => _quantity;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      print('got products');
      _popularProductsList = [];
      _popularProductsList.addAll(Product.fromJson(response.body).products);
      print(_popularProductsList);
      _isLoaded = true;
      update();
    } else {
      print('Failed to get products');
    }
  }

  void setQuantity(bool isIncrement) {
    if (isIncrement) {
      _quantity = checkQuantity(_quantity + 1);
    } else {
      _quantity = checkQuantity(_quantity - 1);
    }
    update();
  }

  int checkQuantity(int quantity) {
    if (quantity < 0) {
      Get.snackbar('Item Count', 'Can\'t be below zero',
          backgroundColor: AppColors.mainColor, colorText: Colors.white);
      return 0;
    } else if (quantity > 20) {
      return 20;
    } else {
      return quantity;
    }
  }

  void initProduct() {
    _quantity = 0;
  }
}

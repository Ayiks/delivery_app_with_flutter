import 'package:food_delivery/data/repository/popular_product_repo.dart';
import 'package:food_delivery/data/repository/recommended_product_repo.dart';
import 'package:get/get.dart';

import '../models/products_model.dart';

class RecommendedProductController extends GetxController {
  final RecommendedProductRepo recommendedProductRepo;
  RecommendedProductController({required this.recommendedProductRepo});

  List<dynamic> _recommendedProductsList = [];
  List<dynamic> get recommendedProductList => _recommendedProductsList;
  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  Future<void> getRecommendedProductList() async {
    Response response = await recommendedProductRepo.getRecommendedProductList();
    if (response.statusCode == 200) {
      print('got products recommended');
      _recommendedProductsList = [];
      _recommendedProductsList.addAll(Product.fromJson(response.body).products);
      print(_recommendedProductsList);
      _isLoaded = true;
      update();
    } else {
       print('failed to get products recommended');
    }
  }
}

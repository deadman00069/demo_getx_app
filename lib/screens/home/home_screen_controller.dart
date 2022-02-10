import 'package:aveg_project/models/BundleModel.dart';
import 'package:aveg_project/models/CategoryModel.dart';
import 'package:aveg_project/models/ProductModel.dart';
import 'package:aveg_project/repositories/bundle_repo.dart';
import 'package:aveg_project/repositories/category_repo.dart';
import 'package:aveg_project/repositories/product_repo.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  List<CategoryModel>? categories;
  List<BundleModel>? bundles;
  List<ProductModel>? products;

  var categoryLoading = false.obs;
  var bundleLoading = false.obs;
  var productLoading = false.obs;

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    getCategories();
    getAllBundlesWithProducts();
    getAllProducts();
  }

  void getCategories() async {
    categoryLoading.value = true;
    categories = <CategoryModel>[].obs;
    final response = await getCategoriesRepo();
    if (response != null) {
      categories!.assignAll(response);
      categoryLoading.value = false;
    }
  }

  void getAllBundlesWithProducts() async {
    bundleLoading.value = true;
    bundles = <BundleModel>[].obs;
    final response = await getAllBundlesWithProductsRepo();
    if (response != null) {
      bundles!.assignAll(response);
      bundleLoading.value = false;
    }
  }

  void getAllProducts() async {
    productLoading.value = true;
    products = <ProductModel>[].obs;
    final response = await getProductsRepo();
    if (response != null) {
      products!.assignAll(response);
      productLoading.value = false;
    }
  }
}


import 'package:flutter/material.dart';
import 'package:simpleui/presentation/cart_screen/CartScreen.dart';
import 'package:simpleui/presentation/home_screen/HomeScreen.dart';
import 'package:simpleui/presentation/product_details/ProductDetails.dart';
import 'package:simpleui/presentation/resources/string_manager.dart';

class Routes {
  static const String homePage = "/";
  static const String productDetails = "/productDetails";
  static const String cart = "/cart";

}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homePage:
        return MaterialPageRoute(builder: (_) =>  HomePage());
      case Routes.productDetails:
        return MaterialPageRoute(builder: (_) =>   const ProductDetails());
      case Routes.cart:
        return MaterialPageRoute(builder: (_) =>   const CartScreen());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.noRouteFound),
        ),
        body: const Center(child: Text(AppStrings.noRouteFound)),
      ),
    );
  }
}

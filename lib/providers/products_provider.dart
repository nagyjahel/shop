import 'package:flutter/material.dart';

import 'product.dart';

class Products with ChangeNotifier{
  final List<Product>  _items = [
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
      'https://ae01.alicdn.com/kf/H54c78b8e47bb405b9140254af4037fc1m/Black-Gold-Keychain-Print-Shirt-Men-Luxury-Designer-Shirt-Mens-Dress-Club-Baroque-Party-Shirts-For.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxn9-7EdEYEnssRoTaEbc6d17pmReeO1auchqgDuxPEo_tzr4C8Ib1cOtbsKolR0rNvfhbc7kO&usqp=CAc',
    ),
    Product(
      id: 'p3',
      title: 'Yellow Scarf',
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl:
      'https://cdn.shopify.com/s/files/1/0286/4880/products/Cathayana-Shibori-Silk-Zigzag-Scarf-in-Gold-and-Black-Artistic-Designer-Hand-Dyed-and-Pleated-Silk-Scarf.jpg?v=1550768980',
    ),
    Product(
      id: 'p4',
      title: 'A Pan',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
      'https://assets.epicurious.com/photos/5e348b43293cc300098ba118/5:4/w_3787,h_3030,c_limit/OurPan_HERO_012920_226.jpg',
    ),
  ];

  var _showFavoritesOnly = false;

  List<Product> get items{
    return [..._items];
  }

  List<Product> get favoriteItems{
    return [..._items].where((element) => element.isFavorite).toList();
  }


  Product findById(String id){
    return _items.firstWhere((element) => element.id == id);
  }


  void addProduct(){

  }
}
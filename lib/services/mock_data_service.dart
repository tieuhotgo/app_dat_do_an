import '../models/category_model.dart';
import '../models/food_model.dart';

class MockDataService {
  static const List<CategoryModel> categories = [
    CategoryModel(title: 'Burger', imagePath: 'assets/burger.png'),
    CategoryModel(title: 'Pizza', imagePath: 'assets/pizza.png'),
    CategoryModel(title: 'Healthy', imagePath: 'assets/salad.png'),
    CategoryModel(title: 'Đồ uống', imagePath: 'assets/coffee.png'),
  ];

  static const List<FoodModel> favoriteFoods = [
    FoodModel(
      name: 'Burger bò',
      description: 'Phô mai và rau tươi',
      imagePath: 'assets/burger.png',
      price: '69.000đ',
    ),
    FoodModel(
      name: 'Pizza phô mai',
      description: 'Đế mỏng, size nhỏ',
      imagePath: 'assets/pizza.png',
      price: '89.000đ',
    ),
  ];
}

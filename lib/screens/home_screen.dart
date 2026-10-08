import 'package:flutter/material.dart';

import '../services/mock_data_service.dart';
import '../widgets/promo_banner.dart';
import '../widgets/category_widget.dart';
import '../widgets/food_card.dart';
import '../widgets/combo_card.dart';
import '../widgets/bottom_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF8F5),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Giao đến',
                        style: TextStyle(
                          color: Color(0xFF8C867E),
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Row(
                        children: [
                          Image.asset(
                            'assets/location.png',
                            width: 14,
                            height: 14,
                          ),
                          const SizedBox(width: 6),
                          const Text(
                            '24 Nguyễn Trãi',
                            style: TextStyle(
                              color: Color(0xFF292824),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Image.asset('assets/bell.png', width: 24, height: 24),
                ],
              ),
              const SizedBox(height: 18),

              const Text(
                'Hôm nay ăn gì?',
                style: TextStyle(
                  color: Color(0xFF292824),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                'Món ngon, giao nhanh đến bạn',
                style: TextStyle(color: Color(0xFF8C867E), fontSize: 13),
              ),
              const SizedBox(height: 18),

              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  children: [
                    Image.asset('assets/search.png', width: 18, height: 18),
                    const SizedBox(width: 10),
                    const Text(
                      'Tìm món ăn hoặc quán yêu thích',
                      style: TextStyle(color: Color(0xFF8C867E), fontSize: 13),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              const PromoBanner(),
              const SizedBox(height: 24),

              const Text(
                'Danh mục',
                style: TextStyle(
                  color: Color(0xFF292824),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 14),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: MockDataService.categories
                    .map((cat) => CategoryWidget(category: cat))
                    .toList(),
              ),
              const SizedBox(height: 24),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Món được yêu thích',
                    style: TextStyle(
                      color: Color(0xFF292824),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Xem tất cả',
                    style: TextStyle(color: Color(0xFF8C867E), fontSize: 12),
                  ),
                ],
              ),
              const SizedBox(height: 14),
              Row(
                children: [
                  Expanded(
                    child: FoodCard(food: MockDataService.favoriteFoods[0]),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: FoodCard(food: MockDataService.favoriteFoods[1]),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              const Text(
                'Combo tiết kiệm',
                style: TextStyle(
                  color: Color(0xFF292824),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 14),
              const ComboCard(),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}

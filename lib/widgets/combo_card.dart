import 'package:flutter/material.dart';

class ComboCard extends StatelessWidget {
  const ComboCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(17),
      ),
      child: Row(
        children: [
          Container(
            width: 65,
            height: 65,
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: const Color(0xFFF3EFEA),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Image.asset('assets/noodles.png', fit: BoxFit.contain),
          ),
          const SizedBox(width: 14),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mì trộn và đồ uống',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF292824),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Combo trưa chỉ 79.000đ',
                  style: TextStyle(fontSize: 12, color: Color(0xFF8C867E)),
                ),
              ],
            ),
          ),
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: const Color(0xFFF5CB72),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Image.asset('assets/arrow.png', width: 14, height: 14),
            ),
          ),
        ],
      ),
    );
  }
}

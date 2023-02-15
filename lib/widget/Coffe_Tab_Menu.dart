import 'package:flutter/material.dart';

class CoffeTabMenus extends StatelessWidget {
  final String TypeCoffee;
  final bool isSelected;
  final VoidCallback onTap;
  const CoffeTabMenus({
    super.key,
    required this.TypeCoffee,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Text(
          TypeCoffee,
          style: TextStyle(
            fontFamily: 'Quesha',
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.green : Colors.white,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CardListCofe extends StatefulWidget {
  final String imagePath;
  final String price;
  final String name;
  const CardListCofe({
    super.key,
    required this.imagePath,
    required this.price,
    required this.name,
  });

  @override
  State<CardListCofe> createState() => _CardListCofeState();
}

class _CardListCofeState extends State<CardListCofe> {
  late String coffeImagePath;
  late String coffePrice;
  late String coffeName;

  @override
  void initState() {
    super.initState();
    coffeImagePath = widget.imagePath;
    coffePrice = widget.price;
    coffeName = widget.name;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Container(
        padding: const EdgeInsets.only(
          top: 4.0,
          bottom: 10,
          right: 5,
          left: 5,
        ),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black54.withOpacity(0.2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // --- Coffe Image ---
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                coffeImagePath,
              ),
            ),

            // --- Coffee Name ---
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    coffeName,
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Quesha',
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'With Chocolate',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              ),
            ),

            // --- Coffee Price ---
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$ $coffePrice',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Quesha',
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Container(
                      padding: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Icon(Icons.add),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

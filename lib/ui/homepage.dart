import 'package:coffe_app_ui_dark/widget/Card_List_Cofe.dart';
import 'package:coffe_app_ui_dark/widget/Coffe_Tab_Menu.dart';
import 'package:coffe_app_ui_dark/widget/Special_List.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  int _selectedIndex = 0;
  final List<IconData> _icons = const [
    Icons.home,
    Icons.favorite,
    Icons.shopping_cart,
    Icons.person,
  ];
  final List<Color> _colors = const [
    Colors.green,
    Colors.green,
    Colors.green,
    Colors.green,
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Coffe List Tab
  final List CoffeType = [
    // [Coffe Type dan Selected]
    [
      'Cappucino',
      true,
    ],
    [
      'Espresso',
      false,
    ],
    [
      'Latte',
      false,
    ],
    [
      'Flat White',
      false,
    ],
    [
      'Mocha',
      false,
    ],
    [
      'Americano',
      false,
    ],
  ];

  // user tab menu coffe
  void CoffeTypeTabSelected(int index) {
    setState(() {
      // Loop ketika tab dipilih atau diklik user
      for (var i = 0; i < CoffeType.length; i++) {
        CoffeType[i][1] = false;
      }
      CoffeType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(Icons.person),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // --- tulisan Find The Best Your Coffee ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Find The Best Your Coffee',
                style: TextStyle(
                  fontFamily: 'Quesha',
                  fontSize: 50,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(height: 10),

            // --- Search Bar ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search Your Coffee',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  suffixIcon: Icon(Icons.mic_none, color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.1),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),

            // --- Horizontal Tab List Menu ---
            Container(
              height: 30,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: CoffeType.length,
                itemBuilder: ((context, index) {
                  return CoffeTabMenus(
                    TypeCoffee: CoffeType[index][0],
                    isSelected: CoffeType[index][1],
                    onTap: () {
                      CoffeTypeTabSelected(index);
                    },
                  );
                }),
              ),
            ),

            SizedBox(height: 10.0),

            // --- Horizontal List ---
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  CardListCofe(
                    imagePath: 'assets/images/cappucino1.jpg',
                    price: '5.00',
                    name: 'Cappucino + Water',
                  ),
                  CardListCofe(
                    imagePath: 'assets/images/cappucino2.jpg',
                    price: '5.00',
                    name: 'Cappucino Latte',
                  ),
                  CardListCofe(
                    imagePath: 'assets/images/cappucino3.jpg',
                    price: '5.00',
                    name: 'Cappucino Milk',
                  ),
                ],
              ),
            ),
            SpecialList(),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        animationDuration: const Duration(milliseconds: 500),
        color: Colors.transparent,
        buttonBackgroundColor: Colors.white,
        items: List.generate(
          _icons.length,
          (index) => Icon(
            _icons[index],
            color: _selectedIndex == index ? Colors.black : _colors[index],
          ),
        ),
        onTap: _onItemTapped,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SpecialList extends StatelessWidget {
  const SpecialList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  "Spesial For You",
                  style: TextStyle(
                    fontFamily: 'Quesha',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    "See All",
                    style: TextStyle(fontSize: 22, fontFamily: 'Quesha'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0, left: 5),
                    child: Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            bottom: 15.0,
          ),
          height: 140,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black54.withOpacity(0.2),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            boxShadow: [
              BoxShadow(
                color: Colors.transparent.withOpacity(0.05),
                spreadRadius: 3,
                blurRadius: 3,
                offset: Offset(5, 5),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/cappucino1.jpg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    topLeft: Radius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(width: 4.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "5 Coffe Beans You Must Try!",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Quesha',
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontFamily: 'Quesha',
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

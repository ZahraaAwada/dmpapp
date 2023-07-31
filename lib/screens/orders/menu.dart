import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'ابحث عن وليمتك المفضلة',
                  hintTextDirection: TextDirection.rtl,
                  suffixIcon: Icon(Icons.search),
                  prefixIcon: Icon(Icons.tune),
                  border: OutlineInputBorder(
                    //borderSide: const BorderSide()
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}

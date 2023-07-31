import 'package:dmp_app/screens/orders/profile.dart';
import 'package:flutter/material.dart';

import 'orders/basket.dart';
import 'orders/home.dart';
import 'orders/menu.dart';

class Navigate extends StatefulWidget {
  const Navigate({Key? key}) : super(key: key);

  @override
  State<Navigate> createState() => _NavigateState();
}

class _NavigateState extends State<Navigate> {

  int index = 0 ;
  final screens = [
    const Profile(),
    const Menu(),
    const Basket(),
    const Home(),
  ];

  String _selectedValue = 'حي الورود, السعودية' ;
  List<String> _items = ['حي الورود, السعودية' , 'جدة' , 'الرياض'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: Icon(Icons.notifications),
        actions: [
          Padding(padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 25.0,
              backgroundImage: NetworkImage('https://cdn2.psychologytoday.com/assets/styles/manual_crop_1_91_1_1528x800/public/field_blog_entry_images/2017-09/shutterstock_243101992.jpg?itok=nKwkA392'),
            ),
          )
        ],
        title: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Text('توصيل الى', style: TextStyle(fontSize: 15.0),)],),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                DropdownButton(value: _selectedValue,
                    items: _items.map((item) => DropdownMenuItem(value: item, child: Text(item))).toList(),
                    //items: _items.map((item) => DropdownMenuItem(value: ,child: Text(item))),
                    onChanged: (value){
                      setState(() {
                        _selectedValue = value!;
                      });
                    })
              ],
            )
          ],
        ),
      ),

      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.orange,
          //labelTextStyle:
        ),
        child: NavigationBar(
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() =>
            this.index = index
          ),
          destinations: [
            NavigationDestination(icon: Icon(Icons.person), label: 'حسابي'),
            NavigationDestination(icon: Icon(Icons.receipt_outlined), label: 'السله'),
            NavigationDestination(icon: Icon(Icons.shopping_bag_outlined), label: 'السلة'),
            NavigationDestination(icon: Icon(Icons.home), label: 'الرئيسية')
          ],
        ),
      ),
    );
  }
}

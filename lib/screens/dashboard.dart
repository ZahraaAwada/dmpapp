import 'package:flutter/material.dart';

import 'orders/profile.dart';
import 'orders/basket.dart';
import 'orders/home.dart';
import 'orders/menu.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();

}

class _DashboardState extends State<Dashboard> {
  int iconSelected = 0;
  final List<Widget> navigation = [
    const Home(),
    const Basket(),
    const Menu(),
    const Profile(),
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

      body: Padding(
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
      ) ,

      bottomNavigationBar: Container(
        height: 75,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.white),
        child: Row(
          children: [
            buildBottomNavigationBarItem(
              label: 'حسابي',
              icon: Icon(Icons.person) ,
              index: 0,
            ),
            buildBottomNavigationBarItem(
              label: 'السلة',
              //icon:'Icons.shopping_bag_outlined',
              icon: Icon(Icons.receipt_outlined),
              index: 1,
            ),
            buildBottomNavigationBarItem(
              label: 'السلة',
              icon:Icon(Icons.shopping_bag_outlined),
              //icon: 'Icons.receipt_outlined',
              index: 2,
            ),
            buildBottomNavigationBarItem(
              label: 'الرئيسية',
              icon: Icon(Icons.home),
              index: 3,
            ),
          ],
        ),
      ),


    );
  }


  Widget buildBottomNavigationBarItem({
    required Icon icon,
    required String label,
    required int index,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            iconSelected = index;
          });
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon as IconData?,
              color: iconSelected == index ? Colors.orange : Colors.grey,
            ),
            Text(
              label,
              style: TextStyle(
                color: iconSelected == index ? Colors.orange : Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}

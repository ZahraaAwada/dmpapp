import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
      ),
      child: ListView(
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
          ClipRRect( borderRadius: BorderRadius.circular(100.0),
              child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgfJ94jztx7RIbSH4qIIx9RGokkMafnCX66A&usqp=CAU', )
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                    child:
                    Text('عرض الكل',textAlign: TextAlign.left
                    )),
                Expanded(child: Text('المطاعم ' , textAlign: TextAlign.right,  style: TextStyle(fontSize: 30))
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child:  ClipRRect( borderRadius: BorderRadius.circular(30.0),
                child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgfJ94jztx7RIbSH4qIIx9RGokkMafnCX66A&usqp=CAU', )
            ),
    ),

          Padding(
            padding: const EdgeInsets.all(25.0),
            child:  ClipRRect( borderRadius: BorderRadius.circular(30.0),
                child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgfJ94jztx7RIbSH4qIIx9RGokkMafnCX66A&usqp=CAU', )
            ),
          ),
        ],
      ),
    );
  }
}

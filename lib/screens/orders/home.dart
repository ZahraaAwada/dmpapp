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
      //padding: const EdgeInsets.symmetric(vertical: 10.0),
      //margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      decoration: BoxDecoration(
          //borderRadius: BorderRadius.circular(0),
          color: Color(0xFFE6E6E6)),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'ابحث عن وليمتك المفضلة',
                hintTextDirection: TextDirection.rtl,
                hintStyle: TextStyle(color: Colors.black26),
                suffixIcon: Icon(Icons.search),
                prefixIcon: Icon(Icons.tune),
                // border: InputBorder.none,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              //margin: EdgeInsets.only(right: 30) ,
              decoration: BoxDecoration(
                boxShadow:[ BoxShadow(
                  color: Colors.black26,
                  offset: Offset(7.0, 0.0),
                  blurRadius: 8,
                  //blurStyle: BlurStyle.normal,
                )] , borderRadius: BorderRadius.circular(30),

              ),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgfJ94jztx7RIbSH4qIIx9RGokkMafnCX66A&usqp=CAU',
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 220,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.orange),
                      ),
                      onPressed: () {},
                      child: Text(
                        'اطلب الان',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(child: Text('عرض الكل', textAlign: TextAlign.left)),
                Expanded(child: Text('المطاعم ', textAlign: TextAlign.right, style: TextStyle(fontSize: 30)))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                //margin: EdgeInsets.only(right: 30),
                decoration: BoxDecoration(
                  boxShadow:[ BoxShadow(
                    color: Colors.black26,
                    offset: Offset(7.0, 0.0),
                    blurRadius: 8,
                    //blurStyle: BlurStyle.normal,
                  )] , borderRadius: BorderRadius.circular(30),

                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgfJ94jztx7RIbSH4qIIx9RGokkMafnCX66A&usqp=CAU',
                    fit: BoxFit.cover,
                    ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                //margin: EdgeInsets.only(right: 30),
                decoration: BoxDecoration(
                  boxShadow:[ BoxShadow(
                    color: Colors.black26,
                    offset: Offset(7.0, 0.0),
                    blurRadius: 8,
                    //blurStyle: BlurStyle.normal,
                  )] , borderRadius: BorderRadius.circular(30),

                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgfJ94jztx7RIbSH4qIIx9RGokkMafnCX66A&usqp=CAU',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

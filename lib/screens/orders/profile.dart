import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide.none,
                    //borderSide: const BorderSide()
                  ),
              ),
            ),
          ),
          Column(
            children: [
              ClipRRect(

              borderRadius: BorderRadius.circular(20),

                  child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCJ5C63QmbJQr7vXypZywXCQ3w8qmGkpd_Kg&usqp=CAU')),
              TextButton(style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black)),
                onPressed: () {},
                child: Text("Button2"),)
            ],
          )
        ],
      ),
    );
  }
}

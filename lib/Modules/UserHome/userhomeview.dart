import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'userhomemodel.dart';

class UserHome extends StatefulWidget {
  const UserHome({super.key});

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  final List _image = [
    "Assets/screen.jpg",
    "Assets/coffee1.jpg",
    "Assets/coffee3.jpg",
    "Assets/coffee2.jpg",
    "Assets/coffee4.jpg",
  ];
  final List _name = [
    'CAPPUCCINO',
    'COLD COFFEE',
    'Bean Coffee',
    'Caffeine',
    'taskaa'
  ];
  final List _price = ['7.90', '5.45', '6.09', '3.5', '7.0'];

  // popular
  List<String> Imagess_p = [
    "Assets/2.png",
    "Assets/cup.png",
    "Assets/coffee-cup.png",
    "Assets/6.png"
  ];

  List<String> Name_p = [
    "Cold Coffee",
    "Hot Coffee",
    "Black Coffee",
    "Almond Coffee"
  ];

  List<double> Price_p = [7.9, 8.0, 5.0, 8.6];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: const Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Icon(Icons.menu),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: Icon(Icons.person),
            )
          ],
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Find the best coffee for you",
                  style: GoogleFonts.bebasNeue(fontSize: 65),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextField(
                  cursorColor: Colors.grey[600],
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      hintText: "Find your coffee...",
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade600)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade600))),
                ),
                const SizedBox(height: 45),
                SizedBox(
                  height: 380,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _name.length,
                      itemBuilder: ((context, index) {
                        return Cofeetile(
                            image: _image[index],
                            name: _name[index],
                            price: _price[index]);
                      })),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  "Enjoy Your Morning Coffee",
                  style: GoogleFonts.bebasNeue(
                      fontSize: 55, color: Colors.grey.shade600),
                ),
                const SizedBox(height: 5),
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: const Image(
                    image: AssetImage("Assets/coffee8.jpg"),
                  ),
                ),
                const SizedBox(height: 15),
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: const Image(
                    image: AssetImage("Assets/coffee5.jpg"),
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular",
                      style:
                          TextStyle(fontSize: 35, color: Colors.red.shade200),
                    ),
                    const Text(
                      "See all",
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Coffee",
                  style: GoogleFonts.bebasNeue(fontSize: 65),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: Name_p.length,
                      itemBuilder: ((context, index) {
                        return Popularcoffee(
                            image_popular: Imagess_p[index],
                            name_popular: Name_p[index],
                            price_popular: Price_p[index]);
                      })),
                ),
              ],
            ),
          )),
        ));
  }
}

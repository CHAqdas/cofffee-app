// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import '../Orderscreen/Cofeeorder.dart';

class Cofeetile extends StatelessWidget {
  String image;
  String name;
  String price;
  Cofeetile({required this.image, required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        width: 220,
        decoration: BoxDecoration(
            color: Colors.black54, borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(19),
              child: Image(
                image: AssetImage(image),
                height: 260,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    name,
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text(
                  "With Almond Milk",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(
                      "\$ $price",
                      style: const TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => Coffee())));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(5)),
                      child: const Icon(
                        Icons.add,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Popularcoffee extends StatelessWidget {
  String image_popular;
  String name_popular;
  double price_popular;
  Popularcoffee(
      {super.key,
      required this.image_popular,
      required this.name_popular,
      required this.price_popular});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 10),
      child: Container(
        padding: const EdgeInsets.all(8),
        height: 120,
        decoration: BoxDecoration(
            color: Colors.black54, borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image(
                  image: AssetImage(image_popular),
                  color: Colors.grey,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        name_popular,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                        "With almond milky touch",
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      )
                    ],
                  ),
                )
              ],
            ),
            Text(
              "\$ $price_popular",
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

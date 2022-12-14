import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Coffee extends StatefulWidget {
  @override
  State<Coffee> createState() => _CoffeeState();
}

class _CoffeeState extends State<Coffee> {
  var Colour = Colors.white;
  int counta = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        body: Stack(
          children: [
            const SizedBox(
              height: 420,
              width: 500,
              child: Image(
                image: AssetImage("Assets/screen.jpg"),
                // height: 400,
                fit: BoxFit.fitWidth,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25.0, left: 20),
                  child: Container(
                    height: 40,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Colors.black87,
                    ),
                    child: MaterialButton(
                        splashColor: Colors.black87,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0, right: 20),
                  child: Container(
                    height: 40,
                    width: 50,
                    decoration: const BoxDecoration(color: Colors.black87),
                    child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            Colour = Colors.red;
                          });
                        },
                        child: Icon(
                          Icons.favorite,
                          color: Colour,
                        )),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 410.0, left: 5, right: 5),
              child: Container(
                  padding: const EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "Cappucino",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 36,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "\$ 7.90",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 36,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: const [
                          Text("4.7",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            width: 7,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.black,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.black,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.black,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.black,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("(30 Reviews)",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      const SizedBox(
                        height: 26,
                      ),
                      const SizedBox(
                        height: 110,
                        child: Expanded(
                            child: Text(
                                "Coffee smells like freshly ground heaven.Science my never come up with a better office communication system than the coffee break.I orchestrate my mornings to the tune of coffee.I have measured out my life with coffee spoons.",
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 18))),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 10),
                            height: 80,
                            width: 200,
                            color: Colors.grey,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Quantity",
                                  style: GoogleFonts.bebasNeue(fontSize: 36)),
                            ),
                          ),
                          const SizedBox(
                            width: 1,
                          ),
                          Container(
                            height: 80,
                            width: 70,
                            color: Colors.grey,
                            child: MaterialButton(
                                onPressed: () {
                                  setState(() {
                                    if (counta > 0) {
                                      [counta--];
                                    } else {
                                      [counta = 0];
                                    }
                                  });
                                },
                                child: const Icon(
                                  Icons.remove,
                                  size: 35,
                                  color: Colors.black,
                                )),
                          ),
                          const SizedBox(
                            width: 1,
                          ),
                          Container(
                            height: 80,
                            width: 70,
                            color: Colors.grey,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                counta.toString(),
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 36),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 1,
                          ),
                          Container(
                            height: 80,
                            width: 70,
                            color: Colors.grey,
                            child: MaterialButton(
                              onPressed: () {
                                setState(() {
                                  counta++;
                                });
                              },
                              child: const Icon(
                                Icons.add,
                                size: 35,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
          ],
        ));
  }
}

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserFavorite extends StatelessWidget {
  const UserFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            Icon(Icons.sort),
            Spacer(),
            Badge(
              badgeColor: Colors.red,
              child: InkWell(
                  onTap: () {}, child: Icon(Icons.shopping_bag_outlined)),
            )
          ],
        ),
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
                          "Favorite",
                          style: GoogleFonts.bebasNeue(fontSize: 45),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        TextField(
                          cursorColor: Colors.grey[600],
                          decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.search),
                              hintText: "Find your favorite...",
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade600)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade600))),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        GridView.count(
                          childAspectRatio: 0.66,
                          crossAxisCount: 2,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          children: [
                            for (int i = 1; i < 8; i++)
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade800,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 1, horizontal: 10),
                                            child: Text("-50"),
                                            decoration: BoxDecoration(
                                                color: Colors.grey.shade600,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                          ),
                                          Icon(Icons.favorite)
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Image.asset(
                                        "Assets/$i.png",
                                        height: 200,
                                        width: 150,
                                      ),
                                      SizedBox(
                                        height: 25,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 18.0),
                                              child: Text(
                                                "\$7.9",
                                                style: const TextStyle(
                                                    fontSize: 15),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 15.0),
                                            child: InkWell(
                                              onTap: () {},
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.orange,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                child: const Icon(
                                                  Icons.shopping_bag_outlined,
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                          ],
                        )
                      ])))),
    );
  }
}

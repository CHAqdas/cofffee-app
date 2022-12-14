import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UserId extends StatefulWidget {
  const UserId({super.key});

  @override
  State<UserId> createState() => _UserIdState();
}

class _UserIdState extends State<UserId> {
  File? imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding:
              const EdgeInsets.only(top: 100, left: 20, right: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.indigo, width: 5),
                        borderRadius: BorderRadius.circular(100)),
                    child: ClipOval(
                      child: imageFile == null
                          ? const Image(
                              image: AssetImage("Assets/barista.png"),
                              height: 170,
                              width: 170,
                              fit: BoxFit.cover,
                            )
                          : Image.file(
                              imageFile!,
                              width: 170,
                              height: 170,
                              fit: BoxFit.cover,
                            ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 120,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                          color: Colors.blue, shape: BoxShape.circle),
                      child: IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                                backgroundColor: Colors.blueGrey,
                                context: context,
                                builder: (context) {
                                  return SizedBox(
                                    height: 180,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 40, horizontal: 100),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            children: [
                                              Container(
                                                  padding:
                                                      const EdgeInsets.all(4),
                                                  decoration:
                                                      const BoxDecoration(
                                                          color: Colors.blue,
                                                          shape:
                                                              BoxShape.circle),
                                                  child: IconButton(
                                                      onPressed: () {
                                                        ongetimage(
                                                            ImageSource.camera);
                                                      },
                                                      icon: const Icon(
                                                          Icons
                                                              .camera_alt_rounded,
                                                          color:
                                                              Colors.white))),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Text(
                                                "Camera",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 19,
                                                ),
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          Column(
                                            children: [
                                              Container(
                                                  padding:
                                                      const EdgeInsets.all(4),
                                                  decoration:
                                                      const BoxDecoration(
                                                          color: Colors.blue,
                                                          shape:
                                                              BoxShape.circle),
                                                  child: IconButton(
                                                      onPressed: () {
                                                        ongetimage(ImageSource
                                                            .gallery);
                                                      },
                                                      icon: const Icon(
                                                          Icons.photo,
                                                          color:
                                                              Colors.white))),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Text(
                                                "Gallery",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 19,
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          },
                          icon: const Icon(
                            Icons.camera_alt_rounded,
                            color: Colors.white,
                          )),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              TextField(
                enabled: false,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person),
                    hintText: 'Ch Aqdas',
                    hintStyle: const TextStyle(fontSize: 20),
                    disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade600)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade600))),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                enabled: false,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.description),
                    hintText: 'Best morning with a best coffee',
                    hintStyle: const TextStyle(fontSize: 20),
                    disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade600)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade600))),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                enabled: false,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.phone),
                    hintText: '03064040880',
                    hintStyle: const TextStyle(fontSize: 20),
                    disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade600)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade600))),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                enabled: false,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.location_city),
                    hintText: 'Hafiz Colony Rahimyarkhan',
                    hintStyle: const TextStyle(fontSize: 20),
                    disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade600)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade600))),
              )
            ],
          ),
        ));
  }

  ongetimage(ImageSource imagetype) async {
    // File? pickedimage;
    ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: imagetype);

    if (image != null) {
      setState(() {
        imageFile = File(image.path);
      });
    } else {
      return;
    }
  }
}

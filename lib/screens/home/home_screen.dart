import 'package:cartapp/global.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          title: const Text(
            "Decoration",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          actions: [
            InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'cart');
                },
                child: const Icon(Icons.shopping_cart)),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: productList
                        .map(
                          (e) => InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, 'detail',
                                  arguments: e);
                            },
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              height: 200,
                              width: 180,
                              decoration:
                                  const BoxDecoration(color: Colors.grey),
                              child: Column(
                                children: [
                                  Image.asset(
                                    e['image'],
                                    height: 100,
                                  ),
                                  Text(
                                    e['name'],
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 25),
                                  ),
                                  Text(
                                    "\$ ${e['price']}",
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 25),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  children: productList.map(
                        (e) => InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'detail',
                                arguments: e);
                          },
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            height: 200,
                            width: 180,
                            decoration: const BoxDecoration(color: Colors.grey),
                            child: Column(
                              children: [
                                Image.asset(
                                  e['image'],
                                  height: 100,
                                ),
                                Text(
                                  e['name'],
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 25),
                                ),
                                Text(
                                  "\$ ${e['price']}",
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 25),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

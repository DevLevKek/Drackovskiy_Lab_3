//import 'dart:ffi';

import 'dart:ffi';

import 'package:app/modul/date_base.dart';
import 'package:flutter/material.dart';

class main_store extends StatelessWidget {
  const main_store({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(72, 255, 255, 255),
        title: const Column(children: [
          Text(
            "Hello! Comrade.",
            style: TextStyle(fontSize: 24),
          ),
          //Text("What are we going to order today?", style: TextStyle(fontSize: 16), )
        ]),
      ),
      //ListVies
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: productList.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 5,
            color: const Color.fromARGB(255, 255, 255, 255),
            child: ListTile(
                // trailing: ,
                leading: Container(
                  height: 150,
                  width: 100,
                  child: Image.asset(
                    productList[index].pathPhoto,
                  ),
                ),
                title: Text(
                  productList[index].name,
                  style: const TextStyle(
                      fontSize: 22, color: Color.fromARGB(255, 5, 134, 255)),
                ),
                subtitle: Column(
                  children: [
                    Text(
                      productList[index].discription,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 3, 97, 186),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Text(
                          productList[index].price.toString(),
                          style: const TextStyle(
                            fontSize: 24,
                            color: Color.fromARGB(255, 201, 5, 5),
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          "Рублей",
                          style: TextStyle(
                            fontSize: 24,
                            color: Color.fromARGB(255, 201, 5, 5),
                          ),
                        ),
                      ],
                    )
                  ],
                )),
          );
        },
      ),
    );
  }
}

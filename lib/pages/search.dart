import 'package:flutter/material.dart';
import 'package:modernlogintute/pages/search_house.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buscar"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.menu_rounded),
          )
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Resultados"),
          ),
          Container(
            height: 52,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: Color(0xffc2c2c2),
                  filled: true,
                  hintText: "Buscar cerca de:",
                  suffixIcon: Icon(Icons.search)),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          SearchHouse(),
          SearchHouse(),
          SearchHouse(),
          SearchHouse(),
          SearchHouse(),
          SearchHouse(),
        ],
      ),
    );
  }
}

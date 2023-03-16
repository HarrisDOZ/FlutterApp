import 'package:flutter/material.dart';
import 'package:modernlogintute/components/DrawerSide.dart';
import 'package:modernlogintute/pages/home_page.dart';

class MyProfile extends StatelessWidget {
  @override
  Widget listTitle({required IconData icon, required String title}) {
    return Column(
      children: [
        Divider(
          height: 1,
        ),
        ListTile(
          leading: Icon(icon),
          title: Text(title),
          trailing: Icon(Icons.arrow_forward_ios),
        )
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Mi perfil',
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
      drawer: DrawerSide(),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 100,
                color: Colors.grey,
              ),
              Container(
                height: 600,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 250,
                          height: 80,
                          padding: EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Nombre Apellidos',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('CorreoPerfil@gmail.com'),
                                ],
                              ),
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.blue,
                                child: CircleAvatar(
                                  radius: 12,
                                  child: Icon(
                                    Icons.edit,
                                    color: Colors.blue,
                                  ),
                                  backgroundColor: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    listTitle(icon: Icons.star, title: "Recomendaciones"),
                    listTitle(icon: Icons.star, title: "Recomendaciones"),
                    listTitle(icon: Icons.star, title: "Recomendaciones"),
                    listTitle(icon: Icons.star, title: "Recomendaciones"),
                    listTitle(icon: Icons.star, title: "Recomendaciones"),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 30),
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey,
              child: CircleAvatar(
                backgroundImage: NetworkImage("url"),
                radius: 45,
                backgroundColor: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}

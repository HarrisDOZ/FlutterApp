import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modernlogintute/components/DrawerSide.dart';
import 'package:modernlogintute/components/iconWidget.dart';
import 'package:modernlogintute/pages/home_list.dart';
import 'package:modernlogintute/pages/home_overview.dart';
import 'package:modernlogintute/pages/my_profile.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;
  final ScrollController _horizontal = ScrollController(),
      _horizontal2 = ScrollController();

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  Widget singalHose(context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          HomeList(
            houseImage:
                'https://img.vivanuncios.com.mx/api/v1/mx-ads/images/c1/c161293e-6e46-4a06-9bee-d4897d4caf6a?rule=s-I72.auto',
            houseDate: 'Contacto',
            houseAddress: 'Dirección',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => HoseOverview(
                    houseImage:
                        'https://img.vivanuncios.com.mx/api/v1/mx-ads/images/c1/c161293e-6e46-4a06-9bee-d4897d4caf6a?rule=s-I72.auto',
                    houseDate: 'Contacto',
                    houseAddress: 'Dirección',
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }

  Widget listTitle({required IconData icon, required String title}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 32,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      drawer: DrawerSide(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Inicio como: " + user.email!,
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          CircleAvatar(
            radius: 16,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.search,
              size: 24,
            ),
          ),
          IconButton(
            onPressed: signUserOut,
            icon: Icon(Icons.logout),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://mx.habcdn.com/photos/project/medium/rectoria-buap-816177.jpg')),
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      //color: Colors.red,
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 120, bottom: 10),
                            child: Container(
                              child: Container(
                                height: 50,
                                width: 200,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(30),
                                    bottomLeft: Radius.circular(50),
                                  ),
                                ),
                                child: Text(
                                  '       Rentas',
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      shadows: [
                                        BoxShadow(
                                            color: Colors.blue,
                                            blurRadius: 3,
                                            offset: Offset(3, 3)),
                                      ]),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Encuentra un hogar',
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'Uno cerca de ti',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Top recomendaciones'),
                  Text(
                    'ver todo',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 305,
              width: 245,
              child: Scrollbar(
                controller: _horizontal,
                thumbVisibility: true,
                trackVisibility: true,
                //notificationPredicate: (notif) => notif.depth == 1,
                child: SingleChildScrollView(
                  controller: _horizontal,
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      singalHose(context),
                      singalHose(context),
                      singalHose(context),
                      singalHose(context),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('En disposicion'),
                  Text(
                    'ver todo',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 305,
              width: 245,
              child: Scrollbar(
                controller: _horizontal2,
                thumbVisibility: true,
                trackVisibility: true,
                //notificationPredicate: (notif) => notif.depth == 1,
                child: SingleChildScrollView(
                  controller: _horizontal2,
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      singalHose(context),
                      singalHose(context),
                      singalHose(context),
                      singalHose(context),
                      singalHose(context),
                      singalHose(context),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

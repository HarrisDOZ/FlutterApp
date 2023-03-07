import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;
  final ScrollController _horizontal = ScrollController(),
      _horizontal2 = ScrollController();
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  Widget singalHose() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 300,
      width: 240,
      decoration: BoxDecoration(
        color: Color(0xffd9dad9),
        //borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.network('https://www.nocnok.com/hubfs/casa-lujo.webp'),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Contacto: 55555555',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Dirección',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: FloatingActionButton(
                          onPressed: () {
                            // Add your onPressed code here!
                          },
                          backgroundColor: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      drawer: Drawer(),
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
                      singalHose(),
                      singalHose(),
                      singalHose(),
                      singalHose(),
                      singalHose(),
                      singalHose(),
                      singalHose(),
                      singalHose(),
                      singalHose(),
                      singalHose(),
                      singalHose(),
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
                      singalHose(),
                      singalHose(),
                      singalHose(),
                      singalHose(),
                      singalHose(),
                      singalHose(),
                      singalHose(),
                      singalHose(),
                      singalHose(),
                      singalHose(),
                      singalHose(),
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

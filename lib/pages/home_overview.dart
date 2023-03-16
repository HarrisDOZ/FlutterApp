import 'package:flutter/material.dart';

class HoseOverview extends StatefulWidget {
  final String houseImage;
  final String houseDate;
  final String houseAddress;

  const HoseOverview({
    required this.houseImage,
    required this.houseDate,
    required this.houseAddress,
  });

  @override
  State<HoseOverview> createState() => _HoseOverviewState();
}

class _HoseOverviewState extends State<HoseOverview> {
  Widget bonntonNavigatorBar({
    required Color iconColor,
    required Color backgroundColor,
    required Color color,
    required String title,
    required IconData iconData,
  }) {
    return Expanded(
      child: GestureDetector(
        child: Container(
          padding: EdgeInsets.all(20),
          color: backgroundColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconData,
                size: 20,
                color: iconColor,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                title,
                style: TextStyle(color: color),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          bonntonNavigatorBar(
              iconColor: Colors.grey,
              backgroundColor: Colors.black,
              color: Colors.white,
              title: "Agregar a favoritos",
              iconData: Icons.favorite_outline),
          bonntonNavigatorBar(
              iconColor: Colors.grey,
              backgroundColor: Colors.blue,
              color: Colors.white,
              title: "Ubicar",
              iconData: Icons.location_on),
        ],
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Informacion: ',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  ListTile(
                    title: Text('Departamento/casa/habitacion'),
                  ),
                  Container(
                    height: 300,
                    padding: EdgeInsets.all(10),
                    child: Image.network(widget.houseImage ?? ""),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    child: Text(
                      widget.houseDate,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 3,
                          backgroundColor: Colors.blue,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      width: double.infinity,
                      child: ListView(
                        children: [
                          Text(
                            "Sevicios/precios/etc",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            widget.houseAddress,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:modernlogintute/pages/home_overview.dart';

class HomeList extends StatelessWidget {
  final String houseImage;
  final String houseDate;
  final String houseAddress;
  final Function onTap;

  HomeList(
      {required this.houseImage,
      required this.houseDate,
      required this.houseAddress,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
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
                GestureDetector(
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
                  child: Container(
                    height: 150,
                    padding: EdgeInsets.all(5),
                    width: double.infinity,
                    child: Image.network(houseImage),
                  ),
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
                          houseDate,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          houseAddress,
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
          ),
        ],
      ),
    );
  }
}

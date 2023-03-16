import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:modernlogintute/models/house_model.dart';

class HosueProvider with ChangeNotifier {
  List<HouseModel> houseBestlist = [];

  fatchHouseData() {
    FirebaseFirestore.instance.collection("").get();
  }
}

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';


class DataBaseService
{

  DataBaseService({this.uid});
  final String uid;

  final CollectionReference UserCollection= Firestore.instance.collection('UserData');

  Future updateUserData(String name,File img, String address)async{
    return await UserCollection.document(uid).setData(
        {
          "name": name,
          "FileImg":img,
          "address":address,
        }
    );
  }

  Stream<QuerySnapshot> get User{
    return UserCollection.snapshots();
  }

}
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'contactModel.dart';

import 'contactModel.dart';

class Contacts extends StatefulWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {

  List<Contact> contacts = getContacts();
  static List<Contact> getContacts(){
    const data = [
      {
        "name": "Michael Akor",
        "number": "08061762007",
        "urlImage": "assets/mike.jpg"
      },
      {
        "name": "Daniel David",
        "number": "08061762007",
        "urlImage": "assets/fie.jpeg"
      },
      {
        "name": "Silvester Laurel",
        "number": "08061762007",
        "urlImage": "assets/iyke.jpg"
      },
      {
        "name": "Janet Kali",
        "number": "08061762007",
        "urlImage": "assets/tryb.jpg"
      },
      {
        "name": "David Dam",
        "number": "08061762007",
        "urlImage": "assets/tunde.jpg"
      },
      {
        "name": "Silvester Laurel",
        "number": "08061762007",
        "urlImage": "assets/fit.jpg"
      },
      {
        "name": "Michael Akor",
        "number": "08061762007",
        "urlImage": "assets/mike.jpg"
      },
      {
        "name": "Daniel David",
        "number": "08061762007",
        "urlImage": "assets/fie.jpeg"
      },
      {
        "name": "Silvester Laurel",
        "number": "08061762007",
        "urlImage": "assets/fit.jpg"
      },
      {
        "name": "Michael Akor",
        "number": "08061762007",
        "urlImage": "assets/fie.jpeg"
      },
    ];
    return data.map<Contact>(Contact.fromJson).toList();
  }

  // @override
  // void initState(){
  //   super.initState();
  //
  //   contactsFuture = readJsonData();
  // }
  //
  // Future<List<Contact>> readJsonData() async{
  //   final file = await rootBundle.loadString('json/response.json');
  //   final contactList = json.decode(file) as List<dynamic>;
  //
  //   return contactList.map((e) => Contact.fromJson(e)).toList();
  // }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: const Text("Mike's Contacts"),
      ),
      body: Center(
        child: buildContact(contacts),
      ),
    );
  }



  Widget buildContact (List<Contact>contacts ){
    return ListView.builder(
      itemCount: contacts.length,
      itemBuilder: (BuildContext context, int index) {
        final contact = contacts[index];
        return Card(
          shadowColor: Colors.deepPurple,
          elevation: 2,
          child: ListTile(
            leading: CircleAvatar(
              radius: 28,
              backgroundImage: AssetImage(contact.urlImage),
            ),
            title: Text(contact.name),
            subtitle: Text(contact.number),
          ),
        );
      },
    );
  }
}

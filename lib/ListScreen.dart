// import 'dart:js';
// import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:product/Data.dart';

class ListScreen extends StatelessWidget {
  // const ListScreen({super.key});
  Data FriedChicken = Data();
//list view will Display My Section
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: FriedChicken.SectionList.length,
        itemBuilder: (context, index) =>
            SectionItem(section: FriedChicken.SectionList[index]),
      ),
    );
  }
}

//reusable Widget Which pass It to ListView Builder
class SectionItem extends StatelessWidget {
  Section section;
  SectionItem({required this.section});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: InkWell(
        child: Ink(
          child: ListTile(
            onTap: () {
              Navigator.pushNamed(context, "/product",
                  arguments: {"id": section.id, "name": section.Name});
            },
            focusColor: Colors.black,
            hoverColor: Colors.black,
            selectedTileColor: Colors.amberAccent[300],
            leading: Image.asset(section.img),
            title: Text(section.Name),
            subtitle: Text(section.Description),
          ),
        ),
      ),
    );
  }
}

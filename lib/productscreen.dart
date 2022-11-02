import 'package:flutter/material.dart';
import 'package:product/Data.dart';

class ProductScreen extends StatelessWidget {
  Data FriedChicken = Data();
  @override
  Widget build(BuildContext context) {
    var args =
        ModalRoute.of(context)?.settings.arguments! as Map<String, Object>;
    var list = FriedChicken.filterBySection(args["id"] as int);
    print(list);
    return Scaffold(
      appBar: AppBar(
        title: Text(args["name"] as String),
      ),
      body: GridView.builder(
        itemCount: list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 20),
        itemBuilder: (context, index) =>
            FriedChickenScreen(FriedChickenitem: list[index]),
      ),
    );
  }
}

class FriedChickenScreen extends StatelessWidget {
  FriedChicken FriedChickenitem;
  FriedChickenScreen({required this.FriedChickenitem});
  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Container(
        margin: EdgeInsetsDirectional.only(top: 40, bottom: 30),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: 400,
          child: Image.asset(
            FriedChickenitem.image,
            width: 100,
            height: 100,
            scale: 4,
          ),
        ),
      ),
      header: Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            FriedChickenitem.Name,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontStyle: FontStyle.italic, fontSize: 20, color: Colors.black),
          )),
      footer: Container(
          child: Text(
        " Price:${FriedChickenitem.price}\$",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 22, fontStyle: FontStyle.italic, color: Colors.red),
      )),
    );
  }
}

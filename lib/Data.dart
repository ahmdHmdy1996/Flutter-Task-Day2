import 'package:flutter/material.dart';

class FriedChicken {
  int id;
  int CategoryId;
  int price;
  String Name;
  String image;
  FriedChicken({
    required this.id,
    required this.CategoryId,
    required this.price,
    required this.Name,
    required this.image,
  });
}

class Section {
  int id;
  String Name;
  String Description;
  String img;
  Section({
    required this.id,
    required this.Description,
    required this.Name,
    required this.img,
  });
}

class Data {
  List<Section> SectionList = [
    Section(
        id: 1,
        Description: "It’s crunchy, it’s spicy, it’s tangy",
        Name: "KFC",
        img: "assets/img/kfc.jpg"),
    Section(
        id: 2,
        Description: "Chick'in Wins - Fried Chicken",
        Name: "Chick'in Wins",
        img: "assets/img/wigns.png"),
  ];

  List<FriedChicken> FriedChickenList = [
    FriedChicken(
        id: 1,
        CategoryId: 1,
        price: 10,
        Name: "FriedChicken ",
        image: "assets/img/kfc1.jpg"),
    FriedChicken(
        id: 1,
        CategoryId: 1,
        price: 20,
        Name: "FriedChicken ",
        image: "assets/img/kfc2.jpg"),
    FriedChicken(
        id: 1,
        CategoryId: 1,
        price: 30,
        Name: "FriedChicken ",
        image: "assets/img/kfc3.jpg"),
    FriedChicken(
        id: 1,
        CategoryId: 1,
        price: 40,
        Name: "FriedChicken ",
        image: "assets/img/kfc4.jpg"),
    FriedChicken(
        id: 1,
        CategoryId: 2,
        price: 23,
        Name: "FriedChicken ",
        image: "assets/img/wigns1.jpg"),
    FriedChicken(
        id: 1,
        CategoryId: 2,
        price: 27,
        Name: "FriedChicken ",
        image: "assets/img/wigns2.jpg"),
    FriedChicken(
        id: 1,
        CategoryId: 2,
        price: 100,
        Name: "FriedChicken ",
        image: "assets/img/wigns3.png"),
  ];

  List<FriedChicken> filterBySection(int id) {
    return this
        .FriedChickenList
        .where((element) => element.CategoryId == id)
        .toList();
  }
}

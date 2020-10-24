import 'dart:convert';

import 'package:fipola_app/model/Product.dart';
import 'package:fipola_app/screens/ProductDetail.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:http/http.dart' as http;

class bestsellers extends StatelessWidget {
  final products = ["Country Eggs", "White Eggs", "Shark Cut Peices", "Anchovy Nethili Fish (Full Peice)", "Goat Boneless Peices", "Goat Biriyani Cut"];
  final images = ["https:\/\/shopninja.in\/nonveg\/superadmin\/assets\/products\/country_eggs.jpg", "https:\/\/shopninja.in\/nonveg\/superadmin\/assets\/products\/white-farm-broiler-eggs.png","https:\/\/shopninja.in\/nonveg\/superadmin\/assets\/products\/shark_curry_skinless_cut.jpg" ,"https:\/\/shopninja.in\/nonveg\/superadmin\/assets\/products\/nethili_fish.JPG", "https:\/\/shopninja.in\/nonveg\/superadmin\/assets\/products\/goat-boneless.jpg", "https:\/\/shopninja.in\/nonveg\/superadmin\/assets\/products\/goat_biriyani_cut.jpg"];
  final prices = ["96", "50", "620", "155", "300", "430"];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            color: Colors.grey[300],
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            child: Container(
              child: Text(
                'Best Sellers of the Month',
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
          Container(
            height: 330,
            margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
            child: ListView.builder(
              itemCount: products.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index){
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: GestureDetector(
                    onTap: (){
                    },
                    child: Container(
                      width: 220,
                      height: 100,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Card(
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                width: MediaQuery.of(context).size.width,
                                height: 200,
                                child: Image(
                                  image: NetworkImage(images[index]),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  products[index],
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  "Rs " + prices[index],
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
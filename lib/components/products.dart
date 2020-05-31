import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ecommerce/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "oldprice": 120,
      "price": 85,
    },
    {
      "name": "Red dress",
      "picture": "images/products/dress1.jpeg",
      "oldprice": 100,
      "price": 50,
    },
    {
      "name": "Coat",
      "picture": "images/products/blazer2.jpeg",
      "oldprice": 130,
      "price": 60,
    },
    {
      "name": "Black dress",
      "picture": "images/products/dress2.jpeg",
      "oldprice": 110,
      "price": 55,
    },
    {
      "name": "Shoes",
      "picture": "images/products/shoe1.jpg",
      "oldprice": 200,
      "price": 180,
    },
    {
      "name": "Aha Pants",
      "picture": "images/products/pants2.jpeg",
      "oldprice": 400,
      "price": 250,
    },
    {
      "name": "Woh pants",
      "picture": "images/products/pants1.jpg",
      "oldprice": 300,
      "price": 150,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext, int index) {
          return Single_prod(
            product_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_oldprice: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final product_name;
  final prod_picture;
  final prod_oldprice;
  final prod_price;

  Single_prod({
    this.product_name,
    this.prod_picture,
    this.prod_oldprice,
    this.prod_price,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: new Text('hero 1'),
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                //here we are passing the value of the product to the proddetails page
                builder: (context) => new ProductDetails(
                      product_detail_name: product_name,
                      product_detail_price: prod_price,
                      product_detail_oldprice: prod_oldprice,
                      product_detail_picture: prod_picture,
                    ))),
            child: GridTile(
              footer: Container(
                color: Colors.white,
                child: new Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text(product_name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0)),
                    ),
                    Text("\$${prod_price}",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              child: Image.asset(prod_picture, fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }
}

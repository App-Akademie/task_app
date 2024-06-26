import 'package:flutter/material.dart';

List<Product> products = [
  Product("MacBoook", 2199.99),
  Product("iPhone", 1399.99),
  Product("Spiegel", 299.49),
  Product("Döner", 6.5),
  Product("Tasche", 39.5)
];

class Product {
  String name;
  double price;
  Product(this.name, this.price);
}

class S4536 extends StatelessWidget {
  const S4536({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        shrinkWrap: true,
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
              leading: const Icon(Icons.shopping_cart, color: Colors.black),
              trailing: const Icon(
                Icons.add_shopping_cart,
                color: Colors.black,
              ),
              titleAlignment: ListTileTitleAlignment.center,
              horizontalTitleGap: 60,
              title: Text(
                products[index].name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                  "${products[index].price.toString().replaceAll('.', ',')} €"),
              tileColor: const Color.fromARGB(255, 251, 204, 61),
              textColor: Colors.black,
              shape: const Border(
                bottom: BorderSide(),
              ));
        });
  }
}

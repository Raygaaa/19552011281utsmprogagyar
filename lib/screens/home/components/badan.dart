import 'package:flutter/material.dart';
import 'package:mohagyar_19552011281_uts/constants.dart';
import 'package:mohagyar_19552011281_uts/models/Product.dart';
import 'package:mohagyar_19552011281_uts/screens/details/details_screen.dart';

// import 'search.dart';
import 'item_card.dart';

class Badan extends StatefulWidget {
  @override
  _BadanState createState() => _BadanState();
}

class _BadanState extends State<Badan> {
  TextEditingController _textEditingController = TextEditingController();
  List<Product> productsearch;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "FUJIMAFILM",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(30)),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  productsearch = products
                      .where((element) => element.title
                          .toLowerCase()
                          .contains(value.toLowerCase()))
                      .toList();
                });
              },
              controller: _textEditingController,
              decoration: InputDecoration(
                border: InputBorder.none,
                errorBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                contentPadding: EdgeInsets.all(15),
                hintText: 'Search',
              ),
            ),
          ),
        ),
        // Search(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
                itemCount: _textEditingController.text.isNotEmpty
                    ? productsearch.length
                    : products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                      product: _textEditingController.text.isNotEmpty
                          ? productsearch[index]
                          : products[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              product: products[index],
                            ),
                          )),
                    )),
          ),
        ),
      ],
    );
  }
}

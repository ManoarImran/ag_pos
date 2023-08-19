import 'package:flutter/material.dart';

import 'ProductFullDetails.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF001C30),
        title: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Product Item ..Api..',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProductFullDetails()),
                );
              },
              icon: const Icon(
                Icons.more_vert_rounded,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: const ProductDetailsBody(),
    );
  }
}

class ProductDetailsBody extends StatefulWidget {
  const ProductDetailsBody({Key? key}) : super(key: key);


  @override
  State<ProductDetailsBody> createState() => _ProductDetailsBodyState();
}

class _ProductDetailsBodyState extends State<ProductDetailsBody> {
  final List<String> ListItems = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
    'Item 10',
  ];
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Card( color: Colors.cyan, elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              Row(
                children: [
                  Container(width: 115 ,child: const Text("Running Stock:")),
                  const Flexible(child: Text("..api..")),
                ],
              ),
              Row(
                children: [
                  Container(width: 115 ,child: const Text("Openning Stock:")),
                  const Flexible(child: Text("..api..")),
                ],
              ),
              Row(
                children: [
                  Flexible(
                    child: Row(
                      children: [
                        Container(width: 115 ,child: const Text("Type:")),
                        const Flexible(child: Text("..api..")),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Row(
                      children: [
                        Container(width: 115 ,child: const Text("UOM:")),
                        const Flexible(child: Text("..api..")),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(width: 115 ,child: const Text("Warehouse:")),
                  const Flexible(child: Text("..api..")),
                ],
              ),
            ],),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 500,
            child: ListView.builder(
              itemCount: ListItems.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 3,
                  child: ListTile(
                    title: Text(ListItems[index]),
                    subtitle: const Text(
                      'Sub',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                    // onTap: () {
                    //   // Do something when an item is tapped
                    // },
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class Intventory {
  final int id;
  final String name;

  Intventory(this.id, this.name);
}

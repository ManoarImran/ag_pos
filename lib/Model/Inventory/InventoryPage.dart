import 'package:flutter/material.dart';
import 'ProdutctDetails.dart';
import 'addItem.dart';

class InventoryPage extends StatelessWidget {
  const InventoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF001C30),
          title: const Text(
            'Inventory',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          ),
        ),
        body: const InventoryPageBody(),
        floatingActionButton: FloatingActionButton(
            elevation: 0.0,
            backgroundColor: const Color(0xFF001C30),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AddItemPage()));
            },
            child: const Icon(Icons.add)));
  }
}

class InventoryPageBody extends StatefulWidget {
  const InventoryPageBody({Key? key}) : super(key: key);

  @override
  State<InventoryPageBody> createState() => _InventoryPageBodyState();
}

class _InventoryPageBodyState extends State<InventoryPageBody> {
  Intventory? _selectedInventory; // Selected Inventory object
  final List<String> items = ["Item 1", "Item 2", "Item 3", "Item 4"];

  final List<Intventory> inventoryType = [
    Intventory(1, 'Raw'),
    Intventory(2, 'Finished Good'),
    Intventory(3, 'Assets'),
    Intventory(4, 'Materials'),
  ];

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
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 110,
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'Type:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
            Flexible(
              child: DropdownButton<Intventory>(
                isExpanded: true,
                value: _selectedInventory,
                onChanged: (Intventory? newValue) {
                  setState(() {
                    _selectedInventory = newValue!;
                  });
                },
                items: inventoryType.map((Intventory city) {
                  return DropdownMenuItem<Intventory>(
                    value: city,
                    child: Text(city.name),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
        Container(
          height: 0.5,
          color: Colors.grey,
        ),
        Expanded(
          child: SizedBox(
            height: 500,
            child: ListView.builder(
              itemCount: ListItems.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 1,
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
                    trailing: SizedBox(
                      height: 30,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color(
                              0xFF001C30), // Set the button color to #001C30
                        ),
                        child: const Text('Details'),
                        onPressed: () {
                          {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductDetails()),
                            );
                          }
                        },
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

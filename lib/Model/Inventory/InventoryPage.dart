import 'package:flutter/material.dart';

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
      body: Container(
        color: Colors.yellow, // Set the background color to yellow
        child: const InventoryPageBody(),
      ),
        floatingActionButton: FloatingActionButton(
            elevation: 0.0,
            backgroundColor: const Color(0xFF001C30),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => AddItemPage()));
            },
            child: const Icon(Icons.add)
        )
    );
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Type:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButton<Intventory>(
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
                  // SizedBox(height: 20),
                  // _selectedCity != null
                  //     ? Text(
                  //         'Selected City: ${_selectedCity!.name}',
                  //         style: TextStyle(fontSize: 20),
                  //       )
                  //     : Text(''),
                  // ListView.builder(
                  //   itemCount: items.length,
                  //   itemBuilder: (context, index) {
                  //     return ListTile(
                  //       title: Text(items[index]),
                  //     );
                  //   },
                  // )
                ],
              ),
            ),
          ],
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

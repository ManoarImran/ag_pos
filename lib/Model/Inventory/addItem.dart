import 'package:flutter/material.dart';

class AddItemPage extends StatelessWidget {
  const AddItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF001C30),
        title: Text(
          'Add Item',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(color: Colors.white30, child: const additemPageBody()),
    );
  }
}

class additemPageBody extends StatefulWidget {
  const additemPageBody({Key? key}) : super(key: key);

  @override
  State<additemPageBody> createState() => _additemPageBodyState();
}

class _additemPageBodyState extends State<additemPageBody> {
  selectType? seletType;
  // Selected Inventory object
  final List<selectType> inventoryType = [
    selectType(1, 'Type1'),
    selectType(2, 'Type2'),
    selectType(3, 'Type3'),
    selectType(4, 'Type4'),
  ];


  TextEditingController ItemName = TextEditingController();
  TextEditingController addBalance = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 115,
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
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton<selectType>(
                  isExpanded: true,
                  value: seletType,
                  onChanged: (selectType? newValue) {
                    setState(() {
                      seletType = newValue!;
                    });
                  },
                  items: inventoryType.map((selectType city) {
                    return DropdownMenuItem<selectType>(
                      value: city,
                      child: Text(city.name),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
        Container(height: 0.5, color: Colors.grey,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Container(
              padding: const EdgeInsets.all(8.0),
              width: 115,
              child: const Text(
                'Item Name:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
            Flexible(
              child: TextField(
                cursorColor: Colors.black,
                // Set the cursor color to #001C30
                controller: ItemName,
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        width: 0.5,
                        color: Colors
                            .white30), // Set the border color to #001C30
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        width: 0.5,
                        color: Colors
                            .black), // Set the focused border color to #176B87
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(height: 0.5, color: Colors.grey,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 115,
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'Balance:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
            Flexible(
              child: TextField(
                cursorColor: Colors.black,
                // Set the cursor color to #001C30
                controller: addBalance,
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        width: 0.5,
                        color: Colors
                            .grey), // Set the border color to #001C30
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        width: 0.5,
                        color: Colors
                            .black), // Set the focused border color to #176B87
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(height: 0.5, color: Colors.grey,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 115,
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'UOM:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton<selectType>(
                  isExpanded: true,
                  value: seletType,
                  onChanged: (selectType? newValue) {
                    setState(() {
                      seletType = newValue!;
                    });
                  },
                  items: inventoryType.map((selectType city) {
                    return DropdownMenuItem<selectType>(
                      value: city,
                      child: Text(city.name),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
        Container(height: 0.5, color: Colors.grey,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 115,
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'Warehouse:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton<selectType>(
                  isExpanded: true,
                  value: seletType,
                  onChanged: (selectType? newValue) {
                    setState(() {
                      seletType = newValue!;
                    });
                  },
                  items: inventoryType.map((selectType city) {
                    return DropdownMenuItem<selectType>(
                      value: city,
                      child: Text(city.name),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
        Container(height: 0.5, color: Colors.grey,),
        const SizedBox(height: 5,),
        SizedBox( height: 30,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary:
                  const Color(0xFF001C30), // Set the button color to #001C30
            ),
            child: const Text('Create'),
            onPressed: () {
              {
                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) => HomePage()),
                // );
              }
              ;
            },
          ),
        ),
      ],
    );
  }
}

class selectType {
  final int id;
  final String name;

  selectType(this.id, this.name);
}

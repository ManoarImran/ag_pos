import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF001C30),
        title: const Text(
          'Register',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(color: Colors.white, child:  RegisterPageBody()),
    );
  }
}

class RegisterPageBody extends StatefulWidget {
   RegisterPageBody({Key? key}) : super(key: key);

  @override
  State<RegisterPageBody> createState() => _RegisterPageBodyState();
}

class _RegisterPageBodyState extends State<RegisterPageBody> {

  bool? isChecked = false;

  DropdownItem? selectBloodTypeDD; // Selected Inventory object
  DropdownItem? selectedMaritalStatus; // Selected Inventory object

  final List<DropdownItem> bloodGroupDD = [
    DropdownItem(1, 'A+'),
    DropdownItem(2, 'A-'),
    DropdownItem(3, 'B+'),
    DropdownItem(4, 'B-'),
    DropdownItem(5, 'O+'),
    DropdownItem(6, 'O-'),
    DropdownItem(7, 'AB+'),
    DropdownItem(8, 'AB-'),
  ];


   List<DropdownItem> maritalStatus = [
     DropdownItem(1, 'Married'),
     DropdownItem(2, 'Single'),
  ];


  List<String> suggestons = ["Plumber1", "Plumber2", "Plumber3", "Plumber4", "Plumber5"];

  List<String> selectedValues = [];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              'Name',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              cursorColor: Colors.black,
              // Set the cursor color to #001C30
              // controller: Name,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 0.5,
                      color: Colors.black), // Set the border color to #001C30
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 0.5, color: Colors.black),
                  // Set the focused border color to #176B87
                ),
                hintText: 'Enter your first name',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              'Father name',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              cursorColor: Colors.black,
              // Set the cursor color to #001C30
              // controller: ItemName,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 0.5,
                      color: Colors.black), // Set the border color to #001C30
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 0.5, color: Colors.black),
                  // Set the focused border color to #176B87
                ),
                hintText: 'Enter father name',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              'Email',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              cursorColor: Colors.black,
              // Set the cursor color to #001C30
              // controller: ItemName,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 0.5,
                      color: Colors.black), // Set the border color to #001C30
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 0.5, color: Colors.black),
                  // Set the focused border color to #176B87
                ),
                hintText: 'Enter email',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              'Phone',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              cursorColor: Colors.black,
              // Set the cursor color to #001C30
              // controller: ItemName,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 0.5,
                      color: Colors.black), // Set the border color to #001C30
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 0.5, color: Colors.black),
                  // Set the focused border color to #176B87
                ),
                hintText: 'Enter your contact Number',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              'NID',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              cursorColor: Colors.black,
              // Set the cursor color to #001C30
              // controller: ItemName,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 0.5,
                      color: Colors.black), // Set the border color to #001C30
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 0.5, color: Colors.black),
                  // Set the focused border color to #176B87
                ),
                hintText: 'Enter NID Number',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              'Address',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              cursorColor: Colors.black,
              // Set the cursor color to #001C30
              // controller: ItemName,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 0.5,
                      color: Colors.black), // Set the border color to #001C30
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 0.5, color: Colors.black),
                  // Set the focused border color to #176B87
                ),
                hintText: 'Locality/House/Street no.',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              'Blood',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton<DropdownItem>(
              isExpanded: true,
              value: selectBloodTypeDD,
              onChanged: (DropdownItem? newValue) {
                setState(() {
                  selectBloodTypeDD = newValue!;
                });
              },
              items: bloodGroupDD.map((DropdownItem city) {
                return DropdownMenuItem<DropdownItem>(
                  value: city,
                  child: Text(city.name),
                );
              }).toList(),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              'Marital Status',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton<DropdownItem>(
              isExpanded: true,
              value: selectedMaritalStatus,
              onChanged: (DropdownItem? newValue) {
                setState(() {
                  selectedMaritalStatus = newValue!;
                });
              },
              items: maritalStatus.map((DropdownItem city) {
                return DropdownMenuItem<DropdownItem>(
                  value: city,
                  child: Text(city.name),
                );
              }).toList(),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              'Number of Children',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              cursorColor: Colors.black,
              // Set the cursor color to #001C30
              // controller: ItemName,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 0.5,
                      color: Colors.black), // Set the border color to #001C30
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 0.5, color: Colors.black),
                  // Set the focused border color to #176B87
                ),
                hintText: 'Enter Number',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              'Local guardian',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              cursorColor: Colors.black,
              // Set the cursor color to #001C30
              // controller: ItemName,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 0.5,
                      color: Colors.black), // Set the border color to #001C30
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 0.5, color: Colors.black),
                  // Set the focused border color to #176B87
                ),
                hintText: 'Name of guardian',
              ),
            ),
          ),
          // Container(
          //   padding: const EdgeInsets.all(8.0),
          //   child: const Text(
          //     'Plumber',
          //     style: TextStyle(
          //       fontSize: 16,
          //       fontWeight: FontWeight.bold,
          //       color: Colors.black,
          //     ),
          //   ),
          // ),
          Container(
            margin: EdgeInsets.all(8),
            alignment: Alignment.topRight,
            child: Column(
              children: [
                Text(
                  'Plumber: ${selectedValues.join(", ")}', // Display the selected values.
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 16),
                TypeAheadField(
                  animationStart: 0,
                  animationDuration: Duration.zero,
                  textFieldConfiguration: TextFieldConfiguration(
                    autofocus: true,
                    style: TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                  suggestionsBoxDecoration: SuggestionsBoxDecoration(
                    color: Colors.lightBlue[50],
                  ),
                  suggestionsCallback: (pattern) {
                    List<String> matches = <String>[];
                    matches.addAll(suggestons); // Make sure 'suggestions' is defined somewhere.

                    matches.retainWhere((s) {
                      return s.toLowerCase().contains(pattern.toLowerCase());
                    });
                    return matches;
                  },
                  itemBuilder: (context, suggestion) {
                    return Card(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Text(suggestion.toString()),
                      ),
                    );
                  },
                  onSuggestionSelected: (suggestion) {
                    setState(() {
                      selectedValues.add(suggestion); // Add the selected value to the list.
                    });
                    print("Selected: $suggestion");
                  },
                ),

              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              'Password',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              cursorColor: Colors.black,
              // Set the cursor color to #001C30
              // controller: ItemName,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 0.5,
                      color: Colors.black), // Set the border color to #001C30
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 0.5, color: Colors.black),
                  // Set the focused border color to #176B87
                ),
                hintText: 'Enter your password',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              'Confirm Password',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              cursorColor: Colors.black,
              // Set the cursor color to #001C30
              // controller: ItemName,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 0.5,
                      color: Colors.black), // Set the border color to #001C30
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 0.5, color: Colors.black),
                  // Set the focused border color to #176B87
                ),
                hintText: 'Re-enter your password',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Center(
                  child: Checkbox(
                    value: isChecked,
                    activeColor: Colors.blue,
                    // tristate: true,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked = newBool;
                      });

                    },
                  ),
                ),
                const Text(
                  'I accept all the Terms and conditions.',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.cyan, // Set the button color to #001C30
              ),
              child: const Text('Submit'),
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
          ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                    leading: const Icon(Icons.list),
                    trailing: const Text(
                      "GFG",
                      style: TextStyle(color: Colors.green, fontSize: 15),
                    ),
                    title: Text("List item $index"));
              }),
        ],
      ),
    );
  }
}


class DropdownItem {
  final int id;
  final String name;

  DropdownItem(this.id, this.name);
}




// ignore: file_names
import 'package:flutter/material.dart';

// ignore: camel_case_types
class materialHomePage extends StatefulWidget {
  const materialHomePage({super.key});
  @override
  // ignore: no_logic_in_create_state
  State<materialHomePage> createState() => currencyConverterPageState();
}


// ignore: camel_case_types 
class currencyConverterPageState extends State<materialHomePage> {
   double result = 0;

  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();

    final border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(25),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(167, 186, 244, 1),
          elevation: 0,
          title: Text("Currency Converter", style: TextStyle(fontSize: 30)),
          centerTitle: true,
        ),
        backgroundColor: Color.fromRGBO(167, 186, 244, 1),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                result.toString(),
                style: TextStyle(
                  fontSize: 35,
                  color: Color.fromRGBO(3, 38, 20, 0.792),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: textEditingController,
                  style: TextStyle(color: Color.fromRGBO(6, 6, 6, 0.875)),
                  decoration: InputDecoration(
                    hintText: ("Enter amount in US currency:"),
                    hintStyle: TextStyle(color: Color.fromRGBO(3, 3, 3, 0.875)),
                    prefixIcon: Icon(Icons.monetization_on_outlined),
                    prefixIconColor: const Color.fromARGB(255, 3, 3, 3),
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState((){
                    result = (double.parse(textEditingController.text) * 85.66);
                  });
                },
                style: ButtonStyle(
                  elevation: WidgetStatePropertyAll(10),
                  shadowColor: WidgetStatePropertyAll(
                    const Color.fromARGB(255, 156, 3, 245),
                  ),
                  backgroundColor: WidgetStatePropertyAll(
                    const Color.fromARGB(255, 156, 3, 245),
                  ),
                  foregroundColor: WidgetStatePropertyAll(
                    Color.fromARGB(234, 250, 250, 250),
                  ),
                  textStyle: WidgetStatePropertyAll(
                    TextStyle(
                      letterSpacing: 4.0,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  fixedSize: WidgetStatePropertyAll(Size(150, 50)),
                ),
                child: Text("Convert"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   double result = 0;
  final TextEditingController textEditingController = TextEditingController();

   void convert(){
     setState(() {
       result = double.parse(textEditingController.text)*103;
     });
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF3A9835),
        title:const Text(
          'Currency Converter',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: const BoxDecoration(color: Color(0xFF3A9835)),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text(
                  'BDT $result',
                  style:const TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextField(
                  controller: textEditingController,
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      hintText: 'Please Enter the amount of USD',
                      hintStyle: const TextStyle(color: Colors.black45),
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: const Icon(Icons.monetization_on_outlined),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      )),
                ),
                const SizedBox(height: 50),
                ElevatedButton(
                    onPressed: convert,
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: const Text(
                      'CONVERT',
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

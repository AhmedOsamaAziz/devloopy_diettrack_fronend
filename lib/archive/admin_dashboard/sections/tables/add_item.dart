import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/widgets/custom_button.dart';

class AddItem extends StatelessWidget {
  const AddItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsApp.MAINCOLOR,
      ),
      body: Center(
        child: SizedBox(
          width: 600,
          height: 500,
          child: Card(
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(height: 20),
                const Text(
                  'Add Item',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: SizedBox(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        hintText: 'id',
                        fillColor: const Color(0x0fffffff),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: SizedBox(
                    width: 300,
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          hintText: 'Enter The Title',
                          fillColor: const Color(0x0fffffff),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: SizedBox(
                    width: 300,
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          hintText: 'Enter The Title',
                          fillColor: const Color(0x0fffffff),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  flex: 3,
                  child: SizedBox(
                    width: 300,
                    child: Center(
                      child: TextField(
                        maxLines: 7,
                        decoration: InputDecoration(
                          filled: true,
                          hintText: 'Enter The Descriptions',
                          fillColor: const Color(0x0fffffff),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                CustomButton(
                    colorbtn: ColorsApp.SecondaryColor,
                    text: 'Save',
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                const SizedBox(height: 50),
              ],
            )),
          ),
        ),
      ),
    );
  }
}

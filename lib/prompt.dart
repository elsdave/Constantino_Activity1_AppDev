import 'package:Constantino_Activity1_AppDev/car.dart';
import 'package:flutter/material.dart';
import 'ctextfield.dart';

class Prompt extends StatefulWidget {
  const Prompt({super.key});

  @override
  State<Prompt> createState() => _PromptState();
}

class _PromptState extends State<Prompt> {
 
  final numController = TextEditingController();
  String? errorMessage;

    void verify() {
      final input = numController.text;
        if (input == 'a') {
          showDialog(
          context: context,
          builder: (context) => AlertDialog(
          title: Text('FAKEE'),
            )
          );
        }
        if (input == '1') {
          showDialog(
          context: context,
          builder: (context) => AlertDialog(
          title: Text('REYALL'),
            )
          );
        } else if (input == '0') {
          showDialog(
          context: context,
          builder: (context) => AlertDialog(
          title: Text('REYALL')
            )
          );
        } else {
          showDialog(
          context: context,
          builder: (context) => AlertDialog(
          title: Text('FAKEE')
          )
          );
        }
    }
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('REYAL OR FAKEE???'),
        centerTitle: true
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: Text('REYAL OR FAKEE'),
                onTap: () {Navigator.push(context, 
                MaterialPageRoute(builder: (context) => const Prompt()),
                );
                },
              ),
              ListTile(
                title: Text('Car Array Lister'),
                onTap: () {Navigator.push(context, 
                MaterialPageRoute(builder: (context) => const Car()),
                );
                },
              )
            ],
          ),
        ),
      body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Ctextfield(
                          hintText: 'Enter a number:',
                          controller: numController,
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    TextButton(
                      onPressed: verify,
                      child: Text('Enter'),
                    )
                ],
              ),
            ),
          )
    );
  }
}


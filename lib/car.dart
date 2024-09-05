import 'package:Constantino_Activity1_AppDev/content.dart';
import 'package:Constantino_Activity1_AppDev/prompt.dart';
import 'package:flutter/material.dart';

class Car extends StatefulWidget {
  const Car({super.key});

  @override
  State<Car> createState() => _CarState();
}
 
class _CarState extends State<Car> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Car Array Lister'),
        backgroundColor: Colors.white,
        centerTitle: true,
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
        body: Expanded(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(75),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Click to print car array.'),
                  SizedBox(height: 5,),
                  ElevatedButton(
                    onPressed: () => showCars(context), 
                    child: Icon(Icons.car_crash)
                    ),
                ]
              ),
            ),
          ),
        )
    );
  }

Future <void> showCars(BuildContext context) {
  return showDialog(context: context, 
  builder: (BuildContext context){
    return SingleChildScrollView(
      child: Column(
        children: [
          AppBar(
            backgroundColor: (Colors.white),
            ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: contents.length,
            itemBuilder: (context, index) {
            return Column(
                children: [
                  SizedBox(height: 25,),
                  Image(image: AssetImage(contents[index].image), 
                  height: double.parse(contents[index].size),
                  ), 
                  SizedBox(height: 25,),
                  Text(contents[index].title, 
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      ),
                    ),
                    
                ],
            );
            }
          ),
        ],
      ),
    );
  });
}

}
import 'package:flutter/material.dart';

import 'Resource.dart';

void main() {
  runApp(MaterialApp(
    home: MainPage(),
  ));
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tarixiy Joylar"),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1.2),
          itemCount: places.length,
          itemBuilder: (context, index) {
            return AspectRatio(
              aspectRatio: 2,
              child: Container(
                margin: EdgeInsets.all(5),
                color: Colors.orange[100],
                child: Column(
                  children: [
                    Container(
                      height: 120,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        places[index].image,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      places[index].name,
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}

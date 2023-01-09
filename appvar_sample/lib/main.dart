import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Appbar Sample'),
      ),
      body: Text("Hello World"),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      persistentFooterButtons: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.abc)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.safety_check)),
      ],
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                debugPrint("Item 1");
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                debugPrint("Item 2");
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 24),
          decoration: const BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(24))),
          child: Row(
            children: [
              Spacer(),
              SizedBox(
                width: 36,
                height: 36,
                child:
                    IconButton(onPressed: () {}, icon: const Icon(Icons.abc)),
              ),
              const SizedBox(
                width: 36,
                height: 36,
                child: Icon(Icons.home),
              ),
              const SizedBox(
                width: 36,
                height: 36,
                child: Icon(Icons.safety_check),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    ));
  }
}

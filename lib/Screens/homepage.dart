import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height*0.9,
              width: size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/topbar.jpg"),fit: BoxFit.fitHeight)
              ), 
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
              child: Container(
                  height: size.height*0.1,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(24)
                  ),
                  child: const Center(child: Text("DOWNLOAD APP", style: TextStyle(color: Colors.white, fontSize: 24),)),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
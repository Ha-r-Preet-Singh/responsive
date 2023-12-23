import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late MediaQueryData media;
  @override
  Widget build(BuildContext context) {


     media = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(title: Text("Responsive"),),
      body: Center(
        child: media.orientation==Orientation.portrait ? Container(
          color: Colors.blue,
          width: media.size.width*0.25,
          height: media.size.height*0.75,
        ):Container(
          color: Colors.blue,
          width: media.size.width*0.75,
          height: media.size.height*0.25,
          child: LayoutBuilder(
            builder: (_, constraints) {
              return Text("Harpreet",style: TextStyle(fontSize: constraints.maxWidth>800 ?84:51),);
            },
          ),
        ),
      ),

    );
  }
}

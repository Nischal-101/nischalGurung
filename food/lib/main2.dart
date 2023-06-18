import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;
  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  //  void decrementCounter() {
  //   setState(() {
  //     _counter--;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      drawer: const Drawer(
        child: Column(
          children: [
            ListTile(
              title: Text("helloo"),)
              ,ListTile(
                title: Text("helll"),
              ),ListTile(
                title: Row(
                  children: [
                    Text("data"),
                    Text("data")
                  ],
                ),
              )
              
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Container( //suruuu ko container
                  decoration: const BoxDecoration(
                    color: Colors.amberAccent
                  ),
                  height: 180,
                  width: 110,
                  margin: const EdgeInsets.only(top: 15, left: 15),
                ),
                
                Column(
                  children: [
                    Container( // side ko container
                      decoration: const BoxDecoration(
                        color: Colors.black54
                      ),
                      height: 80,
                      width: 255,
                      margin: const EdgeInsets.only(top: 18, left: 15),
                    ),

                    Row(
                      children: [
                        Container( //tala sko sano container first ko
                      decoration: const BoxDecoration(
                        color: Colors.black54
                      ),
                      height: 85,
                      width: 118,
                      margin: const EdgeInsets.only(top: 15, left: 15),
                    ),

                    Container( // secind container second ko
                      decoration: const BoxDecoration(
                        color: Colors.black54
                      ),
                      height: 85,
                      width: 118,
                      margin: const EdgeInsets.only(top: 15, left: 15),
                    ),
                      ],
                    )
                  ],
                ),    
              ],
            ),    
            
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container( // bichhaa ko lamoooooooo
                      decoration: const BoxDecoration(
                        color: Colors.blueAccent
                      ),
                      height: 100,
                      width: 380,
                      margin: const EdgeInsets.only(top: 15),
                    )
                  ],
                ),


// taalaaa ko suruuu avyoo abaaaaa
                Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.cyanAccent
                      ),
                      height: 175,
                      width: 170,
                      margin: const EdgeInsets.only(top: 15, left: 15),

                    ),

                    Column(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.deepPurple
                          ),
                          height: 80,
                          width: 90,
                          margin: const EdgeInsets.only(top: 15, left: 15),
                        ),


                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.deepPurple
                          ),
                          height: 80,
                          width: 90,
                          margin: const EdgeInsets.only(top: 15, left: 15),
                        )
                      ],
                    ),

                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.red
                      ),
                      height: 175,
                      width: 90,
                      margin: const EdgeInsets.only(top: 15, left: 15),
                    )                    
                  ],
                ),

              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.indigo[600]),
                      height: 220,
                      width: 170,
                      margin: EdgeInsets.only(top: 15, left: 15),
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[700]
                        ),
                        height: 220,
                        width: 90,
                        margin: const EdgeInsets.only(left: 15, top: 15),
                      )
                    ],
                    

                  ),

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.indigo[600]),
                      height: 220,
                      width: 90,
                      margin: EdgeInsets.only(top: 15, left: 15),
                  )
                
                  
                ],
              )
                

                         
          ],
        ),

        
        
          
        ),
      );    
    
  }
}

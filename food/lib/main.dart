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
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

   void decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      drawer: const Drawer(
        child: Column(
          children: [
            ListTile(
              title: Text("Home"),            
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.abc_outlined),
                  Text("Profile"),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.abc),
                  Text("Setting"),
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
      body: Center(
       
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Container(
              
              decoration: const BoxDecoration(
          
                color: Colors.amber,
              ),
              height: 30,
              width: 40,
            ),

            
            const Text(

              'You have pushed the button this many times:',style:TextStyle(
                color: Colors.amber,
                fontSize: 17,
              ) ,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red
                ),
                onPressed: (){
                _incrementCounter();
              },
               child: Text("increase", style:TextStyle(
                color: Colors.black87,
                fontSize: 12) 
              )),
            ),

            const SizedBox(
                height: 40,
              )
          

            ,ElevatedButton(
              onPressed: (){
                  decrementCounter();
              }, child: Text("decrease")),
              

        
          ],
          
        ),
      ),


      

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}

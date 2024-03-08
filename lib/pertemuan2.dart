import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu), // show burger icon
        title: Text("Homepage"),
        actions: [
          FlutterLogo(),
          FlutterLogo(),
          FlutterLogo()
        ],
      ),
      body: SingleChildScrollView(
          // child: Column(
          //     children: [
          //       Container(
          //         color: Colors.amber,
          //         height: 600,
          //       ),
          //       Container(
          //         color: Colors.green,
          //         height: 10001,
          //       )
          //     ],
          // )
      
      // Stack(
      //   children: [
      //     Container(
      //       color: Colors.amber,
      //     ),
      //     Container(
      //       color: Colors.green,
      //       height: 400,
      //       width: 300,
      //     )
      //   ],
      // )

      // GridView.builder(
      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      //     itemBuilder: (_, index) => FlutterLogo(),
      //     itemCount: 4,
      // )

      // ListView.separated(
      //     itemBuilder: (context, index){
      //       return Text("Ini List ke-${index+1}");
      //     },
      //     separatorBuilder: (BuildContext context, int index){
      //       return Container(
      //         decoration: BoxDecoration(
      //           color: Colors.amber,
      //         ),
      //       );
      //     },
      //     itemCount: 10,
      // )

      // ListView.builder(
      //     itemBuilder: (context, index){
      //       return Text("Ini List ke-${index}");
      //     },
      //   itemCount: 10,
      // )
        
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FlutterLogo(),
            Text("Flutter Form"),
            TextField(
              decoration: InputDecoration(
                hintText: "Masukkin input"
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Masukkin input"
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Masukkin input"
              ),
            ),
            ElevatedButton(
                onPressed: (){},
                child: Text("Submit")
            )
          ],
        ),
      )
      )
    );
  }
}

import 'package:flutter/material.dart';

class PertemuanTiga extends StatelessWidget {
  const PertemuanTiga({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pertemuan 3"),
        // leading: ,
        // actions: [],
      ),
        body: IndexedStack(
          index: 2,
          children: [
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.black,
              height: 400, width: 400,
            ),
            Container(
              color: Colors.purple,
              height: 200, width: 200,
            ),
          ],
        )
        // GridView.builder(
        //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount (crossAxisCount: 2),
        //     itemBuilder: (context, index){
        //       return FlutterLogo();
        //     },
        //     itemCount: 10,
        // )
    //     GridView(
    //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount (crossAxisCount: 3),
    //       children: [
    //         FlutterLogo(),FlutterLogo(),FlutterLogo(),FlutterLogo(),
    //       ],
    // )

    // ListView.builder(
    //     itemBuilder: (context, index){
    //       index = index+1;
    //       return Card(
    //         child: Padding(
    //           padding: EdgeInsets.all(15),
    //           child: Text('Index $index'),
    //         )
    //       );
    //     },
    //     itemCount: 12,
    // )

    // ListView(
    //       // padding: EdgeInsets.all(20),
    //       children: [
    //         Container(
    //           padding: EdgeInsets.fromLTRB(20,20,20,0),
    //           child: Text("Flutter Widget: List View",
    //             style: TextStyle(
    //                 fontSize: 40,
    //                 fontWeight: FontWeight.bold
    //             ),
    //           ),
    //         ),
    //         Container(
    //           padding: EdgeInsets.all(20),
    //           child: Text("t I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?"),
    //         )
    //       ],
    // ),
    );
  }
}

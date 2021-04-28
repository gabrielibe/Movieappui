import 'package:flutter/material.dart';
import 'DashboardScreen.dart';
class routers extends StatefulWidget {
  @override
  _routersState createState() => _routersState();
}

class _routersState extends State<routers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       actions: [
         IconButton(
           icon :Icon(
             Icons.send,
             color : Colors.white,),
          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return Dash();
                },
                )
            );
          },


           )

     ]
      )
    );


  }
}

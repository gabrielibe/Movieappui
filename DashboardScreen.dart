import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app_ui/Widget/vertical%20_list.dart';
import 'Widget/horizontal_list_item.dart';
import 'model/movie.dart';
import 'routePract.dart';
class Dash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('G dashboard'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
          ],
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Recommended',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    FlatButton(
                      child: Text(
                        'view all',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
               itemCount: movieList.length,
               itemBuilder:(ctx, i ) => HorizontalListItem(i),
               // children: [
                 // HorizontalList(),
                  //HorizontalList(),
                  //HorizontalList(),
                //],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Best of 2021',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  FlatButton(
                    child: Text(
                      'view all',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),
       Container(
         height: 350,
         padding: EdgeInsets.symmetric(horizontal: 2,vertical: 2),
         child: ListView.builder(
           physics: NeverScrollableScrollPhysics(),
           itemCount: bestMovieList.length,
           itemBuilder: (ctx , i) => VerticalList(i),

         ),
       ),
SizedBox(
  height: 30,
),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Top Rated Movies',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    FlatButton(
                      child: Text(
                        'view all',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) {
    return routers();
                      },
                    )
    );}
    )


                  ],
                ),
              ),
            ),
           // Container(
             // height: 250,
              //child: ListView(
               // scrollDirection: Axis.horizontal,
                //children: [
                 // HorizontalListItem(),
                  //HorizontalListItem(),
                  //HorizontalListItem(),
                //],
              //),
            //),

          ]
        )
    );

  }
}

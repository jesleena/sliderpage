import 'package:flutter/material.dart';
//import 'package:sliderpage/main.dart';
import 'package:sliderpage/image_widget.dart';

class SliverAppBar1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: DefaultTabController(
      length: 2,
      child: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            SliverAppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              expandedHeight: 200,
              floating: true,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                //background: Image.network(
                //'https://source.unsplash.com/random?monochromatic+dark',
                //  fit: BoxFit.cover,
                //  ),
                title: Text('Name\n',style: (TextStyle(
                  color: Colors.black54,


                )),),

                // centerTitle: true,

              ),




              leading: Icon(
                Icons.arrow_back_ios_sharp,
                color: Colors.black38,
              ),

              //title: Text(MyApp.title),
              title: Text(
                'Profile',

                style: (TextStyle(
                  color: Colors.black54,
                )),
              ),


              bottom: TabBar(
                  //padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
                tabs: [
                  Tab(child: Text('photos', style: TextStyle(color: Colors.black))),
                  Tab(child: Text('followers', style: TextStyle(color: Colors.black)))
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          children: [
            buildImages(),
            buildImages(),
          ],
        ),
      ),
    ),
  );

  Widget buildImages() => GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    itemCount: 20,
    itemBuilder: (context, index) => ImageWidget(index: index),
  );
}

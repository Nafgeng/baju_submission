import 'package:baju_submission/baju.dart';
import 'package:baju_submission/detail_screen_baju.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff003049),
          title: Text('Clothes'),
        ),
        body: Container(
          child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraint) {
            if (constraint.maxWidth <= 600) {
              return ListBaju();
            } else if (constraint.maxWidth <= 1200) {
              return GridToko(gridCount: 4);
            } else {
              return GridToko(gridCount: 5);
            }
          }),
        ));
  }
}

class ListBaju extends StatelessWidget {
  const ListBaju({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff013a63),
      body: Stack(
          children: <Widget>[
            Container(
              child: Text('Our Ambassador',
                style: TextStyle(color: Colors.white,fontSize: 20),
              ),
              margin: EdgeInsets.only(top: 25,left: 25),
            ),
            Container(
              child: Text('Our Clothes',
                style: TextStyle(color: Colors.white,fontSize: 20),
              ),
              margin: EdgeInsets.only(left: 25,top: MediaQuery.of(context).size.height * 0.5),
            ),
            Container(
              color: Color(0xff013a63),
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.6),
              child: ListView.builder(
                padding: EdgeInsets.all(20),
                itemBuilder: (context, index) {
                  late final TokoBaju baju = TokoBajuList[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return DetailScreen(tokos: baju);
                          }));
                    },
                    child: Card(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  SizedBox(
                                    child: Image.asset(
                                      baju.imageAsset,
                                      height: 150,
                                      width: 150,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        baju.name,
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        baju.produk,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 100,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          FavouriteButton()
                        ],
                      ),
                    ),
                  );
                },
                itemCount: TokoBajuList.length,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                ),
                items: imglist
                    .map((item) => Container(
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    child: ClipRRect(
                        borderRadius:
                        BorderRadius.all(Radius.circular(5.0)),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              color: Colors.white,
                              child: Image.asset(item,
                                  fit: BoxFit.fitHeight, width: 500,),
                            ),
                            Positioned(
                              bottom: 0.0,
                              left: 0.0,
                              right: 0.0,
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color.fromARGB(200, 0, 0, 0),
                                      Color.fromARGB(0, 0, 0, 0)
                                    ],
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                  ),
                                ),
                                padding: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 20.0),
                              ),
                            ),
                          ],
                        )
                    ),
                  ),
                ))
                    .toList(),
              ),
            ),
          ])
    );
  }
}

class GridToko extends StatelessWidget {
  late final int gridCount;

  GridToko({required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: true,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: GridView.count(
            crossAxisSpacing: 5,
            crossAxisCount: gridCount,
            children: TokoBajuList.map((datatokobaju) {
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailScreen(tokos: datatokobaju);
                  }));
                },
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                        child: Image.asset(
                          datatokobaju.imageAsset,
                          fit: BoxFit.cover,
                        ),
                        
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          datatokobaju.name,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
    );
  }
}
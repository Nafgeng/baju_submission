import 'package:baju_submission/baju.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final TokoBaju tokos;

  DetailScreen({required this.tokos});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraint) {
      if (constraint.maxWidth > 800) {
        return DetailWeb(
          detailweb: tokos,
        );
      } else {
        return DetailMobile(detailmobile: tokos);
      }
    });
  }
}

class DetailWeb extends StatelessWidget {
  late final TokoBaju detailweb;

  DetailWeb({required this.detailweb});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Clothes',
              style: TextStyle(fontSize: 32),
            ),
            SizedBox(
              height: 28,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: [
                      ClipRRect(
                        child: Image.asset(detailweb.imageAsset),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        height: 150,
                        padding: EdgeInsets.only(bottom: 18),
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: detailweb.imageUrl.map((imageurl) {
                              return Padding(
                                padding: EdgeInsets.all(4),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(imageurl),
                                ),
                              );
                            }).toList()),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                        Card(
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Container(
                            width: 1000,
                            padding: EdgeInsets.all(16),
                            child: Text(
                              detailweb.name,
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          elevation: 5,
                        ),
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                    children: <Widget>[
                                      Icon(Icons.monetization_on),
                                      SizedBox(height: 8,),
                                      Text(detailweb.harga)
                                    ]
                                ),
                                Column(
                                  children: <Widget>[
                                    Icon(Icons.thumb_up),
                                    SizedBox(height: 8,),
                                    Text(detailweb.kualitas)
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Icon(Icons.money),
                                    SizedBox(height: 8,),
                                    Text(detailweb.kualitas)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      FavouriteButton(),
                      Container(
                            padding: EdgeInsets.all(16),
                            child: Text(
                              detailweb.description,
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DetailMobile extends StatelessWidget {
  late final TokoBaju detailmobile;

  DetailMobile({required this.detailmobile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.asset(
                    detailmobile.imageAsset,
                    width: 500,
                    height: 250,
                  ),
                  SafeArea(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.black87,
                          child: IconButton(
                            icon: Icon(Icons.arrow_back),
                            color: Colors.white,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        FavouriteButton()
                      ],
                    ),
                  ),
                ],
              ),
              Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
                      child: Column(
                        children: [
                          CarouselSlider(
                            items: detailmobile.imageUrl
                                .map((gambarurl) => Container(
                              child: Center(
                                child: Image.network(
                                  gambarurl,
                                  fit: BoxFit.cover,
                                  width: 1000,
                                ),
                              ),
                            ))
                                .toList(),
                            options: CarouselOptions(
                              autoPlay: true,
                              aspectRatio: 2,
                              enlargeCenterPage: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 0.0),
                child: Text(
                  detailmobile.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                ),
              ),
              Card(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Icon(Icons.monetization_on),
                          SizedBox(
                            height: 8,
                          ),
                          Text(detailmobile.harga)
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Icon(Icons.thumb_up),
                          SizedBox(
                            height: 8,
                          ),
                          Text(detailmobile.kualitas)
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Icon(Icons.money),
                          SizedBox(
                            height: 8,
                          ),
                          Text(detailmobile.bahan)
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                child: Text(
                  detailmobile.description,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Container(
                height: 150,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: detailmobile.imageUrl.map((urlgambar) {
                      return Padding(
                        padding: EdgeInsets.all(4),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(urlgambar),
                        ),
                      );
                    }).toList()),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FavouriteButton extends StatefulWidget {
  @override
  _FavouriteButtonState createState() => _FavouriteButtonState();
}

class _FavouriteButtonState extends State<FavouriteButton> {

  bool isFavourite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(isFavourite ? Icons.favorite : Icons.favorite_border,color: Colors.red,),
        onPressed: () {
          setState(() {
            isFavourite = !isFavourite;
          });
        }
    );
  }
}
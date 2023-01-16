// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travel_app/data/data.dart';
import 'package:travel_app/models/destination.dart';
import 'package:travel_app/screens/destination_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 20.0, right: 10.0, left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.menu_sharp),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.person_sharp),
                  onPressed: () {},
                )
              ],
            ),
            Text(
              "Discover",
              textAlign: TextAlign.left,
              overflow: TextOverflow.visible,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 26.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Explore whats in the world",
              textAlign: TextAlign.left,
              overflow: TextOverflow.visible,
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w200,
                  color: Colors.black38),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(width: 0.8),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    width: 0.8,
                    color: Theme.of(context).primaryColorDark,
                  ),
                ),
                hintText: 'Search your trip',
                prefixIcon: Icon(
                  Icons.search,
                  size: 30.0,
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              continents(country: 'All'),
              continents(
                country: 'America',
              ),
              continents(country: 'Asia'),
              continents(country: 'Africa'),
              continents(country: 'Europe'),
            ]),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: all_destinations.length,
                itemBuilder: (BuildContext context, int index) {
                  Destination destination = all_destinations[index];
                  return GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DestinationScreen(
                          singleDestination: destination,
                        ),
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(right: 20.0),
                      height: 200.0,
                      width: 170.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image(
                              height: 200.0,
                              width: 170.0,
                              image: AssetImage(
                                destination.mainImageUrl,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 160.0),
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      destination.title,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      'Starting at \$${destination.price}',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  // give it a padding of 6px all round
                                  padding: EdgeInsets.all(6.0),
                                  // use the box decoration to set the color to white
                                  // in the box decoration set the border radius to 50
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  // child of the container should be an image widget
                                  child: Image(
                                    // the image widget should be of height 20 and width 20
                                    height: 20.0,
                                    width: 20.0,
                                    image: AssetImage(
                                      'assets/images/heart.png',
                                    ),
                                    // set the BoxFit to contain
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Popular Categories',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Popularcategory(
                  imageUrl: 'assets/icons/icons8-airplane-take-off-100.png',
                  title: 'Flights',
                ),
                Popularcategory(
                    imageUrl: 'assets/icons/icons8-building-100.png',
                    title: 'hotels'),
                Popularcategory(
                    imageUrl: 'assets/icons/icons8-car-50.png',
                    title: 'car-hire'),
                Popularcategory(
                    imageUrl: 'assets/icons/icons8-confetti-100.png',
                    title: 'Party')
              ],
            )
          ],
        ),
      ),
    );
  }
}

class continents extends StatelessWidget {
  final String country;
  const continents({
    Key? key,
    required this.country,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      country,
      style: TextStyle(color: Colors.grey),
    );
  }
}

class Popularcategory extends StatelessWidget {
  final String imageUrl;
  final String title;

  const Popularcategory({
    Key? key,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: Image(
            height: 60.0,
            width: 60.0,
            image: AssetImage(imageUrl),
            fit: BoxFit.contain,
          ),
        ),
        Text(title)
      ],
    );
  }
}

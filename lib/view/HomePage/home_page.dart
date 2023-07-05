import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CarouselController _carouselController = CarouselController();
  int _current = 0;

  final List<dynamic> _movies = [
    {
      'title': 'Black Widow',
      'image':
          'https://www.moviepostersgallery.com/wp-content/uploads/2020/08/Blackwidow2.jpg',
      'description': 'Black Widow'
    },
    {
      'title': 'The Suicide Squad',
      'image':
          'https://static.wikia.nocookie.net/headhuntersholosuite/images/7/77/Suicide_Squad%2C_The.jpg/revision/latest?cb=20210807172814',
      'description': 'The Suicide Squad'
    },
    {
      'title': 'Godzilla Vs Kong',
      'image':
          'https://pbs.twimg.com/media/EwTsO9CVcAUxoMM?format=jpg&name=large',
      'description': 'Godzilla Vs Kong'
    }
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            //Image.network(_movies[_current]['image'], fit: BoxFit.cover),
            CachedNetworkImage(
              imageUrl: _movies[_current]['image'],
              placeholder: (context, url) => SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Container(
                  color: Colors.yellow,
                ),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                      Colors.grey.shade50.withOpacity(1),
                      Colors.grey.shade50.withOpacity(1),
                      Colors.grey.shade50.withOpacity(1),
                      Colors.grey.shade50.withOpacity(1),
                      Colors.grey.shade50.withOpacity(0.0),
                      Colors.grey.shade50.withOpacity(0.0),
                      Colors.grey.shade50.withOpacity(0.0),
                      Colors.grey.shade50.withOpacity(0.0),
                    ])),
              ),
            ),
            Positioned(
              bottom: 80,
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 500.0,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.70,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
                carouselController: _carouselController,
                items: _movies.map((movie) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  height: 320,
                                  margin: const EdgeInsets.only(top: 30),
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: CachedNetworkImage(
                                    imageUrl: _movies[_current]['image'],
                                    placeholder: (context, url) => const Center(
                                        child: CircularProgressIndicator()),
                                    errorWidget: (context, url, error) =>
                                        const Icon(Icons.error),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  movie['title'],
                                  style: const TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                // rating
                                const SizedBox(height: 20),
                                Container(
                                  child: Text(
                                    movie['description'],
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.grey.shade600),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                AnimatedOpacity(
                                  duration: const Duration(milliseconds: 500),
                                  opacity: _current == _movies.indexOf(movie)
                                      ? 1.0
                                      : 0.0,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              const Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                                size: 20,
                                              ),
                                              const SizedBox(width: 5),
                                              Text(
                                                '4.5',
                                                style: TextStyle(
                                                    fontSize: 14.0,
                                                    color:
                                                        Colors.grey.shade600),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.access_time,
                                                color: Colors.grey.shade600,
                                                size: 20,
                                              ),
                                              const SizedBox(width: 5),
                                              Text(
                                                '2h',
                                                style: TextStyle(
                                                    fontSize: 14.0,
                                                    color:
                                                        Colors.grey.shade600),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.2,
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.play_circle_filled,
                                                color: Colors.grey.shade600,
                                                size: 20,
                                              ),
                                              const SizedBox(width: 5),
                                              Text(
                                                'Watch',
                                                style: TextStyle(
                                                    fontSize: 14.0,
                                                    color:
                                                        Colors.grey.shade600),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ));
                    },
                  );
                }).toList(),
              ),
            ),
            Positioned(
                bottom: 30,
                width: MediaQuery.of(context).size.width,
                height: 30,
                child: Container(
                    alignment: Alignment.center,
                    child: const Text("Upcoming Events")))
          ],
        ),
      ),
    );
  }
}

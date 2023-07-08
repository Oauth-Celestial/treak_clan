import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  HomeCard({
    super.key,
    required this.movie,
  });

  Map<String, dynamic> movie;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(horizontal: 5.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(color: Colors.black, width: 0.5)),
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
                  imageUrl: movie['image'],
                  placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                movie['title'],
                style: const TextStyle(
                    fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              // rating
              const SizedBox(height: 20),
              Text(
                movie['description'],
                style: TextStyle(fontSize: 14.0, color: Colors.grey.shade600),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
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
                              fontSize: 14.0, color: Colors.grey.shade600),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          color: Colors.grey.shade600,
                          size: 20,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          ' Treak Time :- 2h',
                          style: TextStyle(
                              fontSize: 14.0, color: Colors.grey.shade600),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

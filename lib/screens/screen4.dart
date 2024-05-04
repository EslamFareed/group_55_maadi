import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

class Screen4 extends StatelessWidget {
  Screen4({super.key});

  List<String> images = [
    "https://media.gettyimages.com/id/1306141437/photo/woman-standing-on-the-terrace-on-the-background-of-giza-pyramids.jpg?s=612x612&w=gi&k=20&c=Li9m0ly1X8KlWxsQuwWAkM1ihxcELqRCNW8kGk904PI=",
    "https://media.istockphoto.com/id/1370918272/photo/skyline-over-the-nile-in-cairo-before-sunset-aerial-view-egypt.jpg?s=612x612&w=0&k=20&c=y2crsJybvK2WFNV4Z0Px0jn3moY6ds9ZeUQa3EC-lDY=",
    "https://static.vecteezy.com/system/resources/thumbnails/021/746/785/small/holding-a-tree-in-a-ball-ecology-and-environment-concept-with-generative-ai-photo.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeHZcctIFoDLsne72fvfoRwJe_CcDdlfHWO6TzvMTG&s",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Packages"),
      ),
      body: Column(
        children: [
          CarouselSlider.builder(
            itemCount: images.length,
            itemBuilder: (context, index, realIndex) {
              return Image.network(
                images[index],
                fit: BoxFit.cover,
                width: MediaQuery.sizeOf(context).width,
              );
            },
            options: CarouselOptions(
              height: MediaQuery.sizeOf(context).height * .4, // Size of screen
              autoPlay: true,
              viewportFraction: 1,
              enlargeCenterPage: true,
              // reverse: true,
              // autoPlayInterval: const Duration(seconds: 5),
              // autoPlayAnimationDuration: const Duration(seconds: 3),
              enableInfiniteScroll: false,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              showToast(
                "hello styled toast",
                context: context,
                // alignment: Alignment.topCenter,
                // position: StyledToastPosition.top,
                // backgroundColor: Colors.deepOrange,
                // onDismiss: () {

                // },
                animDuration: Duration(seconds: 3),
                duration: Duration(seconds: 7),
              );
            },
            child: const Text("Show message"),
          )
        ],
      ),
    );
  }
}

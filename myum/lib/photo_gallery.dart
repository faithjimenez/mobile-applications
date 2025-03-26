import 'package:flutter/material.dart';

class PhotoGallery extends StatelessWidget {
  final List<String> picUrls;

  const PhotoGallery({super.key, required this.picUrls});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Align title to the left
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Gallery",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange, // Adjust color as needed
            ),
          ),
          
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Text("See what our staff and students have been up to!",
        style:TextStyle(fontSize: 20, fontWeight: FontWeight.w300,color: Colors.white)),),
        
        Expanded( // Ensures the grid takes up the remaining space
          child: GridView.builder(
            padding: const EdgeInsets.all(10),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // 3 images per row
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
            ),
            itemCount: picUrls.length,
            itemBuilder: (context, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  picUrls[index],
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

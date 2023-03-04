import 'package:flutter/material.dart';

class ImageExamples extends StatelessWidget {
  const ImageExamples({super.key});

  @override
  Widget build(BuildContext context) {
    String _photoURL = "assets/images/aiPhoto.jpeg";
    String _imageURL =
        "https://i.pcmag.com/imagery/articles/03a3gbCKfH8dDJnjhHLuHDf-1..v1665523315.png";
    String _imageURL2 = "https://freepngimg.com/thumb/nature/2-2-nature-png-file.png";
    String _imageURL3 = "https://w7.pngwing.com/pngs/627/217/png-transparent-list-of-intel-core-i9-microprocessors-kaby-lake-coffee-lake-intel-text-intel-electronic-device-thumbnail.png";
    return Center(
      child: Column(
        children: [
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.teal.shade300,
                    width: 250,
                    height: 200,
                    child: Image.asset(
                      _photoURL,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 200,
                    height: 200,
                    child: Image.network(_imageURL2, fit: BoxFit.cover),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 200,
                    height: 200,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(_imageURL3),
                    ),
                  ),
                ),
              ],
            ),
            
          ),
          Container(child: FadeInImage.assetNetwork(placeholder: "assets/images/loading.gif", image: _imageURL)),
          Expanded(child: Placeholder()),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class ReviewOrder1 extends StatefulWidget {
  const ReviewOrder1({Key? key}) : super(key: key);

  @override
  State<ReviewOrder1> createState() => _ReviewOrder1State();
}

class _ReviewOrder1State extends State<ReviewOrder1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(253, 237, 237, 1.0),
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: Text(
          'Review Order',
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body:

      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
          RatingBar.builder(
          initialRating: 3,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
            SizedBox(height: 60,),
            TextField(
              cursorColor: Colors.grey,
              keyboardType: TextInputType.multiline,
              maxLines: 4,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: "Write Your Review",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.white
                  ),
                ),
              ),

            ),

            SizedBox(height: 40,),
            FloatingActionButton.extended(
              label: Text('Submit Purchase Review '), // <-- Text
              backgroundColor: Color.fromARGB(255, 180, 214, 119),
              onPressed: () {
                Navigator.pushNamed(context,"");
              },
            ),
          ],
        ),
      ),

    );
  }

}

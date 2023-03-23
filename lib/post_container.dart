import 'package:flutter/material.dart';

class PostContainer extends StatelessWidget {
  final String uploader, postImage;

  const PostContainer(
      {super.key, required this.uploader, required this.postImage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 32),
      child: Container(
        child: Column(
          children: [
            Row(
              children: [const CircleAvatar(), Text(uploader)],
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(postImage), fit: BoxFit.cover)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.adobe),
                    const Icon(Icons.comment),
                    GestureDetector(
                      onTap: () {
                        print("Button send ditekan");
                      },
                      child: Image.asset(
                        'assets/icons/send.png',
                        width: 24,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                const Icon(Icons.save),
              ],
            )
          ],
        ),
      ),
    );
  }
}

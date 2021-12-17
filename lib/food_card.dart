import 'package:flutter/material.dart';

Widget foodCard(String img, String title, String price) {
  return Container(
    child: Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              img,
              height: 50.0,
            ),
            const SizedBox(
              height: 8.0,
            ),
            Flexible(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "${price}",
                    style: const TextStyle(
                        fontSize: 22.0, fontWeight: FontWeight.w700),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_border,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}

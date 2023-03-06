import 'package:creativa_task/model/article_model.dart';
import 'package:creativa_task/pages/article_details.dart';
import 'package:flutter/material.dart';

Widget CustomListTile(Article article, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ArticleDetails(article: article),
          ));
    },
    child: Container(
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 3),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 5,
          ),
          Container(
              height: 155,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: article.urlToImage == null ||
                              article.urlToImage ==
                                  "https://media.wired.com/photos/63ea75bd69cf98bf3540429b/191:100/w_1280,c_limit/Coup-D'etat-In-Bitcoin-Land-Business.mp4"
                          ? const NetworkImage(
                              'https://th.bing.com/th/id/R.2e4d23d745f4dbd1cdd6c4a523d069fe?rik=sGYVQzJd%2fJ7OXg&riu=http%3a%2f%2fwww.gannett-cdn.com%2f-mm-%2fe2a62e279b08edc40e3ff364b384684560472d01%2fc%3d4-0-1916-1080%26r%3dx633%26c%3d1200x630%2flocal%2f-%2fmedia%2fWTSP%2fWTSP%2f2014%2f11%2f20%2f635520756333830145-Breaking-News.jpg&ehk=7es%2bwLx%2bJTL7lAbqLarurW1j5gGdNGgQpPvRTQuSeNs%3d&risl=&pid=ImgRaw&r=0')
                          : NetworkImage(article.urlToImage!)))),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              article.source!.name!,
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              article.title!,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          )
        ],
      ),
    ),
  );
}

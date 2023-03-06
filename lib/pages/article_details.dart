import 'package:creativa_task/model/article_model.dart';
import 'package:flutter/material.dart';

class ArticleDetails extends StatelessWidget {
  Article article;
  ArticleDetails({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          article.title!,
          style: TextStyle(fontSize: 17),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, top: 20.0, right: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 155,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: article.urlToImage == null ||
                            article.urlToImage ==
                                "https://media.wired.com/photos/63ea75bd69cf98bf3540429b/191:100/w_1280,c_limit/Coup-D'etat-In-Bitcoin-Land-Business.mp4"
                        ? NetworkImage(
                            'https://th.bing.com/th/id/R.2e4d23d745f4dbd1cdd6c4a523d069fe?rik=sGYVQzJd%2fJ7OXg&riu=http%3a%2f%2fwww.gannett-cdn.com%2f-mm-%2fe2a62e279b08edc40e3ff364b384684560472d01%2fc%3d4-0-1916-1080%26r%3dx633%26c%3d1200x630%2flocal%2f-%2fmedia%2fWTSP%2fWTSP%2f2014%2f11%2f20%2f635520756333830145-Breaking-News.jpg&ehk=7es%2bwLx%2bJTL7lAbqLarurW1j5gGdNGgQpPvRTQuSeNs%3d&risl=&pid=ImgRaw&r=0')
                        : NetworkImage(article.urlToImage!),
                  ),
                ),
              ),
              SizedBox(height: 8),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Author : ',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      article.author == null
                          ? 'Author not Found'
                          : article.author!,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Title : ',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      article.title!,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Description : ',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      article.description!,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Content : ',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      article.content!,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import '../../components/core/organisms/article_body.dart';
import '../../components/core/organisms/footer.dart';
import '../../components/core/organisms/image_header.dart';
import '../../components/core/organisms/side_info_body.dart';
import 'package:flutter/material.dart';

class IndexTemplate extends StatefulWidget {
  const IndexTemplate({Key? key, this.data}) : super(key: key);
  final Map? data;

  @override
  _IndexTemplateState createState() => _IndexTemplateState();
}

class _IndexTemplateState extends State<IndexTemplate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.data!['title']),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(
                top: 0,
                bottom: 0,
                right: 0,
                left: 0,
              ),
              child: ImageHeaderOrganisms(data: widget.data!['header']),
            ),
            Container(
                padding: const EdgeInsets.only(
                  top: 30,
                  bottom: 30,
                  right: 50,
                  left: 50,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        color: Colors.black12,
                        width: 1000,
                        padding: const EdgeInsets.only(
                          top: 50,
                          bottom: 50,
                          right: 50,
                          left: 50,
                        ),
                        child: ArticleBodyOrganisms(
                            data: widget.data!['body']['articles']),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: 200,
                        padding: const EdgeInsets.only(
                          top: 0,
                          bottom: 0,
                          right: 0,
                          left: 30,
                        ),
                        child: SideInfoBodyOrganisms(
                            data: widget.data!['body']['info']),
                      ),
                    ),
                  ],
                )),
            Container(
              padding: const EdgeInsets.only(
                top: 0,
                bottom: 30,
                right: 0,
                left: 0,
              ),
              child: FooterOrganisms(data: widget.data!['footer']),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  final String title;
  final String filePath;
  const TermsAndConditionsScreen(
      {super.key, required this.title, required this.filePath});
  static const routeName = 'termsAndConditions';

  @override
  Widget build(BuildContext context) {
    // final routArgs = ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    // final title = routArgs['title'];
    // final filePath = routArgs['filePath'];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15),
          child: Column(
            children: [
              FutureBuilder(
                future: rootBundle.loadString(filePath),
                builder:
                    (BuildContext context, AsyncSnapshot<String> snapshot) {
                  if (snapshot.hasData) {
                    return Markdown(
                      styleSheet: MarkdownStyleSheet(
                        blockSpacing: 01,
                        textAlign: WrapAlignment.spaceBetween,
                      ),
                      data: snapshot.data!,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

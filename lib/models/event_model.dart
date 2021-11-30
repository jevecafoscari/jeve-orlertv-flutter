import 'package:flutter/material.dart';
import 'package:wordpress_api/wordpress_api.dart';
import 'package:html/parser.dart' show parse;

class EventModel {
  final String title;
  final String content;
  final String excerpt;

  EventModel({
    required this.title,
    required this.content,
    required this.excerpt,
  });

  factory EventModel.fromPost(Post post) => EventModel(
        title: _parseHtmlString(post.title!),
        content: _parseHtmlString(post.content!),
        excerpt: _parseHtmlString(post.excerpt!).split("\n").first.replaceAll("Read More", ""),
      );
}

String _parseHtmlString(String htmlString) {
  var document = parse(htmlString);
  final String parsedString = document.body!.text;
  return parsedString.trim();
}

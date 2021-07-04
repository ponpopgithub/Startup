import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Startup NamerV.1',
      home: Randomwords(),
    );
  }
}

class Randomwords extends StatefulWidget {
  const Randomwords({Key? key}) : super(key: key);

  @override
  _RandomwordsState createState() => _RandomwordsState();
}

class _RandomwordsState extends State<Randomwords> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18);
  @override
  Widget build(BuildContext context) {
    //   final wordPair = WordPair.random();
    //   return Text(wordPair.asSnakeCase);
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
        padding: const EdgeInsets.all(16),
        itemBuilder: (BuildContext _context, int i) {
          if (i.isOdd) {
            return Divider();
          }
          final int index = i ~/ 2;
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        });
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
      leading: Icon(Icons.business_center_outlined),
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      subtitle: Text("Example"),
    );
  }
}

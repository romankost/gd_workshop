import 'package:flutter/material.dart';
import 'package:flutter_movi_demo/data/movie.dart';
import 'package:flutter_movi_demo/ui/movie_detail_screen.dart';

class MovieItem extends StatelessWidget {
  final Movie _item;

  MovieItem(this._item);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _navigateToDetail(context),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
        width: 250,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(9)),
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(_item.url)),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26,
                  offset: Offset(3, 3),
                  spreadRadius: 3.0,
                  blurRadius: 5.0)
            ]),
      ),
    );
  }

  void _navigateToDetail(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MovieDetailScreen(_item)));
  }
}

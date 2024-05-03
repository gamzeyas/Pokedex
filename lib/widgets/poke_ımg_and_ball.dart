import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pokebox/constants/ui_helper.dart';
import 'package:pokebox/model/pokemon_model.dart';

class PokeImageAndBall extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeImageAndBall({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    String pokeballImageUrl = 'assets/pokeball.png';
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(pokeballImageUrl, width: UIHelper.calculatePokeImgAndBallSize(),
          height: UIHelper.calculatePokeImgAndBallSize(),),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Hero(
            tag: pokemon.id!,
            child: CachedNetworkImage(imageUrl: pokemon.img ?? '',
            width: UIHelper.calculatePokeImgAndBallSize(),
            height: UIHelper.calculatePokeImgAndBallSize(),
            fit: BoxFit.fitHeight,
            placeholder: (context, url) =>  CircularProgressIndicator(
              color: UIHelper.getColorFromType(pokemon.type![0]),
            ),),
          ),
        )
      ],
    );
  }
}

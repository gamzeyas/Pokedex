import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokebox/constants/ui_helper.dart';
import 'package:pokebox/model/pokemon_model.dart';
import 'package:pokebox/widgets/poke_information.dart';
import 'package:pokebox/widgets/poke_type_name.dart';


class DetailPage extends StatelessWidget {
  final PokemonModel pokemon;
  const DetailPage({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
     String pokeballImageUrl = 'assets/pokeball.png';
    return Scaffold(
        backgroundColor: UIHelper.getColorFromType(pokemon.type![0]),
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: UIHelper.getIconPadding(),
              child: IconButton(
                  iconSize: 100.h,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back_ios)),
            ),
            PokeNameType(pokemon: pokemon),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(child: Image.asset(pokeballImageUrl,
                  height: 0.15.sh,fit: BoxFit.fitHeight,),
                  right: 0,
                  left: 0,),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    top: 0.10.sh,
                    child: PokeInformation(pokemon: pokemon)),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Hero(
                      tag: pokemon.id!,
                      child: CachedNetworkImage(imageUrl: pokemon.img ?? '', height: 0.24.sh,
                      fit: BoxFit.fitHeight,),
                    ),
                  )
                ],
              )),
          ],
        )));
  }
}

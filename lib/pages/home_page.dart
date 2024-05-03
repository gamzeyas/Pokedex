import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pokebox/model/pokemon_model.dart';
import 'package:pokebox/services/pokedex_api.dart';
import 'package:pokebox/widgets/app_tittle.dart';
import 'package:pokebox/widgets/pokemon_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          AppTitle(),
          Expanded(child: PokemonList()),
        ],
      )
    );
  }
}

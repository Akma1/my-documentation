import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_documentation/app/modules/game_with_flame/views/flame.dart';

import '../controllers/game_with_flame_controller.dart';

class GameWithFlameView extends GetView<GameWithFlameController> {
  const GameWithFlameView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GameWithFlameView'),
        centerTitle: true,
      ),
      body: GameWidget(
        game: MyGame(),
      ),
    );
  }
}

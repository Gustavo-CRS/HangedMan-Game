import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:hanged_man_project/game/controller/game_controller.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    GameController controller = GameController();
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      IconButton(
                        tooltip: 'Lives',
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        color: Colors.white,
                        iconSize: 42,
                        icon: Icon(MdiIcons.heart),
                        onPressed: () {},
                      ),
                      Center(
                        child: Observer(builder: (_) {
                          return Text(
                            controller.lives.toString(),
                            style: const TextStyle(
                              color: Color(0xFF2C1E68),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
                Observer(builder: (_) {
                  return Text(
                    controller.score.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                }),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: IconButton(
                      tooltip: 'Hint',
                      iconSize: 39,
                      icon: Icon(MdiIcons.lightbulb),
                      color: Colors.white,
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onPressed: () {
                        //TODO: Implement hint
                      }),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            SizedBox(
              height: height * 0.38,
              width: width * 0.62,
              child: Observer(builder: (_) {
                return Image(
                  image: AssetImage('assets/${controller.score}.png'),
                );
              }),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 32),
              child: Observer(builder: (_) {
                return controller.isLoading
                    ? const CircularProgressIndicator()
                    : Center(
                        child: Observer(builder: (_) {
                          return Text(
                            controller.hiddenWord,
                            style: const TextStyle(
                              letterSpacing: 12,
                              color: Colors.white,
                              fontSize: 46,
                              fontWeight: FontWeight.bold,
                            ),
                          );
                        }),
                      );
              }),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 32),
              child: SizedBox(
                height: height * 0.36,
                child: Expanded(
                  child: Observer(builder: (_) {
                    return GridView(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount:
                            6, // Define o número de colunas na tabela
                        crossAxisSpacing:
                            8.0, // Espaçamento horizontal entre os itens
                        mainAxisSpacing:
                            8.0, // Espaçamento vertical entre os itens
                      ),
                      children: [
                        ...controller.alphabet.map((letter) {
                          return Center(
                            child: Observer(builder: (_) {
                              return ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                    controller.rightGuess.contains(letter)
                                        ? Colors.green
                                        : controller.usedLetters
                                                .contains(letter)
                                            ? Colors.grey
                                            : const Color(0xFF1089ff),
                                  ),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  if (!controller.usedLetters
                                          .contains(letter) &&
                                      !controller.rightGuess.contains(letter) &&
                                      !controller.isGameOver &&
                                      !controller.checkWin()) {
                                    controller.checkLetter(letter);
                                  }
                                },
                                child: Center(
                                  child: Text(
                                    letter,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              );
                            }),
                          );
                        }),
                      ],
                    );
                  }),
                ),
              ),
            ),
            controller.isGameOver
                ? Observer(builder: (_) {
                    return AlertDialog(
                      title: const Text('Game Over'),
                      content: Text('The word was: ${controller.hangWord}'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            controller.resetGame();
                          },
                          child: const Text('Play Again'),
                        ),
                      ],
                    );
                  })
                : controller.checkWin()
                    ? Observer(builder: (_) {
                        return AlertDialog(
                          title: const Text('Congratulations!'),
                          content: Text(
                              'You guessed the word: ${controller.hangWord}'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                controller.resetGame();
                              },
                              child: const Text('Next Word'),
                            ),
                          ],
                        );
                      })
                    : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}

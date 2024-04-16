import 'dart:math';
import 'package:flutter/services.dart';
import 'package:mobx/mobx.dart';

part 'game_controller.g.dart';

// ignore: library_private_types_in_public_api
class GameController = _GameControllerBase with _$GameController;

abstract class _GameControllerBase with Store {
  _GameControllerBase() {
    loadWords();
  }
// Observables
  @observable
  int lives = 5;

  @observable
  bool isLoading = false;

  @observable
  int score = 0;

  @observable
  Random random = Random();

  @observable
  int index = 0;

  @observable
  List<String> wordsToGuess = [];

  @observable
  String hangWord = '';

  @observable
  String hiddenWord = '';

  @observable
  bool isGameOver = false;

  @observable
  String content = '';

  @observable
  List<String> linhas = [];

  @observable
  ObservableList<String> rightGuess = ObservableList<String>();

  @observable
  ObservableList<String> usedLetters = ObservableList<String>();

  @observable
  List<String> alphabet = List.generate(
      26, (index) => String.fromCharCode('A'.codeUnitAt(0) + index));

  // Actions
  @action
  Future<void> loadWords() async {
    isLoading = true;
    content = await rootBundle.loadString('assets/hangman_words.txt');
    linhas = content.split('\n');
    wordsToGuess = linhas.where((linha) => linha.isNotEmpty).toList();
    getWord();
    isLoading = false;
  }

  @action
  bool checkWin() {
    return hiddenWord == hangWord;
  }

  @action
  void incrementScore() {
    score++;
  }

  @action
  void endGame() {
    isGameOver = true;
  }

  @action
  void getWord() {
    index = random.nextInt(wordsToGuess.length);
    hangWord = wordsToGuess[index];
    hideWord(hangWord);
  }

  @action
  void decrementLives() {
    if (lives == 0) {
      endGame();
    }
    lives--;
  }

  @action
  void resetGame() {
    lives = 5;
    score = 0;
    isGameOver = false;
  }

  @action
  void checkLetter(String letter) {
    usedLetters.add(letter);

    if (hangWord.toUpperCase().contains(letter)) {
      for (int i = 0; i < hangWord.length; i++) {
        if (hangWord[i].toUpperCase() == letter) {
          hiddenWord =
              hiddenWord.substring(0, i) + letter + hiddenWord.substring(i + 1);
        }
      }
      rightGuess.add(letter);
      checkWin();
    } else {
      decrementLives();
      incrementScore();
    }
  }

  @action
  String hideWord(String wordToHide) {
    hiddenWord =
        wordToHide.replaceAll(RegExp(r'[a-zA-ZãõçáêúéâóíÁÉÍÓÚÇ]'), '_');
    return hiddenWord;
  }
}

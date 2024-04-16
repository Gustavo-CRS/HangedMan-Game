// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$GameController on _GameControllerBase, Store {
  late final _$livesAtom =
      Atom(name: '_GameControllerBase.lives', context: context);

  @override
  int get lives {
    _$livesAtom.reportRead();
    return super.lives;
  }

  @override
  set lives(int value) {
    _$livesAtom.reportWrite(value, super.lives, () {
      super.lives = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_GameControllerBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$scoreAtom =
      Atom(name: '_GameControllerBase.score', context: context);

  @override
  int get score {
    _$scoreAtom.reportRead();
    return super.score;
  }

  @override
  set score(int value) {
    _$scoreAtom.reportWrite(value, super.score, () {
      super.score = value;
    });
  }

  late final _$randomAtom =
      Atom(name: '_GameControllerBase.random', context: context);

  @override
  Random get random {
    _$randomAtom.reportRead();
    return super.random;
  }

  @override
  set random(Random value) {
    _$randomAtom.reportWrite(value, super.random, () {
      super.random = value;
    });
  }

  late final _$indexAtom =
      Atom(name: '_GameControllerBase.index', context: context);

  @override
  int get index {
    _$indexAtom.reportRead();
    return super.index;
  }

  @override
  set index(int value) {
    _$indexAtom.reportWrite(value, super.index, () {
      super.index = value;
    });
  }

  late final _$wordsToGuessAtom =
      Atom(name: '_GameControllerBase.wordsToGuess', context: context);

  @override
  List<String> get wordsToGuess {
    _$wordsToGuessAtom.reportRead();
    return super.wordsToGuess;
  }

  @override
  set wordsToGuess(List<String> value) {
    _$wordsToGuessAtom.reportWrite(value, super.wordsToGuess, () {
      super.wordsToGuess = value;
    });
  }

  late final _$hangWordAtom =
      Atom(name: '_GameControllerBase.hangWord', context: context);

  @override
  String get hangWord {
    _$hangWordAtom.reportRead();
    return super.hangWord;
  }

  @override
  set hangWord(String value) {
    _$hangWordAtom.reportWrite(value, super.hangWord, () {
      super.hangWord = value;
    });
  }

  late final _$hiddenWordAtom =
      Atom(name: '_GameControllerBase.hiddenWord', context: context);

  @override
  String get hiddenWord {
    _$hiddenWordAtom.reportRead();
    return super.hiddenWord;
  }

  @override
  set hiddenWord(String value) {
    _$hiddenWordAtom.reportWrite(value, super.hiddenWord, () {
      super.hiddenWord = value;
    });
  }

  late final _$isGameOverAtom =
      Atom(name: '_GameControllerBase.isGameOver', context: context);

  @override
  bool get isGameOver {
    _$isGameOverAtom.reportRead();
    return super.isGameOver;
  }

  @override
  set isGameOver(bool value) {
    _$isGameOverAtom.reportWrite(value, super.isGameOver, () {
      super.isGameOver = value;
    });
  }

  late final _$contentAtom =
      Atom(name: '_GameControllerBase.content', context: context);

  @override
  String get content {
    _$contentAtom.reportRead();
    return super.content;
  }

  @override
  set content(String value) {
    _$contentAtom.reportWrite(value, super.content, () {
      super.content = value;
    });
  }

  late final _$linhasAtom =
      Atom(name: '_GameControllerBase.linhas', context: context);

  @override
  List<String> get linhas {
    _$linhasAtom.reportRead();
    return super.linhas;
  }

  @override
  set linhas(List<String> value) {
    _$linhasAtom.reportWrite(value, super.linhas, () {
      super.linhas = value;
    });
  }

  late final _$rightGuessAtom =
      Atom(name: '_GameControllerBase.rightGuess', context: context);

  @override
  ObservableList<String> get rightGuess {
    _$rightGuessAtom.reportRead();
    return super.rightGuess;
  }

  @override
  set rightGuess(ObservableList<String> value) {
    _$rightGuessAtom.reportWrite(value, super.rightGuess, () {
      super.rightGuess = value;
    });
  }

  late final _$usedLettersAtom =
      Atom(name: '_GameControllerBase.usedLetters', context: context);

  @override
  ObservableList<String> get usedLetters {
    _$usedLettersAtom.reportRead();
    return super.usedLetters;
  }

  @override
  set usedLetters(ObservableList<String> value) {
    _$usedLettersAtom.reportWrite(value, super.usedLetters, () {
      super.usedLetters = value;
    });
  }

  late final _$alphabetAtom =
      Atom(name: '_GameControllerBase.alphabet', context: context);

  @override
  List<String> get alphabet {
    _$alphabetAtom.reportRead();
    return super.alphabet;
  }

  @override
  set alphabet(List<String> value) {
    _$alphabetAtom.reportWrite(value, super.alphabet, () {
      super.alphabet = value;
    });
  }

  late final _$loadWordsAsyncAction =
      AsyncAction('_GameControllerBase.loadWords', context: context);

  @override
  Future<void> loadWords() {
    return _$loadWordsAsyncAction.run(() => super.loadWords());
  }

  late final _$_GameControllerBaseActionController =
      ActionController(name: '_GameControllerBase', context: context);

  @override
  bool checkWin() {
    final _$actionInfo = _$_GameControllerBaseActionController.startAction(
        name: '_GameControllerBase.checkWin');
    try {
      return super.checkWin();
    } finally {
      _$_GameControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementScore() {
    final _$actionInfo = _$_GameControllerBaseActionController.startAction(
        name: '_GameControllerBase.incrementScore');
    try {
      return super.incrementScore();
    } finally {
      _$_GameControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void endGame() {
    final _$actionInfo = _$_GameControllerBaseActionController.startAction(
        name: '_GameControllerBase.endGame');
    try {
      return super.endGame();
    } finally {
      _$_GameControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void getWord() {
    final _$actionInfo = _$_GameControllerBaseActionController.startAction(
        name: '_GameControllerBase.getWord');
    try {
      return super.getWord();
    } finally {
      _$_GameControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementLives() {
    final _$actionInfo = _$_GameControllerBaseActionController.startAction(
        name: '_GameControllerBase.decrementLives');
    try {
      return super.decrementLives();
    } finally {
      _$_GameControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resetGame() {
    final _$actionInfo = _$_GameControllerBaseActionController.startAction(
        name: '_GameControllerBase.resetGame');
    try {
      return super.resetGame();
    } finally {
      _$_GameControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void checkLetter(String letter) {
    final _$actionInfo = _$_GameControllerBaseActionController.startAction(
        name: '_GameControllerBase.checkLetter');
    try {
      return super.checkLetter(letter);
    } finally {
      _$_GameControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String hideWord(String wordToHide) {
    final _$actionInfo = _$_GameControllerBaseActionController.startAction(
        name: '_GameControllerBase.hideWord');
    try {
      return super.hideWord(wordToHide);
    } finally {
      _$_GameControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
lives: ${lives},
isLoading: ${isLoading},
score: ${score},
random: ${random},
index: ${index},
wordsToGuess: ${wordsToGuess},
hangWord: ${hangWord},
hiddenWord: ${hiddenWord},
isGameOver: ${isGameOver},
content: ${content},
linhas: ${linhas},
rightGuess: ${rightGuess},
usedLetters: ${usedLetters},
alphabet: ${alphabet}
    ''';
  }
}

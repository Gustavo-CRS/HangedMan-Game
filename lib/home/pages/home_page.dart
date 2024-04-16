import 'package:flutter/material.dart';
import 'package:hanged_man_project/home/controller/home_controller.dart';
import 'package:hanged_man_project/utils/widgets/default_button_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    HomeController controller = HomeController();
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    'HANGMAN',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 58.0,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 3.0,
                        fontFamily: 'PatrickHand'),
                  ),
                ),
                const SizedBox(
                  child: Image(
                    image: AssetImage('assets/gallow.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 24),
                  child: DefaultButtonWidget(
                    onPressed: () {
                      controller.navigateToGame(context);
                    },
                    width: width * 0.38,
                    text: 'Start',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: DefaultButtonWidget(
                    onPressed: () {},
                    text: 'High Scores',
                    width: width * 0.38,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

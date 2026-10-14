import 'package:flutter/material.dart';

class BuyAndSellButton extends StatefulWidget {
  const BuyAndSellButton({super.key});

  @override
  State<BuyAndSellButton> createState() => _BuyAndSellButtonState();
}

class _BuyAndSellButtonState extends State<BuyAndSellButton> {
  bool isBuy = true;

  static const double buttonWidth = 95;

  static const Color darkBlue = Color.fromARGB(255, 4, 107, 190);
  static const Color lightBlue = Color.fromARGB(255, 215, 240, 252);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 46,
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: lightBlue,
          borderRadius: BorderRadius.circular(25),
        ),
        child: TweenAnimationBuilder<double>(
          tween: Tween<double>(
            begin: isBuy ? 0 : buttonWidth,
            end: isBuy ? 0 : buttonWidth,
          ),
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeInOut,
          builder: (context, value, child) {
            return Stack(
              children: [
                Positioned(
                  left: value,
                  top: 0,
                  bottom: 0,
                  child: Container(
                    width: buttonWidth,
                    decoration: BoxDecoration(
                      color: darkBlue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
      
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {
                          setState(() {
                            isBuy = true;
                          });
                        },
                        child: Center(
                          child: Text(
                            'Buy',
      
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: isBuy ? Colors.white : darkBlue,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ),
                    ),
      
                    Expanded(
                      child: GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {
                          setState(() {
                            isBuy = false;
                          });
                        },
                        child: Center(
                          child: Text(
                            'Sell',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: isBuy ? darkBlue : Colors.white,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

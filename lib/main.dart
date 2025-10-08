import 'package:flutter/material.dart';
import 'package:hitoons/widgets/button.dart';
import 'package:hitoons/widgets/currency_card.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Hey selena",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.end,
                        ),
                        Text(
                          "Welcome back",
                          style: TextStyle(
                            color: Colors.white.withValues(alpha: 0.8),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                Text(
                  "Total balance",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withValues(alpha: 0.8),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "\$5 194 482",
                  style: TextStyle(
                    fontSize: 44,
                    fontWeight: FontWeight.w600,
                    color: Colors.white.withValues(alpha: 0.8),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Button(
                      text: "Transfer",
                      bgColor: Color(0xFFF1B33B),
                      textColor: Colors.black,
                    ),
                    const Button(
                      text: "Request",
                      bgColor: Color(0xFF1F2123),
                      textColor: Colors.white,
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Wallets",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                        color: Colors.white.withValues(alpha: 0.8),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CurrencyCard(
                  name: "Euro",
                  code: "EUR",
                  amount: "6 428",
                  icon: Icons.euro_rounded,
                  isInverted: false,
                ),
                Transform.translate(
                  offset: Offset(0, -20),
                  child: CurrencyCard(
                    name: "Bitcoin",
                    code: "BTC",
                    amount: "2 456",
                    icon: Icons.currency_bitcoin_rounded,
                    isInverted: true,
                  ),
                ),
                Transform.translate(
                  offset: Offset(0, -40),
                  child: CurrencyCard(
                    name: "Dollar",
                    code: "USD",
                    amount: "428",
                    icon: Icons.attach_money_outlined,
                    isInverted: false,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

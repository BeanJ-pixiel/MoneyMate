import 'package:flutter/material.dart';
import 'package:du_an/screens/dashboard/widgets/balance_card.dart';
import 'package:du_an/screens/dashboard/widgets/header_section.dart';     
import 'package:du_an/screens/dashboard/widgets/quick_actions.dart';

// ignore: camel_case_types
class dashboard_screen extends StatelessWidget {
  const dashboard_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          header_section(),
          SizedBox(height: 20),

          BalanceCard(),

          SizedBox(height: 18),
          
          QuickActions(),
        ],
      ),
    );
  }
}


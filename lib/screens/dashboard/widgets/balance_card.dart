import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          colors: [
            Color(0xff12353B),
            Color(0xff0F1E33),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        border: Border.all(
          color: const Color(0xff1C5A5D),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "TOTAL BALANCE",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
              letterSpacing: 1.2,
            ),
          ),

          const SizedBox(height: 8),

          const Text(
            "\$24,381.50",
            style: TextStyle(
              color: Color(0xff34D399),
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 18),

          Row(
            children: const [
              Expanded(
                child: _InfoCard(
                  icon: Icons.arrow_upward,
                  title: "Income",
                  amount: "\$9,200",
                  color: Color(0xff34D399),
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: _InfoCard(
                  icon: Icons.arrow_downward,
                  title: "Expenses",
                  amount: "\$4,700",
                  color: Color(0xffF59E0B),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String amount;
  final Color color;

  const _InfoCard({
    required this.icon,
    required this.title,
    required this.amount,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xff162335),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 16,
            backgroundColor: color.withOpacity(0.15),
            child: Icon(icon, color: color, size: 16),
          ),

          const SizedBox(width: 10),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 11,
                ),
              ),
              Text(
                amount,
                style: TextStyle(
                  color: color,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
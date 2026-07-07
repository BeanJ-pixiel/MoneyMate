import 'package:flutter/material.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      child : Row(
        children: const[
          Expanded(
            child: ActionItem(
              icon: Icons.send_rounded,
              label: "Send",
              color:Color(0xff34D399),
            ),
          ),
          SizedBox(width: 12),

          Expanded(
            child: ActionItem(
              icon: Icons.download_rounded,
              label: "Receive",
              color:Color(0xff60A5FA),
            ),
          ),
          SizedBox(width: 12),

          Expanded(
            child: ActionItem(
              icon: Icons.sync_alt_rounded,
              label: "transfer",
              color: Color(0xffF59E0B),
            ),
          ),
          SizedBox(width: 12),

          Expanded(
            child: ActionItem(
              icon: Icons.add,
              label: "Add",
              color: Color(0xffEC4899),
            ),
          ),
        ],
      ),
    );  
  }
}  

class ActionItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const ActionItem({
    super.key,
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      decoration: BoxDecoration(
        color: const Color(0xff101C2D),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: const Color(0xff1E293B),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 18,
            backgroundColor: color.withValues(alpha: 0.15),
            child: Icon(
              icon,
              color: color,
              size: 18,
            ),
          ),
          
          const SizedBox(height: 12),

          Text(
            label,
            style: const TextStyle(
              color: Colors.white70,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
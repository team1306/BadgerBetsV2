import 'package:flutter/material.dart';


class Incrementer extends StatefulWidget {
  final String label;
  const Incrementer({super.key, this.label = "Count"});

  @override
  IncrementerState createState() => IncrementerState();
}

class IncrementerState extends State<Incrementer> {
  int count = 0;

  void updateCount(int newValue) {
    setState(() {
      count = newValue >= 0 ? newValue : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Color buttonColor = Theme.of(context).colorScheme.primary;
    final Color backgroundColor = Theme.of(context).scaffoldBackgroundColor;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch, // Stretch children to fill width
      children: [
        Text(
          widget.label,
          style: Theme.of(context).textTheme.titleMedium,
          textAlign: TextAlign.center, // Center the label
        ),
        const SizedBox(height: 4),
        Container(
          width: double.infinity, // Fill all available width
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: backgroundColor,
            border: Border.all(color: Theme.of(context).colorScheme.primary, width: 2),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max, // Row fills horizontal space
            children: [
              IconButton(
                icon: const Icon(Icons.remove),
                color: buttonColor,
                onPressed: () => updateCount(count - 1)
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Theme.of(context).colorScheme.primary.withOpacity(0.5)),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '$count',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 48), // Larger font
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.add),
                color: buttonColor,
                onPressed: () => updateCount(count + 1),
              ),
            ],
          ),
        ),
      ],
    );
  }

  int get value => count;
}

import 'package:flutter/material.dart';

class Incrementer extends StatefulWidget {
  final String label;
  final int min;
  final int max;

  const Incrementer({
    super.key,
    required this.label,
    required this.min,
    required this.max,
  });

  @override
  IncrementerState createState() => IncrementerState();

  static Incrementer createNonNegativeIncrementer(String label) =>
      Incrementer(label: label, min: 0, max: double.maxFinite.toInt());
}

class IncrementerState extends State<Incrementer> {
  int _count = 0;

  void changeCount(int value) => setState(() {
    _count += value;
    _count = _count.clamp(widget.min, widget.max);
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Color buttonColor = theme.colorScheme.primary;
    final Color backgroundColor = theme.scaffoldBackgroundColor;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      // Stretch children to fill width
      children: [
        Text(
          widget.label,
          style: theme.textTheme.titleMedium,
          textAlign: TextAlign.center, // Center the label
        ),
        Padding(padding: EdgeInsets.symmetric(vertical: 4)),
        Container(
          width: double.infinity, // Fill all available width
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: backgroundColor,
            border: Border.all(color: theme.colorScheme.primary, width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max, // Row fills horizontal space
            spacing: 8,
            children: [
              IconButton(
                icon: const Icon(Icons.remove),
                color: buttonColor,
                onPressed: () => changeCount(-1),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: theme.colorScheme.primary),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '$_count',
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontSize: 48,
                    ), // Larger font
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.add),
                color: buttonColor,
                onPressed: () => changeCount(1),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

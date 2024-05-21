import 'package:flutter/material.dart';
import 'package:ui_application/ui_application.dart';

class TestTableRow extends StatelessWidget {
  final List<Widget> cells;
  const TestTableRow({
    required this.cells,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Row(
        children: [
          for (final cell in cells)
            TestTableCellWrapper(
              child: cell,
            ),
        ],
      );
}

class TestTableCellWrapper extends StatelessWidget {
  final Widget? child;
  final UIApplicationType type;
  const TestTableCellWrapper({
    required this.child,
    this.type = UIApplicationType.highlight,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Expanded(
        child: SizedBox(
          height: 40,
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(),
              color: type.resolveColor(context),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 1),
              child: Center(child: child),
            ),
          ),
        ),
      );
}

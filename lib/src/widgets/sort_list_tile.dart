
import 'package:flutter/material.dart';
import '../utils/extensions/custom_extensions.dart';

class SortListTile extends StatelessWidget {
  const SortListTile({
    super.key,
    required this.ascending,
    required this.selected,
    required this.onChanged,
    required this.onSelected,
    this.title,
    this.subtitle,
  });
  final bool ascending;
  final bool selected;
  final ValueChanged<bool?> onChanged;
  final VoidCallback onSelected;
  final Widget? title;
  final Widget? subtitle;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: selected
          ? Icon(
              ascending
                  ? Icons.arrow_upward_rounded
                  : Icons.arrow_downward_rounded,
              color: context.theme.indicatorColor,
            )
          : SizedBox(width: context.theme.iconTheme.size),
      title: title,
      subtitle: subtitle,
      onTap: () => selected ? onChanged(!ascending) : onSelected(),
    );
  }
}

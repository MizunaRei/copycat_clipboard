import 'package:atom_event_bus/atom_event_bus.dart';
import 'package:clipboard/utils/utility.dart';
import 'package:copycat_base/bloc/search_cubit/search_cubit.dart';
import 'package:copycat_base/common/events.dart';
import 'package:copycat_base/constants/widget_styles.dart';
import 'package:copycat_base/l10n/l10n.dart';
import 'package:copycat_base/utils/common_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchInputBar extends StatefulWidget {
  const SearchInputBar({super.key});

  @override
  State<SearchInputBar> createState() => _SearchBarStInputate();
}

class _SearchBarStInputate extends State<SearchInputBar> {
  late final EventRule focusEventRule;
  late final FocusNode focusNode;

  @override
  void initState() {
    super.initState();
    focusEventRule = EventRule<void>(searchFocusEvent, targets: [
      EventListener((_) => focusNode.requestFocus()),
    ]);
    focusNode = FocusNode();
    search("");
  }

  @override
  void dispose() {
    focusEventRule.cancel();
    focusNode.dispose();
    super.dispose();
  }

  Future<void> search(String text) async {
    await context.read<SearchCubit>().search(text);
  }

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      focusNode: focusNode,
      padding: const EdgeInsets.symmetric(
        horizontal: padding16,
        vertical: padding2,
      ).msp,
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.nextFocus(),
      leading: const Icon(Icons.search_rounded),
      hintText: context.locale.searchInClipboard,
      trailing: [if (isDesktopPlatform) Text("$metaKey + F")],
      autoFocus: true,
      // trailing: [
      //   IconButton(
      //     icon: const Icon(Icons.filter_alt_rounded),
      //     onPressed: () {
      //       // context.read<SearchCubit>().clear();
      //     },
      //   ),
      // ],
      textInputAction: TextInputAction.search,
      onSubmitted: search,
    );
  }
}

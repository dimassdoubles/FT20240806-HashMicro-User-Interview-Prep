import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MySearchBar extends HookWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final useKeyword = useTextEditingController();
    useValueListenable(useKeyword);

    final useDebounceKeyword = useDebounced(
      useKeyword.text,
      const Duration(seconds: 1),
    );

    useEffect(() {
      debugPrint("useEffect called");

      return null;
    }, [useDebounceKeyword]);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          key: const Key("searchbar-text-display"),
          useDebounceKeyword ?? "",
        ),
        TextField(
          key: const Key("searchbar-text-field"),
          controller: useKeyword,
        ),
      ],
    );
  }
}

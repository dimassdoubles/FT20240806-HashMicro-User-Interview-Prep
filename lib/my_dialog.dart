import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MyDialog extends HookWidget {
  const MyDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final useController = useTextEditingController();

    useEffect(() {
      debugPrint("myDialog init");

      return () {
        debugPrint("myDialog dispose");
      };
    }, []);

    return AlertDialog(
      content: TextFormField(
        controller: useController,
      ),
    );
  }
}

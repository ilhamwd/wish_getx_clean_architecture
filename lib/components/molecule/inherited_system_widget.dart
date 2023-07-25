import 'package:flutter/widgets.dart';
import 'package:wish_gym/infrastructure/system.dart';

class InheritedSystem extends InheritedWidget {
  const InheritedSystem(
      {super.key, required this.system, required super.child});

  final System system;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}

class InheritedSystemBuilder extends StatefulWidget {
  const InheritedSystemBuilder({super.key, required this.builder});

  final Widget Function(BuildContext context, System system) builder;

  @override
  State<InheritedSystemBuilder> createState() => _InheritedSystemBuilderState();
}

class _InheritedSystemBuilderState extends State<InheritedSystemBuilder> {
  late final System system;

  @override
  void initState() {
    super.initState();

    system = System();
  }

  @override
  Widget build(BuildContext context) {
    return InheritedSystem(
        system: system,
        child: Builder(builder: (context) {
          // Context will contain instance of System
          return widget.builder(context, system);
        }));
  }
}

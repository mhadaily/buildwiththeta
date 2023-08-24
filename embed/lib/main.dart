import 'package:flutter/material.dart';
import 'package:theta/theta.dart' deferred as theta;

Future<void> main() async {
  try {
    String name = Uri.base.queryParameters["component_name"]!;
    String token = Uri.base.queryParameters["token"]!;
    runApp(MyApp(name: name, token: token));
  } catch (e) {
    runApp(const MaterialApp(
      home: Scaffold(
          body: Center(
        child: Text('Something went wrong.'),
      )),
    ));
  }
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.name,
    required this.token,
  });

  final String name;
  final String token;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(name: name, token: token),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.name, required this.token});

  final String name;
  final String token;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isLoaded = false;

  @override
  void initState() {
    super.initState();
    theta.loadLibrary().then((value) => theta.Theta.initialize(
            anonKey: widget.token,
            connectionMode: theta.ConnectionMode.continuous,
            componentsNames: [widget.name]).then((value) {
          setState(() {
            isLoaded = true;
          });
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: !isLoaded
          ? const SizedBox.shrink()
          : theta.ThetaProvider(
              theme: ThemeMode.light,
              child: theta.UIBox(
                widget.name,
                placeholder: const SizedBox.shrink(),
              ),
            ),
    );
  }
}

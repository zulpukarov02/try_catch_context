import 'package:flutter/material.dart';

class TryCathPage extends StatefulWidget {
  const TryCathPage({Key? key}) : super(key: key);

  @override
  _TryCathPageState createState() => _TryCathPageState();
}

class _TryCathPageState extends State<TryCathPage> {
  final birinchi = TextEditingController();
  final ekinchi = TextEditingController();
  double res = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TryCathPage"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "$res",
            style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
                color: Colors.black87),
          ),
          TextFormField(controller: birinchi),
          TextFormField(controller: ekinchi),
          ElevatedButton.icon(
            onPressed: () {
              try {
                res = double.parse(birinchi.text) + double.parse(ekinchi.text);
                setState(() {});
              } catch (e) {
                showAboutDialog(
                    context: context, applicationName: "katalar bar ");
                print("kata $e");
              }
            },
            icon: const Icon(Icons.add),
            label: const Text("add"),
          )
        ],
      ),
    );
  }
}

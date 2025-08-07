import 'package:flutter/material.dart';
import 'package:widget_app/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      home: const HomePage(),
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final TextEditingController widgetNameController = TextEditingController();

  String? syntaxResult;
  String? descriptionResult;

  void fetchWidget(String widgetName) {
    final key = widgetName.toLowerCase().trim();
    for (var category in groupedWidgets.values) {
      for (var entry in category.entries) {
        if (entry.key.toLowerCase() == key) {
          setState(() {
            syntaxResult = entry.value["syntax"];
            descriptionResult = entry.value["description"];
          });
          return;
        }
      }
    }
    setState(() {
      syntaxResult = "Widget not found in Database";
      descriptionResult = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Padding(padding: const EdgeInsets.all(10),
        // child: Image.asset("assets/syntexalogo.png"),
        // ),
        centerTitle: true,
        title: const Text("Syntexa - The Widget Guide"),
        backgroundColor: Colors.grey.shade800,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.grey.shade800),
              child: Column(
                children: [
                  Container(
                    height: 75,
                    width: 75,
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.horizontal(),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset(
                      "assets/syntexalogo.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Center(
                    child: Text("Widget Vault", style: TextStyle(fontSize: 24)),
                  ),
                ],
              ),
            ),
            ...groupedWidgets.entries.map((category) {
              return ExpansionTile(
                title: Text(category.key),
                children: category.value.keys.map((widgetName) {
                  return ListTile(
                    title: Center(child: Text(widgetName)),
                    onTap: () {
                      Navigator.pop(context);
                      fetchWidget(widgetName);
                      setState(() {
                        widgetNameController.text = widgetName;
                      });
                    },
                  );
                }).toList(),
              );
            }),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Image.asset("assets/syntexalogo.png", height: 70, width: 70),
                  const SizedBox(height: 10),
                  const Text(
                    "Welcome to Flutter Syntexa!",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Unlock the power of Flutter widgets with smart, searchable syntax guidance. Whether you're a beginner or pro, Syntexa helps you build with clarity and speed.",
                    style: TextStyle(
                      fontSize: 14,
                      wordSpacing: 2,
                      letterSpacing: 1.5,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Autocomplete<String>(
                    optionsBuilder: (TextEditingValue textEditingValue) {
                      if (textEditingValue.text == '') {
                        return const Iterable<String>.empty();
                      }
                      return groupedWidgets.values
                          .expand((category) => category.keys)
                          .where(
                            (widgetName) => widgetName.toLowerCase().contains(
                              textEditingValue.text.toLowerCase(),
                            ),
                          )
                          .toList();
                    },
                    onSelected: (String selectedWidget) {
                      widgetNameController.text = selectedWidget;
                      fetchWidget(selectedWidget);
                    },
                    fieldViewBuilder:
                        (context, controller, focusNode, onFieldSubmitted) {
                          return TextField(
                            controller: controller,
                            focusNode: focusNode,
                            textInputAction: TextInputAction.search,
                            onSubmitted: (value) {
                              fetchWidget(value);
                            },
                            decoration: const InputDecoration(
                              label: Text("Enter widget name e.g., Container"),
                              border: OutlineInputBorder(),
                              suffixIcon: Icon(Icons.search),
                            ),
                          );
                        },
                  ),

                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () => fetchWidget(widgetNameController.text),
                    child: const Text("Search"),
                  ),
                  const SizedBox(height: 20),
                  if (syntaxResult != null && syntaxResult!.isNotEmpty)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Description:",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          descriptionResult ?? "",
                          style: const TextStyle(fontSize: 16),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "Syntax:",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(12),
                          margin: const EdgeInsets.only(top: 10),
                          color: Colors.grey.shade900,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: SelectableText(
                              syntaxResult ?? "",
                              style: const TextStyle(
                                fontFamily: 'Courier',
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

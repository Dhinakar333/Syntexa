import 'package:flutter/material.dart';
import 'package:widget_app/widgets.dart';

void main(){
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
  ));
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage>{
  final TextEditingController widgetNameController =TextEditingController() ;
  String? syntaxResult;
  String? descriptionResult;

  void fetchWidget(String widgetName){
    final key = widgetName.toLowerCase().trim();
    final result = widgetDatabase[key];

    setState(() {
      if(result!=null){
        syntaxResult = result["syntax"];
        descriptionResult = result["description"];
      }
      else{
        syntaxResult = "Widget not found in Database";
        descriptionResult = "";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Syntexa Widget Guide"),
        backgroundColor: Colors.grey.shade800,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.grey.shade800),
                child: Center(child: Text("Widget Vault",
                  style:TextStyle(
                    fontSize: 24,
                  ) ,))),
            ...widgetDatabase.keys.map((widgetName){
              return ListTile(
                title: Center(child: Text(widgetName)),
                onTap: (){
                  Navigator.pop(context);
                  fetchWidget(widgetName);
                  setState(() {
                    widgetNameController.text=widgetName;
                  });
                },
              );
            })
          ],
        ),
      ),
      body: Padding(padding: EdgeInsets.fromLTRB(10, 40, 10, 10),
      child:SingleChildScrollView(
        child: Column(
            children: [
              Column(
                children: [
                  Text("Welcome to Flutter Syntexa!",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text("Unlock the power of Flutter widgets with smart, searchable syntax guidance. Whether you're a beginner or pro, Syntexa helps you build with clarity and speed.",
                  style: TextStyle(
                    fontSize: 14,
                  ),),
                  SizedBox(height: 20),
                  TextField(
                    controller: widgetNameController,
                    decoration: InputDecoration(
                      label: Text("Enter widget name"),
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.search)
                    ),
                    textInputAction: TextInputAction.search,
                    onSubmitted: (value){
                      fetchWidget(value);
                    },
                  ),
                  ElevatedButton(onPressed: () =>
                    fetchWidget(widgetNameController.text),
                  child: Text("Syntax"),
                  ),
                  SizedBox(height: 20,),
                  if(syntaxResult!=null && syntaxResult!.isNotEmpty)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Description:",
                            style: TextStyle(fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          Text(descriptionResult ?? "",
                              style: TextStyle(fontSize: 16)),
                          SizedBox(height: 20),
                          Text(
                            "Syntax:",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(12),
                            margin: EdgeInsets.only(top: 10),
                            color: Colors.grey.shade900,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: SelectableText(
                                syntaxResult ?? "",
                                style: TextStyle(fontFamily: 'Courier',
                                    fontSize: 14,
                                color: Colors.white),
                              ),
                            ),
                          ),
        
                        ]
        
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
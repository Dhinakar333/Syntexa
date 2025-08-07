
final Map<String, Map<String, Map<String, String>>> groupedWidgets = {
  "Layout": {
    "Container": {
      "description": "A box model that combines common painting, positioning, and sizing widgets.",
      "syntax": """Container(
  width: 100,
  height: 100,
  color: Colors.blue,
  child: Text('Hello'),
)""",
    },
    "Text": {
      "description": "A run of text with a single style.",
      "syntax": """Text(
  'Hello, Flutter!',
  style: TextStyle(fontSize: 20),
)""",
    },
    "Listview": {
      "description": "A scrollable list of widgets.",
      "syntax": """ListView(
  children: [
    Text('Item 1'),
    Text('Item 2'),
  ],
)""",
    },
    "Column": {
      "description": "Displays widgets vertically.",
      "syntax": """Column(
  children: [
    Text('Item A'),
    Text('Item B'),
  ],
)""",
    },
    "Row": {
      "description": "Displays widgets horizontally.",
      "syntax": """Row(
  children: [
    Icon(Icons.star),
    Text('Stars'),
  ],
)""",
    },
  },
  "Buttons": {
    "ElevatedButton": {
      "description": "A Material Design elevated button.",
      "syntax": """ElevatedButton(
  onPressed: () {},
  child: Text('Click Me'),
)""",
    },
  },
  "Icons": {
    "Icon": {
      "description": "A graphical icon widget.",
      "syntax": """Icon(
  Icons.favorite,
  color: Colors.red,
  size: 30,
)""",
    },
  },
  "Media": {
    "Image": {
      "description": "Displays an image from assets or network.",
      "syntax": """Image.network(
  'https://example.com/image.png',
  width: 100,
  height: 100,
)""",
    },
  },
  "Structure": {
    "Scaffold": {
      "description": "Implements the basic material design layout structure.",
      "syntax": """Scaffold(
  appBar: AppBar(title: Text('Title')),
  body: Center(child: Text('Hello')),
)""",
    },
    "AppBar": {
      "description": "A material design app bar.",
      "syntax": """AppBar(
  title: Text('My App'),
  backgroundColor: Colors.blue,
)""",
    },
    "Drawer": {
      "description": "A panel that slides in from the side.",
      "syntax": """Drawer(
  child: ListView(
    children: [
      DrawerHeader(child: Text('Header')),
      ListTile(title: Text('Item 1')),
    ],
  ),
)""",
    },
    "BottomNavigationBar": {
      "description": "A bottom navigation bar for switching between views.",
      "syntax": """BottomNavigationBar(
  currentIndex: 0,
  onTap: (index) {},
  items: [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
  ],
)""",
    },
  },
  "Input": {
    "TextField": {
      "description": "A material design text input field.",
      "syntax": """TextField(
  decoration: InputDecoration(
    labelText: 'Enter your name',
  ),
)""",
    },
    "TextFormField": {
      "description": "A text field that integrates with forms.",
      "syntax": """TextFormField(
  decoration: InputDecoration(labelText: 'Name'),
  validator: (value) => value!.isEmpty ? 'Required' : null,
)""",
    },
    "Form": {
      "description": "A container for form fields.",
      "syntax": """Form(
  child: Column(
    children: [
      TextFormField(),
      ElevatedButton(onPressed: () {}, child: Text('Submit')),
    ],
  ),
)""",
    },
  },
  "Utility": {
    "SizedBox": {
      "description": "Creates a box with a fixed size.",
      "syntax": """SizedBox(
  width: 50,
  height: 50,
)""",
    },
    "Padding": {
      "description": "Adds padding around a child widget.",
      "syntax": """Padding(
  padding: EdgeInsets.all(16.0),
  child: Text('Padded Text'),
)""",
    },
    "Center": {
      "description": "Centers its child within itself.",
      "syntax": """Center(
  child: Text('Centered Text'),
)""",
    },
    "Stack": {
      "description": "Overlays multiple children widgets on top of each other.",
      "syntax": """Stack(
  children: [
    Container(color: Colors.blue, width: 100, height: 100),
    Positioned(
      top: 10,
      left: 10,
      child: Text('On Top'),
    ),
  ],
)""",
    },
    "Positioned": {
      "description": "Positions a widget within a Stack.",
      "syntax": """Positioned(
  top: 20,
  left: 20,
  child: Text('Positioned'),
)""",
    },
  },
  "Interaction": {
    "GestureDetector": {
      "description": "Detects gestures like taps, drags, etc.",
      "syntax": """GestureDetector(
  onTap: () => print('Tapped!'),
  child: Container(
    width: 100,
    height: 100,
    color: Colors.amber,
  ),
)""",
    },
  },
  "Display": {
    "Card": {
      "description": "A Material design card.",
      "syntax": """Card(
  elevation: 4,
  child: Padding(
    padding: EdgeInsets.all(8),
    child: Text('Card Content'),
  ),
)""",
    },
    "CircleAvatar": {
      "description": "A circular icon or image.",
      "syntax": """CircleAvatar(
  backgroundImage: NetworkImage('https://example.com/avatar.jpg'),
  radius: 40,
)""",
    },
  },
  "Dialogs": {
    "AlertDialog": {
      "description": "A material design alert dialog.",
      "syntax": """showDialog(
  context: context,
  builder: (context) => AlertDialog(
    title: Text('Alert'),
    content: Text('This is an alert.'),
    actions: [
      TextButton(onPressed: () => Navigator.pop(context), child: Text('OK')),
    ],
  ),
)""",
    },
  },
  "Forms": {
    "Checkbox": {
      "description": "A Material Design checkbox.",
      "syntax": """Checkbox(
  value: true,
  onChanged: (value) {},
)""",
    },
    "Switch": {
      "description": "A Material Design switch.",
      "syntax": """Switch(
  value: true,
  onChanged: (value) {},
)""",
    },
    "Slider": {
      "description": "A Material Design slider.",
      "syntax": """Slider(
  value: 0.5,
  onChanged: (value) {},
  min: 0,
  max: 1,
)""",
    },
  },
  "Navigation": {
    "TabBar": {
      "description": "A material design tab bar.",
      "syntax": """DefaultTabController(
  length: 2,
  child: Scaffold(
    appBar: AppBar(
      bottom: TabBar(
        tabs: [Tab(text: 'Tab 1'), Tab(text: 'Tab 2')],
      ),
    ),
    body: TabBarView(
      children: [Text('Page 1'), Text('Page 2')],
    ),
  ),
)""",
    },
  },
  "Builders": {
    "FutureBuilder": {
      "description": "Builds widgets based on a Future’s result.",
      "syntax": """FutureBuilder<String>(
  future: fetchData(),
  builder: (context, snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting)
      return CircularProgressIndicator();
    else if (snapshot.hasError)
      return Text('Error');
    else
      return Text(snapshot.data!);
  },
)""",
    },
  },
  "Animations": {
    "AnimatedContainer": {
      "description": "A container that animates its properties.",
      "syntax": """AnimatedContainer(
  duration: Duration(seconds: 1),
  width: 100,
  height: 100,
  color: Colors.blue,
)""",
    },
    "Hero": {
      "description": "Widget for hero animations between routes.",
      "syntax": """Hero(
  tag: 'hero-tag',
  child: Image.asset('assets/image.png'),
)""",
    },
  },
};

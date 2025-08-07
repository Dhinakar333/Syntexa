
final Map<String, Map<String, Map<String, String>>> groupedWidgets = {
  "1. Layout": {
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
    "ListView": {
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
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text('Item A'),
    Text('Item B'),
  ],
)""",
    },
    "Row": {
      "description": "Displays widgets horizontally.",
      "syntax": """Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Icon(Icons.star),
    Text('Stars'),
  ],
)""",
    },
    "Padding": {
      "description": "A widget that insets its child by the given padding.",
      "syntax": """Padding(
  padding: EdgeInsets.all(16.0),
  child: Text('Padded text'),
)""",
    },
    "Center": {
      "description": "Centers its child within itself.",
      "syntax": """Center(
  child: Text('Centered'),
)""",
    },
    "Expanded": {
      "description": "Expands a child of a Row, Column, or Flex so that the child fills the available space.",
      "syntax": """Expanded(
  child: Container(
    color: Colors.red,
  ),
)""",
    },
    "SizedBox": {
      "description": "A box with a specified size.",
      "syntax": """SizedBox(
  height: 50,
  width: 100,
  child: Text('Sized'),
)""",
    },
    "Align": {
      "description": "Aligns its child within itself and optionally sizes itself based on the child's size.",
      "syntax": """Align(
  alignment: Alignment.centerRight,
  child: Text('Aligned Right'),
)""",
    },
  },
  "2. Buttons": {
    "ElevatedButton": {
      "description": "A Material Design elevated button. Use it to add depth to your interface.",
      "syntax": """ElevatedButton(
  onPressed: () {
  print('Pressed');
  },
  child: Text('Elevated'),
)""",
    },
    "TextButton": {
      "description": "A Material Design flat button without elevation. Typically used for less prominent actions.",
      "syntax": """TextButton(
  onPressed: () {
    print('Text button pressed');
  },
  child: Text('Text Button'),
)""",
    },
    "OutlinedButton": {
      "description": "A Material Design button with an outline border.",
      "syntax": """OutlinedButton(
  onPressed: () {
    print('Outlined button pressed');
  },
  child: Text('Outlined'),
)""",
    },
    "IconButton": {
      "description": "A Material Design icon button. Often used in AppBar or Toolbar.",
      "syntax": """IconButton(
  icon: Icon(Icons.thumb_up),
  onPressed: () {
    print('Icon button pressed');
  },
)""",
    },
    "FloatingActionButton": {
      "description": "A circular button intended for primary actions on a screen.",
      "syntax": """FloatingActionButton(
  onPressed: () {
    print('FAB pressed');
  },
  child: Icon(Icons.add),
)""",
    },
    "DropdownButton": {
      "description": "Displays a dropdown list of items and selects one item.",
      "syntax": """DropdownButton<String>(
  value: 'One',
  items: <String>['One', 'Two', 'Three'].map((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList(),
  onChanged: (String? newValue) {
    print(newValue);
  },
)""",
    },
    "PopupMenuButton": {
      "description": "Shows a menu when pressed and calls onSelected when the menu is dismissed.",
      "syntax": """PopupMenuButton<String>(
  onSelected: (String value) {
    print(value);
  },
  itemBuilder: (BuildContext context) => [
    PopupMenuItem(
      value: 'Option 1',
      child: Text('Option 1'),
    ),
    PopupMenuItem(
      value: 'Option 2',
      child: Text('Option 2'),
    ),
  ],
)""",
    },
  },
  "3. Icons": {
    "Icon": {
      "description": "A graphical symbol used to represent actions or content. Commonly used in buttons and UI elements.",
      "syntax": """Icon(
  Icons.favorite,
  color: Colors.pink,
  size: 30.0,
)""",
    },
    "IconButton": {
      "description": "A clickable button that contains an icon and triggers an action when pressed.",
      "syntax": """IconButton(
  icon: Icon(Icons.thumb_up),
  color: Colors.blue,
  onPressed: () {
    print('Liked!');
  },
)""",
    },
    "Icons": {
      "description": "A collection of predefined Material Design icons available in Flutter.",
      "syntax": """// Example usage
Row(
  children: [
    Icon(Icons.home),
    Icon(Icons.settings),
    Icon(Icons.phone),
  ],
)""",
    },
    "ImageIcon": {
      "description": "An icon based on an image rather than a glyph from the built-in icon set.",
      "syntax": """ImageIcon(
  AssetImage('assets/icon.png'),
  size: 30,
  color: Colors.green,
)""",
    },
  },
  "4. Media": {
    "Image": {
      "description": "A widget that displays an image from various sources such as assets, files, or the internet.",
      "syntax": """Image.asset(
  'assets/images/sample.png',
  width: 100,
  height: 100,
  fit: BoxFit.cover,
)""",
    },
    "FadeInImage": {
      "description": "A widget that displays a placeholder image while the target image loads and fades it in once loaded.",
      "syntax": """FadeInImage.assetNetwork(
  placeholder: 'assets/loading.gif',
  image: 'https://example.com/image.jpg',
  width: 200,
  height: 200,
)""",
    },
    "VideoPlayer": {
      "description": "A widget from the `video_player` package that plays video from assets or network.",
      "syntax": """VideoPlayerController _controller = VideoPlayerController.asset(
  'assets/videos/sample.mp4',
);

VideoPlayer(_controller)""",
    },
    "AudioPlayer": {
      "description": "Used with packages like `audioplayers`, it plays audio from assets or network sources.",
      "syntax": """AudioPlayer audioPlayer = AudioPlayer();
audioPlayer.play('https://example.com/audio.mp3');""",
    },
    "Camera": {
      "description": "Accesses and displays a live camera preview using the `camera` package.",
      "syntax": """CameraController _controller = CameraController(
  cameras[0],
  ResolutionPreset.high,
);

CameraPreview(_controller)""",
    },
  },
  "5. Structure": {
    "Scaffold": {
      "description": "Implements the basic visual layout structure of the Material Design layout.",
      "syntax": """Scaffold(
  appBar: AppBar(title: Text('My App')),
  body: Center(child: Text('Hello World')),
  floatingActionButton: FloatingActionButton(
    onPressed: () {},
    child: Icon(Icons.add),
  ),
)""",
    },
    "AppBar": {
      "description": "A Material Design app bar that can hold titles, icons, and actions.",
      "syntax": """AppBar(
  title: Text('My App'),
  actions: [
    IconButton(
      icon: Icon(Icons.settings),
      onPressed: () {},
    ),
  ],
)""",
    },
    "SafeArea": {
      "description": "Pads its child to avoid intrusions by the operating system (like notches or status bars).",
      "syntax": """SafeArea(
  child: Text('Inside safe area'),
)""",
    },
    "MaterialApp": {
      "description": "Wraps several widgets that are commonly required for material design applications.",
      "syntax": """MaterialApp(
  title: 'My App',
  theme: ThemeData(primarySwatch: Colors.blue),
  home: MyHomePage(),
)""",
    },
    "CupertinoApp": {
      "description": "An iOS-styled application that uses Cupertino design widgets.",
      "syntax": """CupertinoApp(
  title: 'iOS App',
  home: CupertinoPageScaffold(
    navigationBar: CupertinoNavigationBar(
      middle: Text('Home'),
    ),
    child: Center(child: Text('Hello iOS')),
  ),
)""",
    },
  },
  "6. Input": {
    "TextField": {
      "description": "A basic input field for text entry.",
      "syntax": """TextField(
  decoration: InputDecoration(
    labelText: 'Enter your name',
    border: OutlineInputBorder(),
  ),
)""",
    },
    "TextFormField": {
      "description": "A FormField that contains a TextField and integrates with form validation.",
      "syntax": """TextFormField(
  decoration: InputDecoration(
    labelText: 'Email',
    border: OutlineInputBorder(),
  ),
  validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please enter email';
    }
    return null;
  },
)""",
    },
    "Checkbox": {
      "description": "A box that can be checked or unchecked.",
      "syntax": """Checkbox(
  value: true,
  onChanged: (bool? newValue) {
    // Handle change
  },
)""",
    },
    "Switch": {
      "description": "A material design switch for toggling on/off states.",
      "syntax": """Switch(
  value: true,
  onChanged: (bool newValue) {
    // Handle toggle
  },
)""",
    },
    "Radio": {
      "description": "A material design radio button.",
      "syntax": """Radio<int>(
  value: 1,
  groupValue: 1,
  onChanged: (int? newValue) {
    // Handle selection
  },
)""",
    },
    "Slider": {
      "description": "A slider to select from a range of values.",
      "syntax": """Slider(
  value: 50,
  min: 0,
  max: 100,
  onChanged: (double newValue) {
    // Handle change
  },
)""",
    },
    "DropdownButton": {
      "description": "A dropdown list of selectable items.",
      "syntax": """DropdownButton<String>(
  value: 'One',
  items: ['One', 'Two', 'Three'].map((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList(),
  onChanged: (String? newValue) {
    // Handle selection
  },
)""",
    },
  },
  "7. Utility": {
    "SizedBox": {
      "description": "A box with a fixed size or spacing.",
      "syntax": """SizedBox(
  height: 20,
  width: 100,
)""",
    },
    "Padding": {
      "description": "Adds padding around a widget.",
      "syntax": """Padding(
  padding: EdgeInsets.all(16.0),
  child: Text('Padded Text'),
)""",
    },
    "Align": {
      "description": "Aligns a child within itself.",
      "syntax": """Align(
  alignment: Alignment.centerRight,
  child: Text('Right Aligned'),
)""",
    },
    "Center": {
      "description": "Centers its child within itself.",
      "syntax": """Center(
  child: Text('Centered Text'),
)""",
    },
    "Visibility": {
      "description": "Shows or hides a child widget.",
      "syntax": """Visibility(
  visible: true,
  child: Text('This is visible'),
)""",
    },
    "Opacity": {
      "description": "Makes a widget partially transparent.",
      "syntax": """Opacity(
  opacity: 0.5,
  child: Text('Half Transparent'),
)""",
    },
    "Spacer": {
      "description": "Creates adjustable space between widgets in Flex widgets like Row or Column.",
      "syntax": """Row(
  children: [
    Icon(Icons.star),
    Spacer(),
    Text('Rating'),
  ],
)""",
    },
    "Expanded": {
      "description": "Expands a child of a Row, Column, or Flex to fill the available space.",
      "syntax": """Row(
  children: [
    Expanded(
      child: Text('Takes all available space'),
    ),
    Icon(Icons.star),
  ],
)""",
    },
    "Flexible": {
      "description": "Controls how a child of a Row, Column, or Flex flexes.",
      "syntax": """Row(
  children: [
    Flexible(
      child: Text('Flexible Text'),
    ),
    Icon(Icons.star),
  ],
)""",
    },
  },
  "8. Interaction": {
    "GestureDetector": {
      "description": "A widget that detects gestures like taps, drags, and swipes.",
      "syntax": """GestureDetector(
  onTap: () {
    print('Tapped!');
  },
  child: Container(
    color: Colors.blue,
    padding: EdgeInsets.all(16),
    child: Text('Tap Me'),
  ),
)""",
    },
    "InkWell": {
      "description": "A material design ripple effect on touch (must be inside Material).",
      "syntax": """InkWell(
  onTap: () {
    print('Tapped InkWell');
  },
  child: Padding(
    padding: EdgeInsets.all(8.0),
    child: Text('Tap with Ripple'),
  ),
)""",
    },
    "Dismissible": {
      "description": "Makes a widget dismissible by swiping.",
      "syntax": """Dismissible(
  key: Key('item1'),
  onDismissed: (direction) {
    print('Item dismissed');
  },
  background: Container(color: Colors.red),
  child: ListTile(title: Text('Swipe me')),
)""",
    },
    "Draggable": {
      "description": "Makes a widget draggable across the screen.",
      "syntax": """Draggable<String>(
  data: 'Dragged!',
  child: Container(
    color: Colors.blue,
    padding: EdgeInsets.all(16),
    child: Text('Drag Me'),
  ),
  feedback: Material(
    child: Container(
      color: Colors.blueAccent,
      padding: EdgeInsets.all(16),
      child: Text('Dragging...'),
    ),
  ),
)""",
    },
    "DragTarget": {
      "description": "Receives data when a draggable widget is dropped onto it.",
      "syntax": """DragTarget<String>(
  builder: (context, candidateData, rejectedData) {
    return Container(
      height: 100,
      color: Colors.greenAccent,
      child: Center(child: Text('Drop Here')),
    );
  },
  onAccept: (data) {
    print('Received: \$data');
  },
)""",
    },
    "AbsorbPointer": {
      "description": "Prevents its child from receiving pointer events.",
      "syntax": """AbsorbPointer(
  absorbing: true,
  child: ElevatedButton(
    onPressed: () {
      print('This won't trigger');
    },
    child: Text('Disabled'),
  ),
)""",
    },
    "IgnorePointer": {
      "description": "Completely ignores touch events for its child.",
      "syntax": """IgnorePointer(
  ignoring: true,
  child: ElevatedButton(
    onPressed: () {
      print('Ignored!');
    },
    child: Text('Ignored Button'),
  ),
)""",
    },
  },
  "9. Display": {
    "Text": {
      "description": "A widget that displays a string of text with single style.",
      "syntax": """Text(
  'Hello, Flutter!',
  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
)""",
    },
    "RichText": {
      "description": "Displays text with multiple styles using TextSpan.",
      "syntax": """RichText(
  text: TextSpan(
    text: 'Hello ',
    style: TextStyle(color: Colors.black),
    children: [
      TextSpan(
        text: 'Flutter',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
      ),
    ],
  ),
)""",
    },
    "ListTile": {
      "description": "A single fixed-height row that typically contains text and icons.",
      "syntax": """ListTile(
  leading: Icon(Icons.person),
  title: Text('John Doe'),
  subtitle: Text('Software Engineer'),
  trailing: Icon(Icons.arrow_forward),
  onTap: () {},
)""",
    },
    "Card": {
      "description": "A material design card: a panel with slightly rounded corners and elevation.",
      "syntax": """Card(
  elevation: 4,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  child: Padding(
    padding: EdgeInsets.all(16),
    child: Text('This is a card'),
  ),
)""",
    },
    "Tooltip": {
      "description": "Displays a message when the widget is long-pressed or hovered.",
      "syntax": """Tooltip(
  message: 'This is a tooltip',
  child: Icon(Icons.info),
)""",
    },
    "Divider": {
      "description": "A horizontal line used to separate content.",
      "syntax": """Divider(
  color: Colors.grey,
  thickness: 1,
)""",
    },
    "Chip": {
      "description": "A material design chip, often used for tags or contact elements.",
      "syntax": """Chip(
  avatar: CircleAvatar(
    backgroundColor: Colors.grey.shade800,
    child: Text('A'),
  ),
  label: Text('Alex'),
)""",
    },
    "CircleAvatar": {
      "description": "Typically used to show a circular profile image.",
      "syntax": """CircleAvatar(
  backgroundImage: NetworkImage('https://example.com/avatar.png'),
  radius: 30,
)""",
    },
    "Badge": {
      "description": "Displays a small badge (requires external packages like badges).",
      "syntax": """Badge(
  label: Text('3'),
  child: Icon(Icons.notifications),
)""",
    },
  },
  "10. Dialogs": {
    "AlertDialog": {
      "description": "A material design alert dialog. Can have a title, content, and actions.",
      "syntax": """showDialog(
  context: context,
  builder: (context) => AlertDialog(
    title: Text('Alert'),
    content: Text('This is an alert dialog.'),
    actions: [
      TextButton(
        onPressed: () => Navigator.pop(context),
        child: Text('Cancel'),
      ),
      ElevatedButton(
        onPressed: () => Navigator.pop(context),
        child: Text('OK'),
      ),
    ],
  ),
);""",
    },
    "SimpleDialog": {
      "description": "A simple dialog offers the user a set of options.",
      "syntax": """showDialog(
  context: context,
  builder: (context) => SimpleDialog(
    title: Text('Choose an option'),
    children: [
      SimpleDialogOption(
        onPressed: () => Navigator.pop(context, 'Option 1'),
        child: Text('Option 1'),
      ),
      SimpleDialogOption(
        onPressed: () => Navigator.pop(context, 'Option 2'),
        child: Text('Option 2'),
      ),
    ],
  ),
);""",
    },
    "Dialog": {
      "description": "The base class for all dialogs. You can create custom dialogs with this.",
      "syntax": """showDialog(
  context: context,
  builder: (context) => Dialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    child: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Custom Dialog', style: TextStyle(fontSize: 18)),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Close'),
          ),
        ],
      ),
    ),
  ),
);""",
    },
    "BottomSheet": {
      "description": "A material design bottom sheet. Can be modal or persistent.",
      "syntax": """showModalBottomSheet(
  context: context,
  builder: (context) => Container(
    padding: EdgeInsets.all(16),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('This is a modal bottom sheet'),
        ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Close'),
        ),
      ],
    ),
  ),
);""",
    },
    "SnackBar": {
      "description": "A lightweight message with an optional action that briefly appears at the bottom.",
      "syntax": """ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(
    content: Text('This is a snackbar'),
    action: SnackBarAction(
      label: 'Undo',
      onPressed: () {},
    ),
  ),
);""",
    },
  },
  "Forms": {
    "Form": {
      "description": "A container for form fields. Used to validate and save multiple form fields together.",
      "syntax": """final _formKey = GlobalKey<FormState>();

Form(
  key: _formKey,
  child: Column(
    children: [
      TextFormField(
        decoration: InputDecoration(labelText: 'Name'),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your name';
          }
          return null;
        },
      ),
      ElevatedButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            // Process data
          }
        },
        child: Text('Submit'),
      ),
    ],
  ),
);""",
    },
    "FormField": {
      "description": "A single form field widget that can manage its own state and validation.",
      "syntax": """FormField<String>(
  validator: (value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }
    return null;
  },
  builder: (state) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      TextField(
        onChanged: (val) => state.didChange(val),
      ),
      if (state.hasError)
        Text(state.errorText ?? '', style: TextStyle(color: Colors.red)),
    ],
  ),
);""",
    },
    "TextFormField": {
      "description": "A FormField that contains a TextField. Supports validation and saving.",
      "syntax": """TextFormField(
  decoration: InputDecoration(labelText: 'Email'),
  keyboardType: TextInputType.emailAddress,
  validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an email';
    }
    return null;
  },
);""",
    },
    "DropdownButtonFormField": {
      "description": "A FormField that contains a DropdownButton.",
      "syntax": """DropdownButtonFormField<String>(
  value: 'One',
  items: ['One', 'Two', 'Three'].map((item) {
    return DropdownMenuItem<String>(
      value: item,
      child: Text(item),
    );
  }).toList(),
  onChanged: (val) {},
  decoration: InputDecoration(labelText: 'Choose Option'),
);""",
    },
    "CheckboxFormField": {
      "description": "Custom FormField to manage a checkbox. (Not built-in, usually a custom implementation)",
      "syntax": """// Example of custom checkbox in a form
FormField<bool>(
  initialValue: false,
  validator: (value) {
    if (value == false) {
      return 'You must agree to continue';
    }
    return null;
  },
  builder: (state) => Column(
    children: [
      CheckboxListTile(
        title: Text("I agree to the terms"),
        value: state.value,
        onChanged: (val) => state.didChange(val),
      ),
      if (state.hasError)
        Text(state.errorText ?? '', style: TextStyle(color: Colors.red)),
    ],
  ),
);""",
    },
  },
  "Navigation": {
    "Navigator": {
      "description": "Manages a stack of Route objects with push and pop operations for screen navigation.",
      "syntax": """// Push to a new screen
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => SecondPage()),
);

// Pop the current screen
Navigator.pop(context);""",
    },
    "MaterialPageRoute": {
      "description": "A route that uses a Material-style page transition. Typically used with Navigator.push.",
      "syntax": """Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => SecondPage()),
);""",
    },
    "Routes (Named)": {
      "description": "Defines routes by name for organized and centralized navigation.",
      "syntax": """// In MaterialApp
MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => HomePage(),
    '/second': (context) => SecondPage(),
  },
);

// Navigate using named route
Navigator.pushNamed(context, '/second');""",
    },
    "BottomNavigationBar": {
      "description": "Displays a bar at the bottom for switching between views.",
      "syntax": """BottomNavigationBar(
  currentIndex: _selectedIndex,
  onTap: (index) {
    setState(() {
      _selectedIndex = index;
    });
  },
  items: const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: 'Settings',
    ),
  ],
);""",
    },
    "Drawer": {
      "description": "A panel that slides in from the side for navigation and other actions.",
      "syntax": """Scaffold(
  drawer: Drawer(
    child: ListView(
      children: const [
        DrawerHeader(
          decoration: BoxDecoration(color: Colors.blue),
          child: Text('Menu'),
        ),
        ListTile(
          title: Text('Home'),
        ),
        ListTile(
          title: Text('Settings'),
        ),
      ],
    ),
  ),
);""",
    },
    "TabBar": {
      "description": "A horizontal bar of tabs for switching between pages or views.",
      "syntax": """DefaultTabController(
  length: 3,
  child: Scaffold(
    appBar: AppBar(
      bottom: const TabBar(
        tabs: [
          Tab(icon: Icon(Icons.home)),
          Tab(icon: Icon(Icons.star)),
          Tab(icon: Icon(Icons.settings)),
        ],
      ),
      title: const Text('TabBar Example'),
    ),
    body: const TabBarView(
      children: [
        Center(child: Text("Home")),
        Center(child: Text("Favorites")),
        Center(child: Text("Settings")),
      ],
    ),
  ),
);""",
    },
    "PageView": {
      "description": "A scrollable list of pages that can be swiped horizontally or vertically.",
      "syntax": """PageView(
  children: [
    Container(color: Colors.red),
    Container(color: Colors.green),
    Container(color: Colors.blue),
  ],
);""",
    },
  },
  "Builders": {
    "Builder": {
      "description": "Creates a new context for building a widget subtree. Useful for accessing ancestor context values.",
      "syntax": """Builder(
  builder: (BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        final scaffold = ScaffoldMessenger.of(context);
        scaffold.showSnackBar(SnackBar(content: Text('Hello from Builder')));
      },
      child: Text('Show SnackBar'),
    );
  },
);""",
    },
    "FutureBuilder": {
      "description": "Builds itself based on the latest snapshot of interaction with a Future.",
      "syntax": """FutureBuilder<String>(
  future: fetchData(),
  builder: (context, snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      return CircularProgressIndicator();
    } else if (snapshot.hasError) {
      return Text('Error: \${snapshot.error}');
    } else {
      return Text('Result: \${snapshot.data}');
    }
  },
);""",
    },
    "StreamBuilder": {
      "description": "Builds itself based on the latest snapshot of interaction with a Stream.",
      "syntax": """StreamBuilder<int>(
  stream: Stream.periodic(Duration(seconds: 1), (count) => count),
  builder: (context, snapshot) {
    if (snapshot.hasData) {
      return Text('Count: \${snapshot.data}');
    } else {
      return CircularProgressIndicator();
    }
  },
);""",
    },
    "LayoutBuilder": {
      "description": "Builds a widget tree based on the parent widget's constraints.",
      "syntax": """LayoutBuilder(
  builder: (context, constraints) {
    if (constraints.maxWidth > 600) {
      return Text('Wide layout');
    } else {
      return Text('Narrow layout');
    }
  },
);""",
    },
    "AnimatedBuilder": {
      "description": "Rebuilds a widget tree when an animation changes. Useful for complex animations.",
      "syntax": """AnimatedBuilder(
  animation: _controller,
  builder: (context, child) {
    return Transform.rotate(
      angle: _controller.value * 2.0 * 3.14,
      child: child,
    );
  },
  child: Icon(Icons.refresh, size: 50),
);""",
    },
    "DraggableScrollableSheet": {
      "description": "A builder that creates a draggable bottom sheet.",
      "syntax": """DraggableScrollableSheet(
  initialChildSize: 0.2,
  minChildSize: 0.1,
  maxChildSize: 0.8,
  builder: (context, scrollController) {
    return Container(
      color: Colors.blue[100],
      child: ListView.builder(
        controller: scrollController,
        itemCount: 30,
        itemBuilder: (context, index) => ListTile(title: Text('Item \$index')),
      ),
    );
  },
);""",
    },
  },
  "Animations": {
    "AnimatedContainer": {
      "description": "A container that automatically animates between old and new values when they change.",
      "syntax": """AnimatedContainer(
  duration: Duration(seconds: 1),
  width: isSelected ? 200.0 : 100.0,
  height: isSelected ? 100.0 : 200.0,
  color: isSelected ? Colors.blue : Colors.red,
  child: Center(child: Text('Animated')),
);""",
    },
    "AnimatedOpacity": {
      "description": "Fade a widget in and out by animating its opacity.",
      "syntax": """AnimatedOpacity(
  opacity: _visible ? 1.0 : 0.0,
  duration: Duration(seconds: 1),
  child: Text('Fade Me'),
);""",
    },
    "AnimatedCrossFade": {
      "description": "Cross-fades between two children and animates the size and fade.",
      "syntax": """AnimatedCrossFade(
  firstChild: Text('First'),
  secondChild: Text('Second'),
  crossFadeState: _showFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
  duration: Duration(seconds: 1),
);""",
    },
    "AnimatedSwitcher": {
      "description": "Switches between widgets with a fade or custom transition.",
      "syntax": """AnimatedSwitcher(
  duration: Duration(seconds: 1),
  child: _showFirst
      ? Text('First', key: ValueKey(1))
      : Text('Second', key: ValueKey(2)),
);""",
    },
    "AnimatedBuilder": {
      "description": "Useful for building widgets with animation and avoiding rebuilds of static child widgets.",
      "syntax": """AnimatedBuilder(
  animation: _controller,
  builder: (context, child) {
    return Transform.rotate(
      angle: _controller.value * 2 * 3.14,
      child: child,
    );
  },
  child: Icon(Icons.refresh),
);""",
    },
    "AnimatedIcon": {
      "description": "An icon that can animate between predefined pairs of icons.",
      "syntax": """AnimatedIcon(
  icon: AnimatedIcons.menu_close,
  progress: _controller,
);""",
    },
    "FadeTransition": {
      "description": "A transition that animates the opacity of a widget.",
      "syntax": """FadeTransition(
  opacity: _animation,
  child: Text('Fading Text'),
);""",
    },
    "ScaleTransition": {
      "description": "A transition that animates the scale of a widget.",
      "syntax": """ScaleTransition(
  scale: _animation,
  child: Icon(Icons.star),
);""",
    },
    "SlideTransition": {
      "description": "Animates a widget's position relative to its normal position.",
      "syntax": """SlideTransition(
  position: _offsetAnimation,
  child: Text('Slide Me'),
);""",
    },
    "RotationTransition": {
      "description": "Animates the rotation of a widget.",
      "syntax": """RotationTransition(
  turns: _animation,
  child: Icon(Icons.rotate_right),
);""",
    },
    "SizeTransition": {
      "description": "Animates the size of a widget along a given axis.",
      "syntax": """SizeTransition(
  sizeFactor: _animation,
  axis: Axis.vertical,
  child: Text('Resize Me'),
);""",
    },
    "PositionedTransition": {
      "description": "Animated version of Positioned that transitions its position over time.",
      "syntax": """PositionedTransition(
  rect: _relativeRectAnimation,
  child: Container(color: Colors.blue, width: 100, height: 100),
);""",
    },
    "AlignTransition": {
      "description": "Animates changes in alignment of a child within itself.",
      "syntax": """AlignTransition(
  alignment: _alignmentAnimation,
  child: Icon(Icons.star),
);""",
    },
    "TweenAnimationBuilder": {
      "description": "A builder that animates a value over time using a Tween.",
      "syntax": """TweenAnimationBuilder<double>(
  tween: Tween(begin: 0.0, end: 1.0),
  duration: Duration(seconds: 1),
  builder: (context, value, child) {
    return Opacity(
      opacity: value,
      child: child,
    );
  },
  child: Text('Tween Animation'),
);""",
    },
    "Hero": {
      "description": "Used to animate a widget from one screen to another.",
      "syntax": """Hero(
  tag: 'heroTag',
  child: Image.asset('assets/logo.png'),
);""",
    },
  },
  "Lists & Grids":{
    "ListView": {
      "description": "A scrollable list of widgets arranged linearly.",
      "syntax": """ListView(
  children: [
    Text('Item 1'),
    Text('Item 2'),
  ],
)""",
    },
    "ListView.builder": {
      "description": "A scrollable, lazily built list based on a builder function.",
      "syntax": """ListView.builder(
  itemCount: 10,
  itemBuilder: (context, index) {
    return ListTile(
      title: Text('Item \$index'),
    );
  },
)""",
    },
    "ListView.separated": {
      "description": "A ListView with separators between items.",
      "syntax": """ListView.separated(
  itemCount: 5,
  itemBuilder: (context, index) => ListTile(title: Text('Item \$index')),
  separatorBuilder: (context, index) => Divider(),
)""",
    },
    "GridView": {
      "description": "A scrollable 2D array of widgets.",
      "syntax": """GridView.count(
  crossAxisCount: 2,
  children: List.generate(4, (index) {
    return Center(
      child: Text('Item \$index'),
    );
  }),
)""",
    },
    "GridView.builder": {
      "description": "A scrollable, lazily built grid using a builder function.",
      "syntax": """GridView.builder(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
  ),
  itemCount: 6,
  itemBuilder: (context, index) {
    return Card(
      child: Center(child: Text('Item \$index')),
    );
  },
)""",
    },
    "ListTile": {
      "description": "A single fixed-height row that typically contains some text and an optional icon.",
      "syntax": """ListTile(
  leading: Icon(Icons.account_circle),
  title: Text('Title'),
  subtitle: Text('Subtitle'),
  trailing: Icon(Icons.more_vert),
)""",
    },
  },
  "Scrolling Widgets":{
    "SingleChildScrollView": {
      "description": "A box in which a single widget can be scrolled. Useful for vertical or horizontal scrolling of a single child.",
      "syntax": """SingleChildScrollView(
  child: Column(
    children: [
      Text('Item 1'),
      Text('Item 2'),
    ],
  ),
)""",
    },
    "ListView": {
      "description": "A scrollable list of widgets arranged linearly. It can scroll vertically or horizontally.",
      "syntax": """ListView(
  children: [
    Text('Item 1'),
    Text('Item 2'),
  ],
)""",
    },
    "GridView": {
      "description": "A scrollable 2D array of widgets. Supports lazy loading and scrolling in two directions.",
      "syntax": """GridView.count(
  crossAxisCount: 2,
  children: List.generate(4, (index) {
    return Center(child: Text('Item \$index'));
  }),
)""",
    },
    "PageView": {
      "description": "A scrollable list that works page by page, like a carousel.",
      "syntax": """PageView(
  children: [
    Container(color: Colors.red),
    Container(color: Colors.blue),
  ],
)""",
    },
    "Scrollbar": {
      "description": "A Material Design scrollbar. Wrap around scrollable widgets to show a draggable scrollbar.",
      "syntax": """Scrollbar(
  child: ListView.builder(
    itemCount: 20,
    itemBuilder: (context, index) => ListTile(title: Text('Item \$index')),
  ),
)""",
    },
    "CustomScrollView": {
      "description": "A ScrollView that creates custom scroll effects using slivers.",
      "syntax": """CustomScrollView(
  slivers: [
    SliverAppBar(
      floating: true,
      expandedHeight: 200,
      flexibleSpace: FlexibleSpaceBar(title: Text('SliverAppBar')),
    ),
    SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => ListTile(title: Text('Item \$index')),
        childCount: 10,
      ),
    ),
  ],
)""",
    },
    "NestedScrollView": {
      "description": "A scrolling view that integrates with a nested scrollable area like a SliverAppBar and TabBarView.",
      "syntax": """NestedScrollView(
  headerSliverBuilder: (context, innerBoxIsScrolled) => [
    SliverAppBar(
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(title: Text('Nested Scroll')),
    ),
  ],
  body: ListView.builder(
    itemCount: 20,
    itemBuilder: (context, index) => ListTile(title: Text('Item \$index')),
  ),
)""",
    },
  },
  "Accessibility":{
    "Semantics": {
      "description": "A widget that annotates the widget tree with a description of the meaning of the widgets. Used by accessibility tools like screen readers.",
      "syntax": """Semantics(
  label: 'Play Button',
  child: Icon(Icons.play_arrow),
)""",
    },
    "ExcludeSemantics": {
      "description": "A widget that excludes its subtree from the semantics tree. Useful when combining multiple widgets into one accessible unit.",
      "syntax": """ExcludeSemantics(
  child: Text('This text will be hidden from accessibility tools'),
)""",
    },
    "MergeSemantics": {
      "description": "A widget that merges the semantics of its descendants into a single node. Useful for combining separate widgets into one accessible unit.",
      "syntax": """MergeSemantics(
  child: Row(
    children: [
      Icon(Icons.volume_up),
      Text('Volume'),
    ],
  ),
)""",
    },
    "BlockSemantics": {
      "description": "A widget that prevents semantics from propagating to its ancestors. Useful when showing modal elements like dialogs.",
      "syntax": """BlockSemantics(
  child: AlertDialog(
    title: Text('Alert'),
    content: Text('Are you sure?'),
    actions: [TextButton(onPressed: () {}, child: Text('OK'))],
  ),
)""",
    },
  },
  "State Management": {
    "StatelessWidget": {
      "description": "A widget that describes part of the UI that does not depend on any mutable state.",
      "syntax": """class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('I am a StatelessWidget'),
    );
  }
}""",
    },
    "StatefulWidget": {
      "description": "A widget that has mutable state which can change during the lifetime of the widget.",
      "syntax": """class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Count: \$counter'),
        ElevatedButton(onPressed: increment, child: Text('Increment')),
      ],
    );
  }
}""",
    },
    "setState": {
      "description": "Used to tell the Flutter framework that the internal state of this object has changed.",
      "syntax": """setState(() {
  counter++;
});""",
    },
    "InheritedWidget": {
      "description": "A widget that allows data to be passed down the widget tree efficiently.",
      "syntax": """class MyInheritedWidget extends InheritedWidget {
  final int data;

  MyInheritedWidget({
    required this.data,
    required Widget child,
  }) : super(child: child);

  static MyInheritedWidget? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>();

  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) {
    return data != oldWidget.data;
  }
}""",
    },
    "Provider": {
      "description": "A wrapper around InheritedWidget to make state management simpler and scalable (requires `provider` package).",
      "syntax": """ChangeNotifierProvider(
  create: (_) => CounterModel(),
  child: MyApp(),
)

class CounterModel extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}

Consumer<CounterModel>(
  builder: (context, model, child) => Text('Count: \${model.count}'),
)""",
    },
    "ValueNotifier & ValueListenableBuilder": {
      "description": "A simple way to listen to changes in a single value.",
      "syntax": """final counter = ValueNotifier<int>(0);

ValueListenableBuilder<int>(
  valueListenable: counter,
  builder: (context, value, child) {
    return Text('Value: \$value');
  },
)

// To update:
counter.value++;""",
    },
    "Bloc": {
      "description": "A predictable state management library based on streams (requires `flutter_bloc` package).",
      "syntax": """BlocProvider(
  create: (_) => CounterBloc(),
  child: CounterPage(),
)

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<Increment>((event, emit) => emit(state + 1));
  }
}

BlocBuilder<CounterBloc, int>(
  builder: (context, count) {
    return Text('\$count');
  },
)""",
    },
  },
  "Theming & Styling":{
    "Semantics": {
      "description": "A widget that annotates the widget tree with a description of the meaning of the widgets. Used by accessibility tools like screen readers.",
      "syntax": """Semantics(
  label: 'Play Button',
  child: Icon(Icons.play_arrow),
)""",
    },
    "ExcludeSemantics": {
      "description": "A widget that excludes its subtree from the semantics tree. Useful when combining multiple widgets into one accessible unit.",
      "syntax": """ExcludeSemantics(
  child: Text('This text will be hidden from accessibility tools'),
)""",
    },
    "MergeSemantics": {
      "description": "A widget that merges the semantics of its descendants into a single node. Useful for combining separate widgets into one accessible unit.",
      "syntax": """MergeSemantics(
  child: Row(
    children: [
      Icon(Icons.volume_up),
      Text('Volume'),
    ],
  ),
)""",
    },
    "BlockSemantics": {
      "description": "A widget that prevents semantics from propagating to its ancestors. Useful when showing modal elements like dialogs.",
      "syntax": """BlockSemantics(
  child: AlertDialog(
    title: Text('Alert'),
    content: Text('Are you sure?'),
    actions: [TextButton(onPressed: () {}, child: Text('OK'))],
  ),
)""",
    },
  },
  "Testing & Debugging":{
    "DebugBanner": {
      "description": "The debug banner appears in debug mode to show that the app is not in release mode. It can be turned off.",
      "syntax": """MaterialApp(
  debugShowCheckedModeBanner: false,
  home: MyHomePage(),
)""",
    },
    "Banner": {
      "description": "Displays a diagonal message over other widgets to indicate status (e.g., debug mode).",
      "syntax": """Banner(
  message: "DEBUG",
  location: BannerLocation.topEnd,
  color: Colors.red,
  child: MyHomePage(),
)""",
    },
    "SemanticsDebugger": {
      "description": "Inspects the semantics (accessibility) tree and overlays helpful debugging information on the UI.",
      "syntax": """SemanticsDebugger(
  child: MyApp(),
)""",
    },
    "WidgetInspector": {
      "description": "Used internally by Flutter DevTools to allow interactive widget inspection.",
      "syntax": """WidgetInspector(
  child: MyApp(),
)""",
    },
    "ErrorWidget": {
      "description": "Displays error messages when a build fails. You can customize the default error UI.",
      "syntax": """ErrorWidget.builder = (FlutterErrorDetails details) {
  return Center(child: Text('Oops! Something went wrong.'));
};""",
    },
    "FlutterError": {
      "description": "Captures errors during Flutter framework execution and reports to the console or error handler.",
      "syntax": """FlutterError.onError = (FlutterErrorDetails details) {
  FlutterError.presentError(details);
};""",
    },
    "print": {
      "description": "Used for logging messages to the console during development and debugging.",
      "syntax": """print('This is a debug message');""",
    },
    "assert": {
      "description": "Used to set up conditions that must be true during development. These checks are removed in release builds.",
      "syntax": """assert(myList.isNotEmpty, 'List should not be empty');""",
    },
  },
  "Async & Futures":{
    "FutureBuilder": {
      "description": "Builds a widget based on the latest snapshot of interaction with a `Future`. Useful for asynchronous operations.",
      "syntax": """FutureBuilder<String>(
  future: fetchData(),
  builder: (context, snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      return CircularProgressIndicator();
    } else if (snapshot.hasError) {
      return Text('Error: \${snapshot.error}');
    } else {
      return Text('Result: \${snapshot.data}');
    }
  },
)""",
    },
    "StreamBuilder": {
      "description": "Builds a widget based on the latest snapshot of interaction with a `Stream`. Useful for real-time data.",
      "syntax": """StreamBuilder<int>(
  stream: counterStream(),
  builder: (context, snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      return CircularProgressIndicator();
    } else if (snapshot.hasError) {
      return Text('Error: \${snapshot.error}');
    } else {
      return Text('Count: \${snapshot.data}');
    }
  },
)""",
    },
    "AsyncSnapshot": {
      "description": "Represents the current state of interaction with a Future or Stream, used within `FutureBuilder` or `StreamBuilder`.",
      "syntax": """builder: (context, AsyncSnapshot<String> snapshot) {
  if (snapshot.connectionState == ConnectionState.done) {
    return Text('Done: \${snapshot.data}');
  }
  return CircularProgressIndicator();
}""",
    },
    "ConnectionState": {
      "description": "Indicates the connection state of an asynchronous computation (none, waiting, active, done).",
      "syntax": """if (snapshot.connectionState == ConnectionState.waiting) {
  return CircularProgressIndicator();
}""",
    },
  },
  "Assets & Images":{
    "Image": {
      "description": "A widget that displays an image. It supports various sources such as assets, files, memory, or network.",
      "syntax": """Image.asset('assets/images/logo.png')""",
    },
    "Image.asset": {
      "description": "Displays an image from the project's bundled assets.",
      "syntax": """Image.asset(
  'assets/images/picture.jpg',
  width: 200,
  height: 200,
  fit: BoxFit.cover,
)""",
    },
    "Image.network": {
      "description": "Displays an image from the internet.",
      "syntax": """Image.network(
  'https://example.com/image.png',
  loadingBuilder: (context, child, progress) {
    return progress == null ? child : CircularProgressIndicator();
  },
)""",
    },
    "Image.file": {
      "description": "Displays an image from the local file system.",
      "syntax": """Image.file(
  File('path/to/image.png'),
  width: 100,
  height: 100,
)""",
    },
    "Image.memory": {
      "description": "Displays an image from memory as a Uint8List.",
      "syntax": """Image.memory(
  bytes,
  width: 100,
  height: 100,
)""",
    },
    "FadeInImage": {
      "description": "A widget that displays a placeholder image until the target image is loaded.",
      "syntax": """FadeInImage.assetNetwork(
  placeholder: 'assets/loading.gif',
  image: 'https://example.com/image.jpg',
  width: 200,
  height: 200,
)""",
    },
    "AssetImage": {
      "description": "A provider that loads images from the asset bundle.",
      "syntax": """AssetImage('assets/images/sample.png')""",
    },
    "NetworkImage": {
      "description": "A provider that loads images from the internet.",
      "syntax": """NetworkImage('https://example.com/image.png')""",
    },
    "FileImage": {
      "description": "A provider that loads images from a file.",
      "syntax": """FileImage(File('path/to/image.jpg'))""",
    },
    "MemoryImage": {
      "description": "A provider that loads images from memory.",
      "syntax": """MemoryImage(bytes)""",
    },
  },
  "Cupertino Widgets":{
    "CupertinoApp": {
      "description": "An iOS-style application wrapper that defines the app’s structure and themes.",
      "syntax": """CupertinoApp(
  home: CupertinoPageScaffold(
    navigationBar: CupertinoNavigationBar(
      middle: Text('Home'),
    ),
    child: Center(child: Text('Hello iOS')),
  ),
);""",
    },
    "CupertinoPageScaffold": {
      "description": "An iOS-style page layout with navigation bar and content area.",
      "syntax": """CupertinoPageScaffold(
  navigationBar: CupertinoNavigationBar(
    middle: Text('Page Title'),
  ),
  child: Center(child: Text('Page Content')),
);""",
    },
    "CupertinoNavigationBar": {
      "description": "An iOS-style navigation bar with a middle title and optional leading/trailing widgets.",
      "syntax": """CupertinoNavigationBar(
  middle: Text('Cupertino App'),
);""",
    },
    "CupertinoButton": {
      "description": "An iOS-style button that responds to touches by filling with color.",
      "syntax": """CupertinoButton(
  color: CupertinoColors.activeBlue,
  child: Text('Press'),
  onPressed: () {},
);""",
    },
    "CupertinoActivityIndicator": {
      "description": "An iOS-style activity spinner.",
      "syntax": """CupertinoActivityIndicator(
  radius: 15,
);""",
    },
    "CupertinoAlertDialog": {
      "description": "An iOS-style alert dialog with title, content, and actions.",
      "syntax": """CupertinoAlertDialog(
  title: Text('Alert'),
  content: Text('This is an alert dialog'),
  actions: [
    CupertinoDialogAction(child: Text('Cancel'), onPressed: () {}),
    CupertinoDialogAction(child: Text('OK'), onPressed: () {}),
  ],
);""",
    },
    "CupertinoDialog": {
      "description": "An iOS-style dialog popup.",
      "syntax": """showCupertinoDialog(
  context: context,
  builder: (_) => CupertinoAlertDialog(
    title: Text('Notice'),
    content: Text('iOS styled alert'),
    actions: [
      CupertinoDialogAction(child: Text('Close'), onPressed: () {}),
    ],
  ),
);""",
    },
    "CupertinoPicker": {
      "description": "An iOS-style picker for selecting values by scrolling.",
      "syntax": """CupertinoPicker(
  itemExtent: 32.0,
  onSelectedItemChanged: (int index) {},
  children: List.generate(10, (i) => Text('Item \$i')),
);""",
    },
    "CupertinoDatePicker": {
      "description": "An iOS-style date picker widget.",
      "syntax": """CupertinoDatePicker(
  mode: CupertinoDatePickerMode.date,
  onDateTimeChanged: (DateTime newDate) {},
);""",
    },
    "CupertinoSlider": {
      "description": "An iOS-style slider control for selecting a value from a range.",
      "syntax": """CupertinoSlider(
  value: _value,
  min: 0.0,
  max: 100.0,
  onChanged: (double newValue) {
    setState(() => _value = newValue);
  },
);""",
    },
    "CupertinoSwitch": {
      "description": "An iOS-style switch used for toggling on/off states.",
      "syntax": """CupertinoSwitch(
  value: _switchValue,
  onChanged: (bool value) {
    setState(() => _switchValue = value);
  },
);""",
    },
    "CupertinoTextField": {
      "description": "An iOS-style text input field.",
      "syntax": """CupertinoTextField(
  placeholder: 'Enter text',
  controller: _controller,
);""",
    },
    "CupertinoTabBar": {
      "description": "An iOS-style bottom tab bar.",
      "syntax": """CupertinoTabBar(
  items: [
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: 'Home'),
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.settings), label: 'Settings'),
  ],
);""",
    },
    "CupertinoTabScaffold": {
      "description": "An iOS-style scaffold with tab bar and content area.",
      "syntax": """CupertinoTabScaffold(
  tabBar: CupertinoTabBar(
    items: [
      BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: 'Home'),
      BottomNavigationBarItem(icon: Icon(CupertinoIcons.settings), label: 'Settings'),
    ],
  ),
  tabBuilder: (context, index) {
    return CupertinoTabView(
      builder: (context) {
        return CupertinoPageScaffold(
          child: Center(child: Text('Tab \$index')),
        );
      },
    );
  },
);""",
    },
  },
  "Painting & Effects": {
    "Opacity": {
      "description": "Makes its child partially transparent.",
      "syntax": """Opacity(
  opacity: 0.5,
  child: Text('Semi-transparent'),
)""",
    },
    "Transform": {
      "description": "Applies a transformation (e.g., rotate, scale) to its child.",
      "syntax": """Transform.rotate(
  angle: math.pi / 4,
  child: Container(
    color: Colors.green,
    width: 100,
    height: 100,
  ),
)""",
    },
    "BackdropFilter": {
      "description": "Applies a filter to the existing painted content and then paints the child.",
      "syntax": """BackdropFilter(
  filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
  child: Container(
    color: Colors.black.withOpacity(0),
  ),
)""",
    },
    "ClipRRect": {
      "description": "Clips its child using a rounded rectangle.",
      "syntax": """ClipRRect(
  borderRadius: BorderRadius.circular(20),
  child: Image.asset('assets/image.png'),
)""",
    },
    "ClipOval": {
      "description": "Clips its child to a circular or oval shape.",
      "syntax": """ClipOval(
  child: Image.asset('assets/profile.jpg'),
)""",
    },
    "CustomPaint": {
      "description": "Provides a canvas on which to draw during the paint phase.",
      "syntax": """CustomPaint(
  painter: MyPainter(),
  child: Container(),
)""",
    },
    "ShaderMask": {
      "description": "Applies a shader to its child.",
      "syntax": """ShaderMask(
  shaderCallback: (Rect bounds) {
    return LinearGradient(
      colors: [Colors.red, Colors.yellow],
    ).createShader(bounds);
  },
  child: Text('Gradient Text', style: TextStyle(fontSize: 40)),
)""",
    },
  },

};

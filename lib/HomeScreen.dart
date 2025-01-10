import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeContentScreen(),
    FancyProgressScreen(title: 'Progress'),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Stats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

class HomeContentScreen extends StatelessWidget {
  final List<Map<String, dynamic>> features = [
    {
      'title': 'Workouts',
      'value': '8',
      'icon': Icons.directions_walk,
      'color': Colors.green,
      'screen': WorkoutScreen(),
    },
    {
      'title': 'Achievements',
      'value': '8',
      'icon': Icons.emoji_events,
      'color': Colors.amber,
      'screen': AchievementsScreen(),
    },
    {
      'title': 'Goals',
      'value': '8',
      'icon': Icons.flag,
      'color': Colors.red,
      'screen': GoalsScreen(),
    },
    {
      'title': 'Meal',
      'value': 'click',
      'icon': Icons.restaurant_menu,
      'color': Colors.blue,
      'screen': MealScreen(),
    },
    {
      'title': 'More Workouts',
      'value': '100+',
      'icon': Icons.access_time,
      'color': Colors.purple,
      'screen': WorkoutScreen(), // Placeholder for another screen
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello, KINZA Pro!',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                SizedBox(height: 8),
                Text(
                  'Track your daily fitness progress below.',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                itemCount: features.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  final feature = features[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => feature['screen'],
                        ),
                      );
                    },
                    child: Card(
                      color: feature['color'],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              feature['icon'],
                              size: 40,
                              color: Colors.white,
                            ),
                            SizedBox(height: 16),
                            Text(
                              feature['title'],
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 8),
                            Text(
                              feature['value'],
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//  WorkoutScreen
class WorkoutScreen extends StatelessWidget {
  final List<Map<String, String>> workouts = [
    {'title': 'Cardio Blast', 'duration': '30 mins'},
    {'title': 'Strength Training', 'duration': '45 mins'},
    {'title': 'Yoga Flow', 'duration': '20 mins'},
    {'title': 'HIIT', 'duration': '15 mins'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Workouts'),
        backgroundColor: Color(0xFF572C57),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          itemCount: workouts.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemBuilder: (context, index) {
            return Card(
              color: Color(0xFF9F5F91),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child: InkWell(
                onTap: () {
                  // Navigate to detailed workout screen
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.fitness_center, size: 40, color: Colors.white),
                      SizedBox(height: 16),
                      Text(
                        workouts[index]['title']!,
                        style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 8),
                      Text(
                        workouts[index]['duration']!,
                        style: TextStyle(fontSize: 16, color: Colors.white70),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

//goals
class GoalsScreen extends StatelessWidget {
  final List<String> goals = [
    'Lose 5 kg in 2 months',
    'Run 5 km in under 30 minutes',
    'Do 50 push-ups in a single set',
    'Attend the gym 4 days a week for 1 month',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Goals'),
        backgroundColor: Color(0xFF572C57),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: goals.length,
          itemBuilder: (context, index) {
            return Card(
              color:Color(0xFF9F5F91),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              elevation: 5,
              child: ListTile(
                leading: Icon(Icons.check_circle_outline, color: Color(0xFF572C57)),
                title: Text(
                  goals[index],
                  style: TextStyle(fontSize: 18, color: Colors.black87),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

// Achievements
class AchievementsScreen extends StatelessWidget {
  final List<Map<String, String>> achievements = [
    {'badge': '🏅', 'title': 'First Workout', 'subtitle': 'Completed your first workout!'},
    {'badge': '🔥', 'title': 'Burn 500 Calories', 'subtitle': 'You burned 500 calories in a day!'},
    {'badge': '🏋️', 'title': 'Consistent Streak', 'subtitle': 'Worked out 7 days in a row!'},
    {'badge': '⭐', 'title': 'Milestone Reached', 'subtitle': 'Achieved your first fitness goal!'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Achievements'),
        backgroundColor: Color(0xFF572C57),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: achievements.length,
          itemBuilder: (context, index) {
            return Card(
            color: Color(0xFF9F5F91), // Lavender
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              elevation: 5,
              child: ListTile(
                leading: Text(
                  achievements[index]['badge']!,
                  style: TextStyle(fontSize: 32),
                ),
                title: Text(
                  achievements[index]['title']!,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                subtitle: Text(
                  achievements[index]['subtitle']!,
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class MealScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meal Plan'),
        backgroundColor: Color(0xFF572C57),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Personalized Meal Plan',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Stay on track with your meals. Below is a curated plan for the day.',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  MealPlanCard(
                    meal: 'Breakfast',
                    description: 'Oatmeal with fruits and a glass of milk.',
                    icon: Icons.breakfast_dining,
                    color: Colors.orangeAccent,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MealDetailScreen(
                            meal: 'Breakfast',
                            items: [
								{'item': 'Scrambled Eggs', 'calories': '180 kcal', 'nutrients': 'Protein, Healthy Fats'},
								{'item': 'Whole Grain Toast', 'calories': '70 kcal', 'nutrients': 'Carbs, Fiber'},
								{'item': 'Greek Yogurt', 'calories': '100 kcal', 'nutrients': 'Protein, Probiotics'},
								{'item': 'Avocado', 'calories': '160 kcal', 'nutrients': 'Healthy Fats, Fiber'},
								{'item': 'Smoothie (Banana & Berries)', 'calories': '200 kcal', 'nutrients': 'Vitamins, Antioxidants'},
								{'item': 'Granola', 'calories': '150 kcal', 'nutrients': 'Carbs, Fiber, Healthy Fats'},
								{'item': 'Peanut Butter', 'calories': '190 kcal', 'nutrients': 'Protein, Healthy Fats'},
								{'item': 'Chia Pudding', 'calories': '120 kcal', 'nutrients': 'Omega-3, Fiber, Protein'},
								{'item': 'Pancakes (Whole Wheat)', 'calories': '200 kcal', 'nutrients': 'Carbs, Fiber'},
								{'item': 'Apple Slices with Almond Butter', 'calories': '150 kcal', 'nutrients': 'Vitamins, Healthy Fats'},
							],
                          ),
                        ),
                      );
                    },
                  ),
                  MealPlanCard(
                    meal: 'Lunch',
                    description: 'Grilled chicken with quinoa and steamed vegetables.',
                    icon: Icons.lunch_dining,
                    color: Colors.greenAccent,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MealDetailScreen(
                            meal: 'Lunch',
                            items: [
                              {'item': 'Grilled Chicken', 'calories': '250 kcal', 'nutrients': 'Protein'},
                              {'item': 'Quinoa', 'calories': '120 kcal', 'nutrients': 'Carbs, Protein'},
                              {'item': 'Steamed Vegetables', 'calories': '80 kcal', 'nutrients': 'Vitamins, Fiber'},
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  MealPlanCard(
                    meal: 'Dinner',
                    description: 'Baked salmon with sweet potatoes and salad.',
                    icon: Icons.dinner_dining,
                    color: Colors.blueAccent,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MealDetailScreen(
                            meal: 'Dinner',
                            items: [
                              {'item': 'Baked Salmon', 'calories': '300 kcal', 'nutrients': 'Protein, Omega-3'},
                              {'item': 'Sweet Potatoes', 'calories': '150 kcal', 'nutrients': 'Carbs, Fiber'},
                              {'item': 'Salad', 'calories': '50 kcal', 'nutrients': 'Vitamins, Fiber'},
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  MealPlanCard(
                    meal: 'Snacks',
                    description: 'A handful of mixed nuts and an apple.',
                    icon: Icons.fastfood,
                    color: Colors.pinkAccent,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MealDetailScreen(
                            meal: 'Snacks',
                            items: [
                              {'item': 'Mixed Nuts', 'calories': '200 kcal', 'nutrients': 'Healthy Fats, Protein'},
                              {'item': 'Apple', 'calories': '95 kcal', 'nutrients': 'Vitamins, Fiber'},
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MealPlanCard extends StatelessWidget {
  final String meal;
  final String description;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const MealPlanCard({
    required this.meal,
    required this.description,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        onTap: onTap,
        leading: Icon(icon, color: color),
        title: Text(
          meal,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(description),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}

class MealDetailScreen extends StatelessWidget {
  final String meal;
  final List<Map<String, String>> items;

  const MealDetailScreen({
    required this.meal,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$meal Details'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$meal Items',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    child: ListTile(
                      title: Text(item['item']!),
                      subtitle: Text('Calories: ${item['calories']} \nNutrients: ${item['nutrients']}'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final TextEditingController goalController = TextEditingController();
  String? selectedGender;

  final List<String> genders = ['Male', 'Female', 'Other'];

  SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'User Information',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: locationController,
              decoration: InputDecoration(
                labelText: 'Location',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: weightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Weight (kg)',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: heightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Height (cm)',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: goalController,
              decoration: InputDecoration(
                labelText: 'Fitness Goal',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            DropdownButtonFormField<String>(
              value: selectedGender,
              items: genders
                  .map((gender) => DropdownMenuItem<String>(
                        value: gender,
                        child: Text(gender),
                      ))
                  .toList(),
              onChanged: (value) {
                selectedGender = value;
              },
              decoration: InputDecoration(
                labelText: 'Gender',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Save user information
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Profile information saved!')),
                );
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}


class FitnessStatCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final Color color;

  const FitnessStatCard({
    required this.title,
    required this.value,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Color(0xFF9F5F91),
          child: Icon(icon, color: Colors.white),
        ),
        title: Text(title),
        subtitle: Text(value, style: TextStyle(fontSize: 18)),
      ),
    );
  }
}




class FancyProgressScreen extends StatelessWidget {
  final String title;

  const FancyProgressScreen({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Progress',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 24),
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    child: CircularProgressIndicator(
                      value: 0.75, // Example progress value (75%)
                      strokeWidth: 12,
                      backgroundColor: Colors.grey[300],
                      valueColor: AlwaysStoppedAnimation<Color>(
                          Colors.blueAccent),
                    ),
                  ),
                  Text(
                    '75%',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            Text(
              'Detailed Progress',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            _buildProgressBar(
              title: 'Steps Completed',
              value: 0.8,
              color: Colors.green,
              percentage: '80%',
            ),
            _buildProgressBar(
              title: 'Calories Burned',
              value: 0.6,
              color: Colors.orange,
              percentage: '60%',
            ),
            _buildProgressBar(
              title: 'Workout Time',
              value: 0.5,
              color: Colors.red,
              percentage: '50%',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProgressBar({
    required String title,
    required double value,
    required Color color,
    required String percentage,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: LinearProgressIndicator(
                value: value,
                backgroundColor: Colors.grey[300],
                valueColor: AlwaysStoppedAnimation<Color>(color),
              ),
            ),
            SizedBox(width: 8),
            Text(
              percentage,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(height: 16),
      ],
    );
  }
}


import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

    final List<Map<String, dynamic>> academic_data = [
  {'title': 'Students', 'icon': Icons.person_4},
  {'title': 'Teachers', 'icon': Icons.person_2},
  {'title': 'Attendance', 'icon': Icons.menu_book_sharp},
  {'title': 'Syallabus', 'icon': Icons.menu_book},
  {'title': 'Time Table', 'icon': Icons.timer},
  {'title': 'Assignments', 'icon': Icons.assignment_add},
  {'title': 'Exams', 'icon': Icons.assignment_outlined},
];



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding
      (
        padding: const EdgeInsets.all(25),
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              const  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hello',
                    
                    
                    ),
                    Text('Michale Smith',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ],
                ),
                
                IconButton(onPressed: () {
                 
                }, icon:const Icon(Icons.notifications_none)),
                
              ],
            ),
        
             const SizedBox(height: 16), // Spacing
        
              // Search Bar
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: const Icon(Icons.search),
                  border:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide:  BorderSide(color: Colors.grey),
                  ),
                  
                ),
              ),

              const SizedBox(height: 15,),

             const Text('Academic',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              ),

              const SizedBox(height: 8,),

              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, 
                    crossAxisSpacing: 10, 
                    mainAxisSpacing: 10, 
                    ),
                  itemCount: academic_data.length, 
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () {
                        
                      },
                
                    child: Card(
                      color: Colors.grey[400],
                      
                        child: Column(
                          children: [
                            Icon(academic_data[index]['icon'], size: 45),
                            const SizedBox(height: 5,),
                            Text(academic_data[index]['title']),
                          ],
                        ),
                      ),
                
                  );
                
                
                
                }
                
                
                ),
              )
          ],
        ),
      ),
    );
  }
}
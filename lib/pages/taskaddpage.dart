import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; 
import '../providers/task_provider.dart';
class TaskAddPage extends StatefulWidget {
  const TaskAddPage({super.key});

  @override
  State<TaskAddPage> createState() => _TaskAddPageState();
}

class _TaskAddPageState extends State<TaskAddPage> {

  final TextEditingController _controller = TextEditingController();
   
 
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TaskProvider>(context); 
    final taches = provider.taches; 
    return  Scaffold( 
      appBar: AppBar(title: Text('Mes Tâches')), 
      body: Column( 
        children: [ 
          Padding( 
            padding: EdgeInsets.all(12), 
            child: TextField( 
              controller: _controller, 
              decoration: InputDecoration( 
                labelText: 'Nouvelle tâche', 
                suffixIcon: IconButton( 
                  icon: Icon(Icons.add), 
                  onPressed: () { 
                    if (_controller.text.isNotEmpty) { 
                      provider.ajouterTache(_controller.text); 
                      _controller.clear(); 
                    } 
                  }, 
                ), 
              ), 
            ), 
          ), 
          Expanded( 
            child: ListView.builder( 
              itemCount: taches.length, 
              itemBuilder: (context, index) { 
                final t = taches[index]; 
                return ListTile( 
                  title: Text( 
                    t.titre, 
                    style: TextStyle( 
                      decoration: t.estTerminee ? 
TextDecoration.lineThrough : null, 
                    ), 
                  ), 
                  leading: Checkbox( 
                    value: t.estTerminee, 
                    onChanged: (_) => 
provider.basculerEtatTache(t), 
                  ), 
                  trailing: IconButton( 
                    icon: Icon(Icons.delete), 
                    onPressed: () => provider.supprimerTache(t), 
                  ), 
                ); 
              }, 
            ), 
          ), 
], 
), 
); 
} 
} 
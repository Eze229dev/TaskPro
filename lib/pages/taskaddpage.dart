import 'package:flutter/material.dart';
class TaskAddPage extends StatefulWidget {
  const TaskAddPage({super.key});

  @override
  State<TaskAddPage> createState() => _TaskAddPageState();
}

class _TaskAddPageState extends State<TaskAddPage> {

  final TextEditingController _controller = TextEditingController();
   List<String> taches = []; 
 
  void ajouterTache() { 
    final texte = _controller.text; 
    if (texte.isNotEmpty) { 
      setState(() { 
        taches.add(texte); 
        _controller.clear(); // On vide le champ 
      }); 
    } 
  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Task"),
      ),
      body:  Padding( 
      padding: const EdgeInsets.all(16.0), 
      child: Column( 
        children: [ 
          TextField( 
            controller: _controller, 
            decoration: InputDecoration( 
              labelText: 'Entrez le title de la tâche', 
              border: OutlineInputBorder(), 
            ), 
          ), 
          SizedBox(height: 12),
           TextField( 
            
            decoration: InputDecoration( 
              labelText: 'Entrez la description(facultatif)', 
              border: OutlineInputBorder(), 
            ), 
          ), 
          SizedBox(height:20 ), 
        ElevatedButton(onPressed:ajouterTache,
        child: Text("Ajouter la tâche")),
                SizedBox(height: 20), 
          ...taches.map((tache) => ListTile(title: 
Text(tache))), 
ElevatedButton(onPressed:(){
  Navigator.pop(context);

} ,
child: Text("Retour à l'accueil"))
         
 
        ], 
      ), 
    ),
   
      

        
      );
  }
}
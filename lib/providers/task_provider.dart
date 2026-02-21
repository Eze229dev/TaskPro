
import 'package:flutter/material.dart';
class Task { 
final String titre; 
  bool estTerminee; 
 
  Task({required this.titre, this.estTerminee = false}); 
} 
 
class TaskProvider extends ChangeNotifier { 
  List<Task>taches = []; 
 
  List<Task> get tachesList => taches; 
 
  void ajouterTache(String titre) { 
    taches.add(Task(titre: titre)); 
    notifyListeners(); 
  } 
 
  void supprimerTache(Task tache) { 
    taches.remove(tache); 
    notifyListeners(); 
  } 
 
  void basculerEtatTache(Task tache) { 
    tache.estTerminee = !tache.estTerminee; 
    notifyListeners(); 
  } 
} 
 
 
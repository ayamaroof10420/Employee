import 'supervisor.dart';
class Employee {
  int id;
  String name;
  DateTime checkintime;
  Supervisor? supervisor;
  

  Employee({required this.id,required this.name,required this.checkintime,this.supervisor});

  void displayinfo(){
    print("Employee ID:$id");
    print("Name:$name");
    print("Checkin:$checkintime");
    if (supervisor!=null){
      print("supervisor:${supervisor!.name}");
    }
  }
}
import 'employee.dart';

class Supervisor {
  int id;
  String name;
  DateTime checkintime;
  List<Employee> team=[];

  Supervisor({required this.id,required this.name,required this.checkintime});
  void addEmplyee(Employee employee){
    employee.supervisor=this;
    team.add(employee);
    print("Employee ${employee.name} assigned to supervisor $name");
  }
    void displayTeam() {
      print("supervisor:$name (ID:$id)");
      print("checkin:$checkintime");
      if (team.isEmpty) {
        print("no employees assigned");
      }else{
        print("Team members:");
        for (var employee in team){
          employee.displayinfo();
        }
      }
    
  }
}
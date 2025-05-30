import '../models/employee.dart';
import '../models/supervisor.dart';

class EmployeeSystem{
  List<Employee>employees=[];
  List<Supervisor>supervisors=[];

  void regEmplyee(Employee emp){
  employees.add(emp);
  print("Employee ${emp.name} added to the system");}

  void addsupervisor(Supervisor sup){
    supervisors.add(sup);
    print("Supervisor ${sup.name} added to the system");

  }
  displayalldata(){
    print("all employee");
    for (var emp in employees){
      emp.displayinfo();
    }
    print(" all supervisor and thier teams:");
    for (var sup in supervisors){
      sup.displayTeam();
    }
  }

}
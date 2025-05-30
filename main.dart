import 'models/employee.dart';
import 'models/supervisor.dart';
import 'system/emp_system.dart';

void main(){
  var system =EmployeeSystem();
  var sup1=Supervisor(id: 1, name: "aya", checkintime: DateTime.now());

  var emp1=Employee(id: 2, name: "sara", checkintime: DateTime.now());
  var emp2=Employee(id: 3, name: "mera", checkintime: DateTime.now());
  
  system.addsupervisor(sup1);
  system.regEmplyee(emp1);
  
  sup1.addEmplyee(emp2);

  system.displayalldata();
  
}
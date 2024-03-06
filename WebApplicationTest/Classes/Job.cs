
using System.Collections.Generic;

namespace WebApplicationTest
{
    public class Job
    {
        private string Name;
        private int Desiredhours;
        private string Department; 
        private List<Supervisor> SupervisorList;

        public  Job(string JobName, int theDesiredHours, string DepartmentName, List<Supervisor>theSupervisorList)
        {
            Name = JobName;
            Desiredhours = theDesiredHours;
            Department = DepartmentName;
            SupervisorList = theSupervisorList;
          
        }
        public string getJobName()
        {
            return Name;
        }
        public int getDesiredHours()
        {
            return Desiredhours;
        }
        public string getDepartmentName()
        {
            return Department;
        }
        public List<Supervisor> getSupervisorList() 
        {
            return SupervisorList;
        }

    }
}
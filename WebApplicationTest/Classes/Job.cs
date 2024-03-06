
namespace WebApplicationTest
{
    public class Job
    {
        private string Name;
        private int Desiredhours;
        private string Department;

        public  Job(string JobName, int theDesiredHours, string DepartmentName)
        {
            Name = JobName;
            Desiredhours = theDesiredHours;
            Department = DepartmentName;
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
    }
}
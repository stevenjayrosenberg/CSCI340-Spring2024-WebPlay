using System;

namespace WebApplicationTest
{
    public class Supervisor : User
    {
        public Supervisor(String SupName, String SupEmail, String SupEmployeeId) : 
            base(SupName, SupEmail, SupEmployeeId)
        { }
        override
        public String getStudentID()
        {
            return null;
        }
    }
}
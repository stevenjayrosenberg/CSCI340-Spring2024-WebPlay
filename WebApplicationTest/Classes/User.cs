using System;

namespace WebApplicationTest
{
    public abstract class User
    {
        private String employeeID;
        private String name;
        private String email;

        public User(String theName, String theEmail, String theEmployeeId)
        {
            name = theName;
            email = theEmail;
            employeeID = theEmployeeId;
        }

        public String getName()
        {
            return name;
        }
        public String getEmail()
        {
            return email;
        }
        public String getEmployeeID()
        {
            return employeeID;
        }

        abstract public String getStudentID();
    }
}
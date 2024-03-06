using System;

namespace WebApplicationTest
{
    public class Administrator : User
    {
        public Administrator(String AdminName, String AdminEmail, String AdminEmployeeId) :
            base(AdminName, AdminEmail, AdminEmployeeId)
        { }
        override
    }
}
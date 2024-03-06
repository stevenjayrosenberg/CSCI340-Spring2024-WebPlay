namespace WebApplicationTest
{
    public class SE : User
    {
        private string StudentID;
        private bool isInternational;

        public SE(string seName, string seEmail, string seEmployeeId, string theStudentId, bool isInt) 
            : base(seName, seEmail, seEmployeeId)
        {
            isInternational = isInt;
            StudentID = theStudentId;
        }

        override
        public string getStudentID()
        {
            return StudentID;
        }
    }
}
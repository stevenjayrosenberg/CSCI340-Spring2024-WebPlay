<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplicationTest.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %></h2>
        <h3>Student Employee Scheduler (SES) System.</h3>
        <p> 
            The SES System ensures effective communication and coordination among key stakeholders such as the Student Employment Office, the SEs
            themselves, and their respective supervisors or employers, regarding the SE work schedules.The application provides the SE with detailed 
            information on how their various schedules intersect, as well as allowing them to modify their available times at will, and request unpaid             time-off. Additionally, the application gives the supervisors the ability to view and edit work schedules of SEs.
        </p>
    </main>
</asp:Content>

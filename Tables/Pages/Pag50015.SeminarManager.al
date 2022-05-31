page 50015 "Seminar Manager"
{
    Caption = 'Seminar Manager';
    PageType = RoleCenter;
    RefreshOnActivate = false;


    actions
    {
        area(Sections)
        {
            group(Lists)
            {
                Caption = 'Lists';
                action(Szkolenia)
                {
                    ApplicationArea = All;
                    RunObject = page "Seminar List";
                    RunPageMode = View;
                }
                action(Instruktorzy)
                {
                    ApplicationArea = All;
                    RunObject = page Instructors;
                    RunPageMode = View;
                }
                action("Sale szkoleniowe")
                {
                    ApplicationArea = All;
                    RunObject = page "Seminar Room List";
                    RunPageMode = View;
                }
                action("Rejestracja szkolenia")
                {
                    ApplicationArea = All;
                    RunObject = page "Seminar Registration List";
                    RunPageMode = View;
                }
            }
            group(Tasks)
            {
                Caption = 'Tasks';
                action("Eksport uczestników szkolenia")
                {
                    ApplicationArea = All;
                    RunObject = xmlport "Seminar Participants Exp XML";
                }
            }
            group(Reports)
            {
                Caption = 'Reports';
                action("Lista uczestników szkolenia")
                {
                    ApplicationArea = All;
                    RunObject = report "Seminar Participant List";
                }
                action("Zestawienie szkoleń")
                {
                    ApplicationArea = All;
                    RunObject = report "Seminar List";
                }
            }
        }
    }

}

profile "Seminar Manager"
{
    Caption = 'Seminar Manager';
    RoleCenter = "Seminar Manager";
}

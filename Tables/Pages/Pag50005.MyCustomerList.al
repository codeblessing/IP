page 50005 "My Customer List"
{
    Caption = 'My Customer List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = "My Customer Table";
    CardPageId = "My Customer Card";
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(Repeater1)
            {
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }
                field(Name; Name)
                {
                    ApplicationArea = All;
                }
                field(Address; Address)
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field(City; City)
                {
                    ApplicationArea = All;
                }
                field("Currency Code"; "Currency Code")
                {
                    ApplicationArea = All;
                }
                field("Phone No."; "Phone No.")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
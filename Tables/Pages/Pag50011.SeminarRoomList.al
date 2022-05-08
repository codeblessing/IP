page 50011 "Seminar Room List"
{
    ApplicationArea = All;
    Caption = 'Seminar Room List';
    PageType = List;
    SourceTable = "Seminar Room";
    UsageCategory = Lists;
    Editable = false;
    CardPageId = "Seminar Room Card";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    ToolTip = 'Specifies the value of the Code field.';
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                    ApplicationArea = All;
                }
                field(Address; Rec.Address)
                {
                    ToolTip = 'Specifies the value of the Address field.';
                    ApplicationArea = All;
                }
                field(City; Rec.City)
                {
                    ToolTip = 'Specifies the value of the City field.';
                    ApplicationArea = All;
                }
                field("Post Code"; Rec."Post Code")
                {
                    ToolTip = 'Specifies the value of the Post Code field.';
                    ApplicationArea = All;
                }
                field("Country/Region Code"; Rec."Country/Region Code")
                {
                    ToolTip = 'Specifies the value of the Country/Region Code field.';
                    ApplicationArea = All;
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ToolTip = 'Specifies the value of the Phone No. field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}

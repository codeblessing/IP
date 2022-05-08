page 50008 "Seminar List"
{
    ApplicationArea = All;
    Caption = 'Seminar List';
    PageType = List;
    SourceTable = Seminar;
    UsageCategory = Lists;
    CardPageId = "Seminar Card";
    Editable = false;

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
                field("Seminar Duration"; Rec."Seminar Duration")
                {
                    ToolTip = 'Specifies the value of the Seminar Duration field.';
                    ApplicationArea = All;
                }
                field("Search Name"; Rec."Search Name")
                {
                    ToolTip = 'Specifies the value of the Search Name field.';
                    ApplicationArea = All;
                }
                field("Minimum Participants"; Rec."Minimum Participants")
                {
                    ToolTip = 'Specifies the value of the Minimum Participants field.';
                    ApplicationArea = All;
                }
                field("Maximum Participants"; Rec."Maximum Participants")
                {
                    ToolTip = 'Specifies the value of the Maximum Participants field.';
                    ApplicationArea = All;
                }
                field(Blocked; Rec.Blocked)
                {
                    ToolTip = 'Specifies the value of the Blocked field.';
                    ApplicationArea = All;
                }
                field("Seminar Price"; Rec."Seminar Price")
                {
                    ToolTip = 'Specifies the value of the Seminar Price field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}

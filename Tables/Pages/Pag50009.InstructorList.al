page 50009 Instructors
{
    ApplicationArea = All;
    Caption = 'Instructors';
    PageType = List;
    SourceTable = Instructor;
    UsageCategory = Lists;

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
                field("Worker/Subcontractor"; Rec."Worker/Subcontractor")
                {
                    ToolTip = 'Specifies the value of the Worker/Subcontractor field.';
                    ApplicationArea = All;
                }
                field("Resource No."; Rec."Resource No.")
                {
                    ToolTip = 'Specifies the value of the Resource No. field.';
                    ApplicationArea = All;
                }
                field("Vendor No."; Rec."Vendor No.")
                {
                    ToolTip = 'Specifies the value of the Vendor No. field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}

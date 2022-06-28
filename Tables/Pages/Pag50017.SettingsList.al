page 50017 "Settings List"
{
    ApplicationArea = All;
    Caption = 'Settings List';
    PageType = Card;
    SourceTable = "Settings Table";
    UsageCategory = Documents;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Journal Template"; Rec."Journal Template")
                {
                    ToolTip = 'Specifies the value of the Journal Template field.';
                    ApplicationArea = All;
                }
                field(Instance; Rec.Instance)
                {
                    ToolTip = 'Specifies the value of the Instance field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}

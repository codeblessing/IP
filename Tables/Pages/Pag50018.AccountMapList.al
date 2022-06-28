page 50018 AccountMapList
{
    ApplicationArea = All;
    Caption = 'AccountMapList';
    PageType = List;
    SourceTable = AccountMapSettings;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                Caption = 'General';
                field("No. (Symfonia)"; Rec."No. (Symfonia)")
                {
                    ToolTip = 'Specifies the value of the No. (Symfonia) field.';
                    ApplicationArea = All;
                }
                field("No. (BC)"; Rec."No. (BC)")
                {
                    ToolTip = 'Specifies the value of the No. (BC) field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}

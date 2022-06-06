page 50012 "Seminar Registration SubPage"
{
    Caption = 'Seminar Registration';
    PageType = ListPart;
    SourceTable = "Seminar Registration Line";
    //DelayedInsert = true;
    AutoSplitKey = true;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Bill-to Customer No."; Rec."Bill-to Customer No.")
                {
                    ToolTip = 'Specifies the value of the Bill-to Customer No. field.';
                    ApplicationArea = All;
                }
                field("Participant Contact No."; Rec."Participant Contact No.")
                {
                    ToolTip = 'Specifies the value of the Participant Contact No. field.';
                    ApplicationArea = All;
                }
                field("Participant Name"; Rec."Participant Name")
                {
                    ToolTip = 'Specifies the value of the Participant Name field.';
                    ApplicationArea = All;
                }
                field("Register Date"; Rec."Register Date")
                {
                    ToolTip = 'Specifies the value of the Register Date field.';
                    ApplicationArea = All;
                }
                field("Confirmation Date"; Rec."Confirmation Date")
                {
                    ToolTip = 'Specifies the value of the Confirmation Date field.';
                    ApplicationArea = All;
                }
                field("Seminar Price"; Rec."Seminar Price")
                {
                    ToolTip = 'Specifies the value of the Seminar Price field.';
                    ApplicationArea = All;
                }
                field("Line Discount %"; Rec."Line Discount %")
                {
                    ToolTip = 'Specifies the value of the Line Discount % field.';
                    ApplicationArea = All;
                }
                field("Line Discount Amount"; Rec."Line Discount Amount")
                {
                    ToolTip = 'Specifies the value of the Line Discount Amount field.';
                    ApplicationArea = All;
                }
                field(Amount; Rec.Amount)
                {
                    ToolTip = 'Specifies the value of the Amount field.';
                    ApplicationArea = All;
                }
                field("To Invoice"; Rec."To Invoice")
                {
                    ToolTip = 'Specifies the value of the To Invoice field.';
                    ApplicationArea = All;
                }
                field("Invoice No."; Rec."Invoice No.")
                {
                    ToolTip = 'Specifies the value of the Invoice No. field.';
                    ApplicationArea = All;
                }
                field(Participated; Rec.Participated)
                {
                    ToolTip = 'Specifies the value of the Participated field.';
                    ApplicationArea = All;
                }
                field(Registered; Rec.Registered)
                {
                    ToolTip = 'Specifies the value of the Registered field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}

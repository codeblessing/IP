page 50003 "Test Page"
{
    Caption = 'Test Page';
    //PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = Item;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("No."; "No.")
                {
                    ApplicationArea = All;

                }
            }
            group(Details)
            {
                Caption = 'Details';
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
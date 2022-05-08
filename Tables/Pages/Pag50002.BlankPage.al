page 50002 BlankPage
{
    //PageType = Card;
    Caption = 'Blank Page';
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = Customer;

    layout
    {
        area(Content)
        {
            field(Name; Name)
            {
                ApplicationArea = All;
            }
            field("Print Statements"; "Print Statements")
            {
                ApplicationArea = All;
            }
            repeater(Repeater1)
            {
                field(Name2; Name)
                {
                    ApplicationArea = All;
                }
                field(Address; Address)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {

    }

    var
        myInt: Integer;
}
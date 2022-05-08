page 50004 "My Customer Card"
{
    Caption = 'My Customer Card';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = "My Customer Table";

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
                field(Name; Name)
                {
                    ApplicationArea = All;

                }
                field(Address; Address)
                {
                    ApplicationArea = All;

                }
                field(City; City)
                {
                    ApplicationArea = All;
                }
            }
            group(Other)
            {
                Caption = 'Other';
                field("Currency Code"; "Currency code")
                {
                    ApplicationArea = All;
                }
                field("Phone No."; "Phone No.")
                {
                    ApplicationArea = All;
                }
            }

            part(Comments; "My Customer Comment Subpage")
            {
                Caption = 'Comments';
                SubPageLink = "My Customer No." = field("No.");
            }

        }
    }

    actions
    {
        area(Processing)
        {
            action("Show Company Name")
            {
                ApplicationArea = All;
                Caption = 'Show Company Name';
                Image = SNInfo;

                trigger OnAction()
                begin
                    Message(CompanyName());
                end;
            }
        }
        area(Navigation)
        {
            action(Items)
            {
                ApplicationArea = All;
                Caption = 'Items';
                Image = Item;
                RunObject = page "Item List";

                trigger OnAction()
                begin
                end;
            }
        }
    }

}
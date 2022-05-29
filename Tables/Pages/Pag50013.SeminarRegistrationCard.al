page 50013 "Seminar Registration Card"
{
    Caption = 'Seminar Registration';
    PageType = Card;
    SourceTable = "Seminar Registration Header";
    UsageCategory = Documents;

    layout
    {
        area(content)
        {
            group("General")
            {
                Caption = 'General';
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.';
                    ApplicationArea = All;
                }
                field("Starting Date"; Rec."Starting Date")
                {
                    ToolTip = 'Specifies the value of the Starting Date field.';
                    ApplicationArea = All;
                }
                field("Seminar Code"; Rec."Seminar Code")
                {
                    ToolTip = 'Specifies the value of the Seminar Code field.';
                    ApplicationArea = All;
                }
                field("Seminar Name"; Rec."Seminar Name")
                {
                    ToolTip = 'Specifies the value of the Seminar Name field.';
                    ApplicationArea = All;
                }
                field("Instructor Code"; Rec."Instructor Code")
                {
                    ToolTip = 'Specifies the value of the Instructor Code field.';
                    ApplicationArea = All;
                }
                field("Instructor Name"; Rec."Instructor Name")
                {
                    ToolTip = 'Specifies the value of the Instructor Name field.';
                    ApplicationArea = All;
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ToolTip = 'Specifies the value of the Posting Date field.';
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ToolTip = 'Specifies the value of the Status field.';
                    ApplicationArea = All;
                }
                field("Seminar Duration"; Rec."Seminar Duration")
                {
                    ToolTip = 'Specifies the value of the Seminar Duration field.';
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
                field("Seminar Price"; Rec."Seminar Price")
                {
                    ToolTip = 'Specifies the value of the Seminar Price field.';
                    ApplicationArea = All;
                }
                field(Amount; Rec.Amount)
                {
                    ToolTip = 'Specifies the value of the Amount field.';
                    ApplicationArea = All;
                }

            }
            group("Seminar Room")
            {
                Caption = 'Seminar Room';
                field("Seminar Room Code"; Rec."Seminar Room Code")
                {
                    ToolTip = 'Specifies the value of the Seminar Room Code field.';
                    ApplicationArea = All;
                }
                field("Seminar Room Name"; Rec."Seminar Room Name")
                {
                    ToolTip = 'Specifies the value of the Seminar Room Name field.';
                    ApplicationArea = All;
                }
                field("Seminar Room Address"; Rec."Seminar Room Address")
                {
                    ToolTip = 'Specifies the value of the Seminar Room Address field.';
                    ApplicationArea = All;
                }
                field("Seminar Room Address 2"; Rec."Seminar Room Address 2")
                {
                    ToolTip = 'Specifies the value of the Seminar Room Address 2 field.';
                    ApplicationArea = All;
                }
                field("Seminar Room Post Code"; Rec."Seminar Room Post Code")
                {
                    ToolTip = 'Specifies the value of the Seminar Room Post Code field.';
                    ApplicationArea = All;
                }
                field("Seminar Room City"; Rec."Seminar Room City")
                {
                    ToolTip = 'Specifies the value of the Seminar Room City field.';
                    ApplicationArea = All;
                }
                field("Seminar Room Phone No."; Rec."Seminar Room Phone No.")
                {
                    ToolTip = 'Specifies the value of the Seminar Room Phone No field.';
                    ApplicationArea = All;
                }
            }
            part("Customers"; "Seminar Registration SubPage")
            {
                Caption = 'Customers';
                SubPageLink = "Seminar Registration No." = field("No.");
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("Create invoice.")
            {
                Caption = 'Create sale invoice.';
                ApplicationArea = All;

                trigger OnAction()
                var
                    Invoice: Codeunit "Seminar Management";
                    Header: Record "Seminar Registration Header";
                begin
                    Header.Get("No.");
                    Invoice.CreateSalesInvoice(Header);
                end;
            }
        }
    }

}

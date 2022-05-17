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
    actions
    {
        area(Processing)
        {
            action("Export G/L Account to XML")
            {
                Caption = 'Export G/L Account to XML';
                ApplicationArea = All;
                Image = XMLFile;

                trigger OnAction()
                begin
                    Xmlport.Run(Xmlport::"G/L Account Export XML");
                end;
            }

            action("Import Vehicles from XML")
            {
                Caption = 'Import Vehicles from XML';
                ApplicationArea = All;
                Image = XMLFile;
                trigger OnAction()
                begin
                    Xmlport.Run(Xmlport::"Vehicle Import XML");
                end;

            }

            action("Export G/L Account Fixed")
            {
                Caption = 'Export G/L Account Fixed';
                ApplicationArea = All;
                Image = XMLFile;

                trigger OnAction()
                begin
                    Xmlport.Run(Xmlport::"G/L Account Export Fixed");
                end;
            }

            action("Export G/L Account Variable")
            {
                Caption = 'Export G/L Account Variable';
                ApplicationArea = All;
                Image = XMLFile;

                trigger OnAction()
                begin
                    Xmlport.Run(Xmlport::"G/L Account Export Variable");
                end;
            }

            action("Import Vehicles Fixed")
            {
                Caption = 'Import Vehicles Fixed';
                ApplicationArea = All;
                Image = XMLFile;
                trigger OnAction()
                begin
                    Xmlport.Run(Xmlport::"Vehicle Import Variable");
                end;

            }
        }
    }
}
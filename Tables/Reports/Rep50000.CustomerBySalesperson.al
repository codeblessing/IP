report 50000 "Customer by Salesperson"
{
    Caption = 'Customer by Salesperson';
    RDLCLayout = 'Layouts\CustomerBySalesperson.rdl';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    UseSystemPrinter = true;


    dataset
    {

        dataitem("Salesperson/Purchaser"; "Salesperson/Purchaser")
        {
            PrintOnlyIfDetail = true;
            RequestFilterFields = Code, Name;
            RequestFilterHeading = 'Salesperson';
            column(SalPurCode; Code)
            {
                IncludeCaption = true;
            }
            column(SalPurName; Name)
            {
                IncludeCaption = true;
            }
            dataitem(Customer; Customer)
            {
                DataItemLink = "Salesperson Code" = field(Code);
                DataItemTableView = sorting("No.");
                RequestFilterFields = "No.";

                column(CustNo; Customer."No.")
                {
                    IncludeCaption = true;
                }
                column(CustName; Customer.Name)
                {
                    IncludeCaption = true;
                }
                column(CustAddress; Customer.Address)
                {
                    IncludeCaption = true;
                }
                column(CustCity; Customer.City)
                {
                    IncludeCaption = true;
                }
                column(ShowDetails; ShowDetails)
                {

                }
            }
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                field("Show details"; ShowDetails)
                {
                    Caption = 'Show Details';
                    ApplicationArea = All;

                }

            }
        }

        actions
        {

        }
    }
    var
        ShowDetails: Boolean;


}
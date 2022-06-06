report 50011 "Seminar List"
{
    Caption = 'Seminar List';
    DefaultLayout = RDLC;
    RDLCLayout = 'Layouts\SeminarList.rdl';
    ApplicationArea = All;
    UsageCategory = ReportsAndAnalysis;
    UseSystemPrinter = true;

    dataset
    {
        dataitem("Seminar Registration Header"; "Seminar Registration Header")
        {
            DataItemTableView = sorting("No.");
            RequestFilterFields = "Starting Date", "Seminar Code", Status;
            PrintOnlyIfDetail = true;
            column(No_SeminarRegistrationHeader; "No.")
            {
                IncludeCaption = true;
            }
            column(StartingDate_SeminarRegistrationHeader; "Starting Date")
            {
                IncludeCaption = true;
            }
            column(SeminarCode_SeminarRegistrationHeader; "Seminar Code")
            {
                IncludeCaption = true;
            }
            column(SeminarName_SeminarRegistrationHeader; "Seminar Name")
            {
                IncludeCaption = true;
            }
            column(CompanyName; CompanyName())
            {

            }
            column(Amount_SeminarRegistrationHeader; "Seminar Registration Header".Amount)
            {
                IncludeCaption = true;
            }
            dataitem("Seminar Registration Line"; "Seminar Registration Line")
            {
                CalcFields = "Participant Name";
                DataItemLink = "Seminar Registration No." = field("No.");
                DataItemTableView = sorting("Seminar Registration No.");
                column(ParticipantName_SeminarRegistrationLine; "Participant Name")
                {
                    IncludeCaption = true;
                }
                column(ParticipantContactNo_SeminarRegistrationLine; "Participant Contact No.")
                {
                    IncludeCaption = true;
                }
                column(ToInvoice__SeminarRegistrationLine; "To Invoice")
                {
                    IncludeCaption = true;
                }
                column(Participated_SeminarRegistrationLine; Participated)
                {
                    IncludeCaption = true;
                }
                column(SeminarPrice_SeminarRegistrationLine; "Seminar Price")
                {
                    IncludeCaption = true;
                }
                column(LineDiscount_SeminarRegistrationLine; "Line Discount %")
                {
                    IncludeCaption = true;
                }
                column(Amount_SeminarRegistrationLine; Amount)
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
    }
    labels
    {
        AmountLbl = 'Amount';
        TitleLbl = 'Seminar List';
        PageLbl = 'Page';
        TrueLbl = 'Yes';

        FalseLbl = 'No';
    }

    var
        ShowDetails: Boolean;
}

table 50002 "My Customer Table"
{
    DataCaptionFields = "No.", "Name";
    LookupPageId = "My Customer List";
    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(3; Address; Text[50])
        {
            Caption = 'Address';
        }
        field(4; City; Text[30])
        {
            Caption = 'City';
        }
        field(5; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(6; "Phone No."; Text[30])
        {
            Caption = 'Phone No.';
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

}
Table 50050 "Seminar Registration Line"
{
    
    fields
    {
        field(1; "Seminar Registration No."; Code[20])
        {
            Caption = 'Seminar Registration No.';
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "Bill-to Customer No."; Code[20])
        {
            Caption = 'Bill-to Customer No.';
        }
        field(4; "Participant Contact No."; Code[20])
        {
            Caption = 'Participant Contact No.';
        }
        field(5; "Participant Name"; Text[100])
        {
            Caption = 'Participant Name';
        }
        field(6; "Register Date"; Date)
        {
            Caption = 'Register Date';
        }
        field(7; "To Invoice"; Boolean)
        {
            Caption = 'To Invoice';
        }
        field(8; Participated; Boolean)
        {
            Caption = 'Participated';
        }
        field(9; "Confirmation Date"; Date)
        {
            Caption = 'Confirmation Date';
        }
        field(10; "Seminar Price"; Decimal)
        {
            Caption = 'Seminar Price';
        }
        field(11; "Line Discount %"; Decimal)
        {
            Caption = 'Line Discount %';
        }
        field(12; "Line Discount Amount"; Decimal)
        {
            Caption = 'Line Discount Amount';
        }
        field(13; Amount; Decimal)
        {
            Caption = 'Amount';
        }
        field(14; Registered; Boolean)
        {
            Caption = 'Registered';
        }
        field(15; "Invoice No."; Code[20])
        {
            Caption = 'Invoice No.';
        }
    }

    keys
    {
        key(Key1; "Seminar Registration No.", "Line No.")
        {
            Clustered = true;
            SumIndexFields = Amount;
        }
    }
}
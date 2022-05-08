table 50003 "My Customer Comment"
{


    fields
    {
        field(1; "My Customer No."; Code[20])
        {
            Caption = 'My Customer No.';

        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; Comment; Text[250])
        {
            Caption = 'Comment';
        }
    }

    keys
    {
        key(PK; "My Customer No.", "Line No.")
        {
            Clustered = true;
        }
    }


}
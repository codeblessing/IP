Table 50020 "Instructor"
{
    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(2; Name; Text[100])
        {
            Caption = 'Name';
        }
        field(3; "Worker/Subcontractor"; Text[250])
        {
            Caption = 'Worker/Subcontractor';
        }
        field(4; "Resource No."; Code[20])
        {
            Caption = 'Resource No.';
        }
        field(5; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }
}


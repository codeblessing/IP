Table 50050 "Seminar Registration Line"
{

    fields
    {
        field(1; "Seminar Registration No."; Code[20])
        {
            Caption = 'Seminar Registration No.';
            TableRelation = "Seminar Registration Header";

        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "Bill-to Customer No."; Code[20])
        {
            Caption = 'Bill-to Customer No.';
            TableRelation = Customer;

            trigger OnValidate()
            var
                SeminarRegistrationHeader: Record "Seminar Registration Header";
            begin
                if Registered then
                    Error(BillChangeIfNotRegistered);

                if SeminarRegistrationHeader.Get("Seminar Registration No.") then begin
                    if "Seminar Registration No." <> '' then begin
                        "Seminar Price" := SeminarRegistrationHeader."Seminar Price";
                        Amount := "Seminar Price" - "Line Discount Amount";
                    end;

                end;
            end;
        }
        field(4; "Participant Contact No."; Code[20])
        {
            Caption = 'Participant Contact No.';
            TableRelation = "Contact Business Relation";

            trigger OnLookup()
            var
                ContactBusinessRelation: Record "Contact Business Relation";
                Contact: Record Contact;
            begin
                ContactBusinessRelation.Reset();
                ContactBusinessRelation.SetRange("Link to Table", ContactBusinessRelation."Link to Table"::Customer);
                ContactBusinessRelation.SetRange("No.", "Bill-to Customer No.");

                if ContactBusinessRelation.FindFirst() then begin
                    Contact.SetRange("Company No.", ContactBusinessRelation."Contact No.");
                    if Page.RunModal(5052, Contact) = Action::LookupOK then begin
                        "Participant Contact No." := Contact."No.";
                        "Participant Name" := Contact.Name;
                    end;
                end;
            end;


        }
        field(5; "Participant Name"; Text[100])
        {
            Caption = 'Participant Name';
            FieldClass = FlowField;
            CalcFormula = lookup(Contact.Name where("No." = field("Participant Contact No.")));
        }
        field(6; "Register Date"; Date)
        {
            Caption = 'Register Date';
            Editable = false;
        }
        field(7; "To Invoice"; Boolean)
        {
            Caption = 'To Invoice';
            InitValue = false;
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
            AutoFormatType = 2;

            trigger OnValidate()
            begin
                "Line Discount Amount" := "Seminar Price" * "Line Discount %" / 100;
                Amount := "Seminar Price" - "Line Discount Amount";
            end;
        }
        field(11; "Line Discount %"; Decimal)
        {
            Caption = 'Line Discount %';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
            MaxValue = 100;

            trigger OnValidate()
            var
                SeminarRegistrationHeader: Record "Seminar Registration Header";
            begin
                "Line Discount Amount" := "Seminar Price" * "Line Discount %" / 100;
                Amount := "Seminar Price" - "Line Discount Amount";
                if SeminarRegistrationHeader.Get("Seminar Registration No.") then begin
                    SeminarRegistrationHeader.UpdateAmount();
                    SeminarRegistrationHeader.CalcFields(Amount);
                end;
            end;
        }
        field(12; "Line Discount Amount"; Decimal)
        {
            Caption = 'Line Discount Amount';
            AutoFormatType = 1;
            trigger OnValidate()
            var
                SeminarRegistrationHeader: Record "Seminar Registration Header";
            begin
                "Line Discount %" := "Line Discount Amount" / "Seminar Price" * 100;
                Amount := "Seminar Price" - "Line Discount Amount";
                if SeminarRegistrationHeader.Get("Seminar Registration No.") then begin
                    SeminarRegistrationHeader.UpdateAmount();
                    SeminarRegistrationHeader.CalcFields(Amount);
                end;
            end;
        }
        field(13; Amount; Decimal)
        {
            Caption = 'Amount';
            AutoFormatType = 1;
            Editable = false;

            trigger OnValidate()
            var
                SeminarRegistrationHeader: Record "Seminar Registration Header";
            begin
                if SeminarRegistrationHeader.Get("Seminar Registration No.") then begin
                    SeminarRegistrationHeader.UpdateAmount();
                    SeminarRegistrationHeader.CalcFields(Amount);
                end;
            end;

        }
        field(14; Registered; Boolean)
        {
            Caption = 'Registered';

            trigger OnValidate()
            var
            begin
                if "Register Date" = 0D then
                    "Register Date" := WorkDate();
            end;
        }
        field(15; "Invoice No."; Code[20])
        {
            Caption = 'Invoice No.';
            TableRelation = "Sales Header" where("Document Type" = const(Invoice));
            Editable = false;
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

    var
        RegisteredRecordCannotBeDeleted: label 'Registered record cannot be deleted.';

        BillChangeIfNotRegistered: label 'Cannot change Bill-to Customer No. if record is not registered.';


    trigger OnModify()
    begin
        "Line Discount %" := "Line Discount Amount" / "Seminar Price" * 100;
        Amount := "Seminar Price" - "Line Discount Amount";
        "Line Discount Amount" := "Seminar Price" * "Line Discount %" / 100;
    end;

    trigger OnDelete()
    begin
        if Registered then
            Error(RegisteredRecordCannotBeDeleted);
    end;

    procedure UpdatePrices(var Price: Decimal)
    begin
        Validate("Seminar Price", Price);
        Modify();
    end;
}
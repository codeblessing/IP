tableextension 50000 "Salesperson Ext." extends "Salesperson/Purchaser"
{
    fields
    {
        field(50000; Sales; Decimal)
        {
            Caption = 'Sales';
            FieldClass = FlowField;
            CalcFormula = sum("Sales Transaction".Amount where("Salesperson Code" = field(Code), Type = field("Type Filter")));
            Editable = false;
        }
        // Add changes to table fields here

        field(50001; "Type Filter"; Option)
        {
            Caption = 'Type Filter';
            OptionMembers = "G/L Account",Item,Resource;
            OptionCaption = 'G/L Account,Item,Resource';
            FieldClass = FlowFilter;
        }
    }

    var
        myInt: Integer;
}
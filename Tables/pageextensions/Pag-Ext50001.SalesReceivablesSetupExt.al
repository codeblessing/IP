pageextension 50001 "Sales&ReceivablesSetupExt" extends "Sales & Receivables Setup"
{
    layout
    {
        addlast(content)
        {
            field("G/L Account No."; "G/L Account No.")
            {
                ApplicationArea = All;
            }
        }
    }
}

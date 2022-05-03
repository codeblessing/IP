pageextension 50000 "Salespersons Ext." extends "Salespersons/Purchasers"
{
    layout
    {
        addlast(Control1)
        {
            field(Sales; Sales)
            {
                ApplicationArea = All;
            }
        }
    }
}
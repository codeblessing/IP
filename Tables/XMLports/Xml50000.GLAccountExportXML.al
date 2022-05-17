xmlport 50000 "G/L Account Export XML"
{
    Direction = Export;
    Format = Xml;
    UseRequestPage = false;
    schema
    {
        textelement(Root)
        {
            tableelement(GL_Account; "G/L Account")
            {
                SourceTableView = sorting("No.");
                CalcFields = "Balance at Date", "Net Change";

                fieldelement(No; GL_Account."No.")
                {

                }
                fieldelement(Name; GL_Account.Name)
                {

                }
                fieldelement(BalanceAtDate; GL_Account."Balance at Date")
                {

                }
                fieldelement(NetChange; GL_Account."Net Change")
                {

                }
            }
        }
    }

}
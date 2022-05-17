xmlport 50002 "G/L Account Export Fixed"
{
    Direction = Export;
    Format = FixedText;
    TextEncoding = UTF8;

    schema
    {
        textelement(Root)
        {
            tableelement(GL_Account; "G/L Account")
            {
                CalcFields = "Balance at Date", "Net Change";

                fieldelement(No; GL_Account."No.")
                {
                    Width = 20;
                }
                fieldelement(Name; GL_Account.Name)
                {
                    Width = 35;
                }
                fieldelement(BalanceAtDate; GL_Account."Balance at Date")
                {
                    Width = 20;
                }
                fieldelement(NetChange; GL_Account."Net Change")
                {
                    Width = 20;
                }
            }
        }
    }

}
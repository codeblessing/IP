xmlport 50004 "Vehicle Import Variable"
{
    Direction = Import;
    Format = VariableText;
    TextEncoding = MSDOS;
    FieldSeparator = ';';
    UseRequestPage = false;
    schema
    {
        textelement(Root)
        {
            tableelement(Vehicle; Vehicle)
            {
                fieldelement(Model; Vehicle.Model)
                {

                }
                fieldelement(VIN; Vehicle.VIN)
                {

                }
                fieldelement(Description; Vehicle.Description)
                {

                }
                fieldelement(Transmission; Vehicle.Transmission)
                {

                }
                fieldelement(ListPrice; Vehicle."List Price")
                {

                }
                fieldelement(DateOfManufacturing; Vehicle."Date of Manufacturing")
                {

                }
            }
        }
    }
}
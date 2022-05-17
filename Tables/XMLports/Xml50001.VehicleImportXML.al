xmlport 50001 "Vehicle Import XML"
{
    Direction = Import;
    Format = Xml;
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
                fieldelement(ListPrice; Vehicle."List Price")
                {

                }
            }
        }
    }


}
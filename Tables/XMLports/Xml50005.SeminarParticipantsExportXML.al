xmlport 50005 "Seminar Participants Exp XML"
{
    Direction = Export;
    Format = Xml;
    UseRequestPage = true;
    Caption = 'Seminar Participants Exp XML';

    schema
    {
        textelement(Seminar_Registration_Participant_List)
        {

            tableelement(Seminar_Registration_Header; "Seminar Registration Header")
            {
                XmlName = 'Seminar';
                fieldelement(Registration_No; Seminar_Registration_Header."No.")
                {

                }
                fieldelement(Seminar_Code; Seminar_Registration_Header."Seminar Code")
                {

                }
                fieldelement(Seminar_Name; Seminar_Registration_Header."Seminar Name")
                {

                }
                fieldelement(Starting_Date; Seminar_Registration_Header."Starting Date")
                {

                }
                fieldelement(Seminar_Duration; Seminar_Registration_Header."Seminar Duration")
                {

                }
                fieldelement(Instructor_Name; Seminar_Registration_Header."Instructor Name")
                {

                }
                fieldelement(Room_Name; Seminar_Registration_Header."Seminar Room Name")
                {

                }
                tableelement(Participant; "Seminar Registration Line")
                {
                    LinkTable = Seminar_Registration_Header;
                    MinOccurs = Zero;
                    LinkFields = "Seminar Registration No." = field("No.");

                    fieldelement(Customer_No; Participant."Bill-to Customer No.")
                    {

                    }

                    textelement(Customer_Name)
                    {
                        trigger OnBeforePassVariable()
                        var
                            Customer: Record Customer;
                        begin
                            Customer.Reset();
                            if Customer.Get(Participant."Bill-to Customer No.") then
                                Customer_Name := Customer.Name;

                        end;
                    }
                    fieldelement(Contact_No; Participant."Participant Contact No.")
                    {

                    }

                    fieldelement(Participant_Name; Participant."Participant Name")
                    {

                    }


                }

            }

        }
    }
}
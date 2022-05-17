xmlport 50005 "Seminar Participants Exp XML"
{
    Direction = Export;
    Format = Xml;
    UseRequestPage = true;
    schema
    {
        textelement(Seminar_Registration_Participant_List)
        {
            tableelement(Seminar_Registration_Header; "Seminar Registration Header")
            {
                tableelement(Seminar; Seminar)
                {
                    fieldelement(Registration_No; Seminar_Registration_Header."No.")
                    {

                    }
                    fieldelement(Seminar_Code; Seminar.Code)
                    {

                    }
                    fieldelement(Seminar_Name; Seminar.Name)
                    {

                    }
                    fieldelement(Starting_Date; Seminar_Registration_Header."Starting Date")
                    {

                    }
                    fieldelement(Seminar_Duration; seminar."Seminar Duration")
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
                        fieldelement(Customer_No; Participant."Bill-to Customer No.")
                        {

                        }

                        fieldelement(Contact_No; Participant."Participant Contact No.")
                        {

                        }
                    }
                }
            }

        }
    }
}
page 50006 "My Customer Comment Subpage"
{
    PageType = ListPart;
    SourceTable = "My Customer Comment";
    DelayedInsert = true;
    AutoSplitKey = true;

    layout
    {
        area(Content)
        {
            repeater(Control1)
            {
                field(Comment; Comment)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
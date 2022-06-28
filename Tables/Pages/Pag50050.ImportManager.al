page 50050 "Import Manager"
{
    Caption = 'Import Manager';
    PageType = RoleCenter;
    RefreshOnActivate = false;
    UsageCategory = Administration;

    actions
    {
        area(Sections)
        {
            group(Lists)
            {
                Caption = 'Lists';
                action("Import settings")
                {
                    Caption = 'Import settings';
                    ApplicationArea = All;
                    RunObject = page "Settings List";
                    RunPageMode = View;

                }
                action("Map accounts")
                {
                    Caption = 'Map accounts';
                    ApplicationArea = All;
                    RunObject = page AccountMapList;
                    RunPageMode = View;
                }
                action("Import buffer")
                {
                    Caption = 'Import buffer';
                    ApplicationArea = All;
                    RunObject = page ImportBufferList;
                    RunPageMode = View;

                }
            }
        }
    }
}

profile "Import Manager"
{
    Caption = 'Import Manager';
    RoleCenter = "Import Manager";
}

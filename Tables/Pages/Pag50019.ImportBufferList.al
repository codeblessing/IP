page 50019 ImportBufferList
{
    ApplicationArea = All;
    Caption = 'ImportBufferList';
    PageType = List;
    SourceTable = ImportBuffer;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Line No."; Rec."Line No.")
                {
                    ToolTip = 'Specifies the value of the Line No. field.';
                    ApplicationArea = All;
                }
                field("Line Content"; Rec."Line Content")
                {
                    ToolTip = 'Specifies the value of the Line Content field.';
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {

            action("Create Journal Lines")
            {
                Caption = 'Create Journal Lines';
                Image = GetLines;
                trigger OnAction()
                var
                    journalLines: Codeunit CreateJournalLines;
                    importBuffer: Record ImportBuffer;
                begin
                    importBuffer.SetRange("Line No.");
                    journalLines.CreateJournalLines(importBuffer);
                    importBuffer.DeleteAll();
                end;
            }
            action(Import)
            {
                Caption = 'Import';
                Image = WageLines;
                trigger OnAction()
                var
                    importBuffer: Record ImportBuffer;
                begin
                    importBuffer.DeleteAll();
                    Xmlport.Run(Xmlport::BufferImportTxt);
                end;
            }
        }
    }
}

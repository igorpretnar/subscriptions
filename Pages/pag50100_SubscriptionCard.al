page 50100 "CSD Subscription Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "CSD Subscription";
    Caption = 'Subscription Card';
    Editable = true;


    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                // CaptionML = 'General';
                field(Code; rec.Code)
                {
                    ApplicationArea = All;

                }
                field(Name; rec.Name)
                {
                    ApplicationArea = All;

                }
                field("Item No"; rec."Item No")
                {
                    ApplicationArea = All;

                }

                field("Invoicing Schedule"; rec."Invoicing Schedule")
                {
                    ApplicationArea = All;

                }
                field("Invoicing Frequence"; rec."Invoicing Frequence")
                {
                    ApplicationArea = All;

                }

                field("Invoicing Price"; rec."Invoicing Price")
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}
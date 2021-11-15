page 50101 "CSD Subscription List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CSD Subscription";
    Editable = false;
    CardPageId = 50100;
    Caption = 'Subscription List';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
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
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}
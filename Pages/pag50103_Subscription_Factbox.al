page 50103 "CSD Subscription Factbox"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "CSD Customer Subscription";
    Caption = 'Subscription Factbox';
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Subscription Code"; rec."Subscription Code")
                {
                    ApplicationArea = All;

                }
                field("Item No"; rec."Item No")
                {
                    ApplicationArea = All;

                }
                field("Cancelled Date"; rec."Cancelled Date")
                {
                    ApplicationArea = All;

                }
            }
        }
    }

}
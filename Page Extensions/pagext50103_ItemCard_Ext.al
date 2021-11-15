pageextension 50103 "CSD Item Card Extension" extends "Item Card"
{
    layout
    {
        // Add changes to page layout here
        addlast(Item)
        {
            field("Subscription Item"; rec."Subscription Item")
            {
                ApplicationArea = All;
            }
        }
        addfirst(factboxes)
        {
            part("Subscription Factbox"; "CSD Subscription Factbox")
            {
                SubPageLink = "Item No" = FIELD("No.");
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
        addlast(History)
        {
            action("Subscriptions")
            {
                ApplicationArea = All;
                Caption = 'Subscriptions';
                RunObject = page "CSD Customer Subscriptions";
                RunPageLink = "Item No" = FIELD("No.");
                image = InsuranceRegisters;
                Promoted = true;
                PromotedCategory = Process;
            }
        }
    }

    var
        myInt: Integer;
}
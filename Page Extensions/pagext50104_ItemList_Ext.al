pageextension 50104 "CSD Item List Extension" extends "Item List"
{
    layout
    {
        // Add changes to page layout here
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
        addlast(Item)
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
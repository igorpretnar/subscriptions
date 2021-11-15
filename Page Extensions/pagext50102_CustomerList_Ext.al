pageextension 50102 "CSD Customer List Extension" extends "Customer List"
{
    layout
    {
        addfirst(factboxes)
        {
            part("Subscription Factbox"; "CSD Subscription Factbox")
            {
                SubPageLink = "Customer No" = FIELD("No.");
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
        addafter("C&ontact")
        {
            action("Subscriptions")
            {
                ApplicationArea = All;
                Caption = 'Subscriptions';
                RunObject = page "CSD Customer Subscriptions";
                RunPageLink = "Customer No" = FIELD("No.");
                image = InsuranceRegisters;
                Promoted = true;
                PromotedCategory = Process;
            }
        }
    }

}
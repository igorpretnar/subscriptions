pageextension 50101 "CSD Customer Card Extension" extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        addlast(General)
        {
            field("Subscription Customer"; rec."Subscription Customer")
            {
                ApplicationArea = All;
            }
        }

        addfirst(Factboxes)
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
        addafter(Contact)
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

    var
        myInt: Integer;
}
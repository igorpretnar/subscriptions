pageextension 50100 "BusinessManager RoleCenter Ext" extends "Business Manager Role Center"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
        addafter("Payments")
        {
            action("Subscriptions")
            {
                CaptionML = ENU = 'Subscriptions';
                Promoted = true;
                PromotedIsBig = true;
                image = InsuranceRegisters;
                RunObject = page "CSD Subscription List";
                ApplicationArea = All;
            }
            action("Create Subscription Invoices")
            {
                CaptionML = ENU = 'Create Subscription Invoices';
                Promoted = true;
                PromotedIsBig = true;
                image = CreateJobSalesInvoice;
                RunObject = report 50100;
                ApplicationArea = All;
            }
            action("Subscription Customers")
            {
                CaptionML = ENU = 'Subscription Customers';
                Promoted = true;
                PromotedIsBig = true;
                image = Report;
                RunObject = report 50101;
                ApplicationArea = All;
            }
        }
    }

    var
        myInt: Integer;
}
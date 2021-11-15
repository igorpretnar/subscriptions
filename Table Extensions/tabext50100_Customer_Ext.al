tableextension 50100 "CSD Customer Extension" extends "Customer"
{
    Caption = 'Customer Extension';
    fields
    {

        // Add changes to table fields here
        field(50100; "Subscription Customer"; Boolean)
        {
            Caption = 'Subscription Customer';
            FieldClass = FlowField;
            CalcFormula = Exist("CSD Customer Subscription"
                where("Customer No" = FIELD("No."), Active = CONST(true)));
            Editable = false;
        }
    }

}
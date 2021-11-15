tableextension 50101 "CSD Item Extension" extends Item
{

    fields
    {
        // Add changes to table fields here
        field(50100; "Subscription Item"; Boolean)
        {
            Caption = 'Subscription Item';
            FieldClass = FlowField;
            CalcFormula = Exist("CSD Customer Subscription"
                WHERE("Item No" = FIELD("No."), Active = CONST(true)));
            Editable = false;
        }
    }

    var
        myInt: Integer;
}
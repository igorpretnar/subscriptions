table 50100 "CSD Subscription"
{
    DataClassification = AccountData;
    Caption = 'Subscription';

    fields
    {
        field(1; Code; Code[10])
        {
            DataClassification = AccountData;
            Caption = 'Code';

        }

        field(2; Name; Text[100])
        {
            DataClassification = AccountData;
            Caption = 'Name';

        }
        field(3; "Item No"; Code[20])
        {
            DataClassification = AccountData;
            Caption = 'Item No';

        }
        field(4; "Invoicing Schedule"; Option)
        {
            DataClassification = AccountData;
            Optionmembers = "Posting Date","Beginning of Period","End of Period","Beginning of Next Period";
            OptionCaption = 'Posting Date,Beginning of Period,End of Period, Beginning of Next Period';
            Caption = 'Invoicing Schedule';

        }
        field(5; "Invoicing Frequence"; Dateformula)
        {
            DataClassification = AccountData;
            Caption = 'Invoicing Frequence';

        }
        field(6; "Invoicing Price"; Decimal)
        {
            DataClassification = AccountData;
            Caption = 'Invoicing Price';

        }
        field(7; "Deferral Code"; Code[10])
        {
            DataClassification = AccountData;
            Caption = 'Deferral Code';

        }
    }
    keys
    {
        key(Key1; Code)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}
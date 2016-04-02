unit SaleU;

interface

  Uses CustomerU;

  type
    TSale = Class(TObject)
      Private
        FAmount: String;
        FCustomer: TCustomer;
        Function GetName: String;
        Function GetPhone: String;
      Public
        Property Name: String Read GetName;
        Property Phone: String Read GetPhone;
        Property Amount: String Read FAmount;
        Constructor Create(ACustomer:TCustomer; AnAmount:String);
        Destructor Destroy; Override;
      end;

implementation

{ TSale }

constructor TSale.Create(ACustomer: TCustomer; AnAmount: String);
begin
  Inherited Create; //making a deep copy
  FCustomer:= TCustomer.Create;     // copying the data fields
  {FCustomer.Name:= ACustomer.Name;
  FCustomer.PhoneNo:= ACustomer.PhoneNo;}
  FCustomer.CopyForm(ACustomer);
  FAmount:= AnAmount;
end;

destructor TSale.Destroy;
begin
  FCustomer.Free;
  inherited;

end;

function TSale.GetName: String;
begin
  Result:= FCustomer.Name;
end;

function TSale.GetPhone: String;
begin
  Result:= FCustomer.PhoneNo;
end;

end.

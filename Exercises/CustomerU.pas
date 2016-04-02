unit CustomerU;

interface

  type
    TCustomer = Class(TObject)
      private
        FPhoneNo: String;
        FName: String;
      public
        Property Name:String read FName write FName;
        Property PhoneNo:String read FPhoneNo write FPhoneNo;
        Procedure CopyForm(ACustomer: TCustomer);
      end;

implementation

{ TCustomer }

procedure TCustomer.CopyForm(ACustomer: TCustomer);
begin
  Name:= ACustomer.Name;
  PhoneNo:= ACustomer.PhoneNo;
end;

end.
 
unit ClientU;

interface

  Uses
    Dialogs, SysUtils;
    
  type
    TClient = Class(TObject) //immutable: no Set Methods
    Private
      FAccNo: Integer;
      FCName: String;
    Public
      Function GetAccNo: String;
      //Function GetCName: String;
      //Procedure SetAccNo (Const AnAccNo: String);
      //Procedure SetCName (Const ACName: String);
      Constructor Create(ACName, AnACCNo: String);
      //Destructor Destroy; Override ;
      // No Write method/mapping
      property AccNo: string read GetAccNo; //write SetAccNo;
      //property CName: string read GetCName write SetCName;
      //Property AccNo: String Read FAccNo Write FAccNo;
      Property CName: String Read FCName; //Write FCName;
    end;

implementation

  {TClient}

  Constructor TClient.Create(ACName, AnACCNo: String);
    begin
      inherited Create; // First Create throught superclass' constructor
      FAccNo:= StrToInt(AnAccNo);
      FCName:= ACName;
    end;

  // Destructor no longer needed;
  {Destructor TClient.Destroy;
    begin
      ShowMessage ('About to Destroy a Client Object');
      inherited Destroy // Destroy throught superclass' destructor
    end;}

  // Set and Get Methods no longer needed;
  
  Function TClient.GetAccNo: String;
    begin
      if FAccNo < 100000 then
        Result := IntToStr(FAccNo + 100000)
      else
        Result := IntToStr(FAccNo) ;
    end;

  {Function Tclient.GetCName: String;
    begin
      GetCName:= FCName;
    end;}

  {Procedure TClient.SetAccNo(const AnAccNo:String);
    begin
      FAccNo:= StrToInt(AnAccNo);
    end;}

  {Procedure TClient.SetCName(const ACName: String);
    begin
      FCName:= ACName;
    end; }
end.

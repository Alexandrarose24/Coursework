unit Unit3;

interface

uses
  SysUtils, Classes, ADODB, DB;

type
  TDataModule3 = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOQservice: TADOQuery;
    qryADOQwork: TADOQuery;
    qryADOQcheque: TADOQuery;
    ADOTPers: TADOTable;
    DataSPers: TDataSource;
    DataSQservice: TDataSource;
    dsDataSwork: TDataSource;
    dsDataScheque: TDataSource;
    dsProd: TDataSource;
    qryProd: TADOQuery;
    qryProd2: TADOQuery;
    dsProd2: TDataSource;
    tblService: TADOTable;
    dsTservice: TDataSource;
    qryCall: TADOQuery;
    dsCall: TDataSource;
    tblInhabit: TADOTable;
    dsInhabit: TDataSource;
    qryCheque: TADOQuery;
    dsCheque: TDataSource;
    qrySum: TADOQuery;
    dsSum: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule3: TDataModule3;

implementation

{$R *.dfm}

end.

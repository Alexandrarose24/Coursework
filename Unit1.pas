unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, ExtCtrls, StdCtrls, DBCtrls;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Button5: TButton;
    Button6: TButton;
    Label2: TLabel;
    Label3: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    btn1: TButton;
    btn3: TButton;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    btn4: TButton;
    btn2: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    lbl3: TLabel;
    btn8: TButton;
    dtp1: TDateTimePicker;
    ts1: TTabSheet;
    ts2: TTabSheet;
    dbgrd1: TDBGrid;
    lbl4: TLabel;
    dtp2: TDateTimePicker;
    btn9: TButton;
    btn10: TButton;
    dbgrd2: TDBGrid;
    pnl1: TPanel;
    btn11: TButton;
    btn12: TButton;
    btn13: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn11Click(Sender: TObject);

    procedure btn12Click(Sender: TObject);
    procedure btn13Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btn10Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
  uses
    Unit3, Unit2;
{$R *.dfm}



procedure TForm1.FormShow(Sender: TObject);
begin
DataModule3.ADOQservice.Close;
DataModule3.ADOQservice.SQL.Text:= 'SELECT * FROM [service-materials]';
DataModule3.ADOQservice.Open;

DataModule3.qryADOQcheque.Close;
DataModule3.qryADOQcheque.SQL.Text:= 'SELECT * FROM [cheque]';
DataModule3.qryADOQcheque.Open;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
   Edt1.Text:=' ';
   Edt3.Text:=' ';
   Edt2.Text:='0';

   btn4.Visible:=False;
   btn1.Visible:=True;
   Panel2.Visible:=True;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   Edt1.Text:=DBGrid1.Fields[1].AsString;
   Edt3.Text:=DBGrid1.Fields[3].AsString;
   Edt2.Text:=DBGrid1.Fields[2].AsString;
   btn1.Visible:=False;
 
   btn4.Visible:=True;
   Panel2.Visible:=True;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
DataModule3.qryADOQwork.Close;
     DataModule3.qryADOQwork.SQL.Text:='INSERT INTO [service-materials](Назва, [Ціна за одиницю], Опис) values ("'+edt1.text+'",'+edt2.text+',"'+edt3.text+'")';
     DataModule3.qryADOQwork.ExecSQL;

     DataModule3.ADOQservice.Close;
DataModule3.ADOQservice.SQL.Text:= 'SELECT * FROM [service-materials]';
DataModule3.ADOQservice.Open;

Panel2.Visible:=False;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
   DataModule3.qryADOQwork.Close;
     DataModule3.qryADOQwork.SQL.Text:='UPDATE [service-materials] SET [service-materials].Назва="'+edt1.text+'", [service-materials].[Ціна за одиницю]='+edt2.text+', [service-materials].Опис="'+edt3.text+'" WHERE [service-materials].[Код послуги]='+dBGRID1.Fields[0].AsString+'';
     DataModule3.qryADOQwork.ExecSQL;

     FormShow(Sender);

Panel2.Visible:=False;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 DataModule3.qryADOQwork.Close;
     DataModule3.qryADOQwork.SQL.Text:='DELETE * FROM [service-materials] WHERE [service-materials].[Код послуги]='+dBGRID1.Fields[0].AsString+'';
     DataModule3.qryADOQwork.ExecSQL;

     FormShow(Sender);

Panel2.Visible:=False;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
  DataModule3.ADOQservice.Close;
DataModule3.ADOQservice.SQL.Text:= 'SELECT * FROM [service-materials] WHERE [service-materials].Назва LIKE "%'+edit1.text+'%" ORDER BY [service-materials].Назва';
DataModule3.ADOQservice.Open;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
DataModule3.ADOQservice.Close;
DataModule3.ADOQservice.SQL.Text:= 'SELECT * FROM [service-materials] WHERE [service-materials].[Код послуги] = '+edit2.text+' ORDER BY [service-materials].[Код послуги]';
DataModule3.ADOQservice.Open;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
Panel2.Visible:=False;
end;



procedure TForm1.btn2Click(Sender: TObject);
begin
   DataModule3.ADOTPers.Insert;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
if  DataModule3.ADOTPers.Modified then  DataModule3.ADOTPers.Post;
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
   DataModule3.ADOTPers.Delete;
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
    DataModule3.qryADOQcheque.Close;
DataModule3.qryADOQcheque.SQL.Text:= 'SELECT * FROM [cheque] WHERE [cheque].[Дата] = :dt';
DataModule3.qryADOQcheque.Parameters.ParamByName('dt').Value:=FormatDateTime('dd.mm.yyyy',dtp1.date) ;
DataModule3.qryADOQcheque.Open;
end;

procedure TForm1.btn11Click(Sender: TObject);
begin
  DataModule3.tblInhabit.Insert;
end;



procedure TForm1.btn12Click(Sender: TObject);
begin
if  DataModule3.tblInhabit.Modified then  DataModule3.tblInhabit.Post;
end;

procedure TForm1.btn13Click(Sender: TObject);
begin
DataModule3.tblInhabit.Delete;
end;

procedure TForm1.btn9Click(Sender: TObject);
begin
DataModule3.qryCall.Close;
DataModule3.qryCall.SQL.Text:= 'SELECT call.[Номер виклику], call.Дата, call.Кількість, call.Вартість, '+
'[service-materials].Назва AS [Назва послуги], personnel.ПІБ AS [ПІБ персоналу], inhabitant.ПІБ AS [ПІБ мешканця] '+
'FROM [service-materials] INNER JOIN (personnel INNER JOIN (inhabitant INNER JOIN (cheque INNER JOIN call ON cheque.[Код чеку] '+
'= call.[Код чеку]) ON inhabitant.[Код мешканця] = call.[Код мешканця]) ON personnel.[Код персоналу] = call.[Код персоналу]) '+
'ON [service-materials].[Код послуги] = call.[Код послуги] WHERE [cheque].[Дата] = :dt';
DataModule3.qryCall.Parameters.ParamByName('dt').Value:=FormatDateTime('dd.mm.yyyy',dtp2.date) ;
DataModule3.qryCall.Open;
end;

procedure TForm1.btn10Click(Sender: TObject);
begin
DataModule3.qryCall.Close;
DataModule3.qryCall.SQL.Text:= 'SELECT call.[Номер виклику], call.Дата, call.Кількість, call.Вартість, '+
'[service-materials].Назва AS [Назва послуги], personnel.ПІБ AS [ПІБ персоналу], inhabitant.ПІБ AS [ПІБ мешканця] '+
'FROM [service-materials] INNER JOIN (personnel INNER JOIN (inhabitant INNER JOIN (cheque INNER JOIN call ON cheque.[Код чеку] '+
'= call.[Код чеку]) ON inhabitant.[Код мешканця] = call.[Код мешканця]) ON personnel.[Код персоналу] = call.[Код персоналу]) '+
'ON [service-materials].[Код послуги] = call.[Код послуги]';
DataModule3.qryCall.Open;
end;

procedure TForm1.btn8Click(Sender: TObject);
begin
    DataModule3.qryADOQcheque.Close;
DataModule3.qryADOQcheque.SQL.Text:= 'SELECT * FROM [cheque]';
DataModule3.qryADOQcheque.Open;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
DataModule3.ADOQservice.Close;
DataModule3.ADOQservice.SQL.Text:= 'SELECT * FROM [service-materials] ORDER BY [service-materials].[Код послуги]';
DataModule3.ADOQservice.Open;
end;



procedure TForm1.Button4Click(Sender: TObject);
begin
 Form2.QuickRep1.PreviewModal;
end;

end.

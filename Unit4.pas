unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Grids, DBGrids, DBCtrls, Menus;

type
  TForm4 = class(TForm)
    dbgrd1: TDBGrid;
    pnl1: TPanel;
    pnl2: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    dtp1: TDateTimePicker;
    btn1: TButton;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    ud1: TUpDown;
    edt1: TEdit;
    lbl7: TLabel;
    lbl8: TLabel;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    dblkcbb2: TDBLookupComboBox;
    dblkcbb1: TDBLookupComboBox;
    mm1: TMainMenu;
    N1: TMenuItem;
    N3: TMenuItem;
    lbl9: TLabel;
    dblkcbb3: TDBLookupComboBox;
    dbgrd2: TDBGrid;
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure edt1Change(Sender: TObject);
    procedure Clean_Fields;
    procedure btn3Click(Sender: TObject);

    procedure btn4Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  cheq_num, cheq_sum, price_g:string;
implementation

uses
  Unit3, Unit1, Unit2, Unit5;

{$R *.dfm}

procedure TForm4.Clean_Fields;
begin
    edt1.text:='1';
    dblkcbb1.KeyValue:='';
    dblkcbb2.KeyValue:='';
    dblkcbb3.KeyValue:='';
end;

 procedure TForm4.FormShow(Sender: TObject);
begin
DataModule3.ADOQservice.Close;
DataModule3.ADOQservice.SQL.Text:= 'SELECT * FROM [service-materials]';
DataModule3.ADOQservice.Open;

DataModule3.qryADOQcheque.Close;
DataModule3.qryADOQcheque.SQL.Text:= 'SELECT * FROM [cheque]';
DataModule3.qryADOQcheque.Open;
end;
procedure TForm4.btn1Click(Sender: TObject);
begin
 
 datamodule3.qryADOQcheque.Close;
   datamodule3.qryADOQcheque.SQL.Text:='INSERT INTO cheque([Дата],[Сума]) values (:dt, 0)';
   datamodule3.qryADOQcheque.Parameters.ParamByName('dt').Value:=FormatDateTime('dd.mm.yyyy',dtp1.Date);
   datamodule3.qryADOQcheque.ExecSQL;

   formshow(Sender);

   datamodule3.qryADOQcheque.Close;
   datamodule3.qryADOQcheque.SQL.Text:='select * from cheque order by [Код чеку]';
   datamodule3.qryADOQcheque.Open;

    datamodule3.qryADOQcheque.last;
    cheq_num:= DataModule3.dsDataScheque.dataset.fields[0].asstring;
    lbl1.Caption:='Чек №'+ cheq_num;

    datamodule3.qryProd.Close;
     datamodule3.qryProd.SQL.Text:='SELECT call.[Номер виклику], call.Дата, call.Кількість, '+
     'personnel.ПІБ, call.Вартість, call.[Код чеку], [service-materials].[Ціна за одиницю] FROM [service-materials] INNER JOIN (personnel INNER JOIN call ON personnel.[Код персоналу] = call.[Код персоналу]) ON [service-materials].[Код послуги] ='+
     ' call.[Код послуги] where ((call.[Код чеку])='+cheq_num+')';
   datamodule3.qryProd.open;
   cheq_sum:='0';
    lbl3.caption:='Сума по чекy (грн):'+cheq_sum;
    pnl2.enabled:=True;
end;

 procedure TForm4.edt1Change(Sender: TObject);
begin
price_g:=IntToStr(DataModule3.dsTservice.DataSet.Fields[2].AsInteger * StrToInt(edt1.text));
lbl8.Caption:='Вартість виклику (грн):'+price_g;
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
  btn4.Enabled:=True;
 btn3.Enabled:=True;
    price_g:=IntToStr(DataModule3.dsTservice.DataSet.Fields[2].AsInteger * StrToInt(edt1.text));
   datamodule3.qryADOQwork.Close;
   datamodule3.qryADOQwork.SQL.Text:='INSERT INTO [call]([Дата],[Кількість], [Вартість], [Код послуги], [Код чеку], [Код персоналу], [Код мешканця]) values (:dt, :cl, :pr, :kp,:kch, :kper, :km) ';
   datamodule3.qryADOQwork.Parameters.ParamByName('dt').Value:=FormatDateTime('dd.mm.yyyy',dtp1.Date);
   datamodule3.qryADOQwork.Parameters.ParamByName('cl').Value:=StrToInt(edt1.text);
   datamodule3.qryADOQwork.Parameters.ParamByName('pr').Value:=StrToInt(price_g);
   datamodule3.qryADOQwork.Parameters.ParamByName('kp').Value:=StrToInt(dblkcbb1.KeyValue);
   datamodule3.qryADOQwork.Parameters.ParamByName('kch').Value:=StrToInt(cheq_num);
   datamodule3.qryADOQwork.Parameters.ParamByName('kper').Value:=StrToInt(dblkcbb2.KeyValue);
   datamodule3.qryADOQwork.Parameters.ParamByName('km').Value:=StrToInt(dblkcbb3.KeyValue);
   datamodule3.qryADOQwork.ExecSQL;

     datamodule3.qryCheque.Parameters.ParamByName('cheq_num').Value:='00';
   datamodule3.qryCheque.Close;
    datamodule3.qryCheque.SQL.Text:='SELECT [service-materials].Назва AS [Назва послуги], call.Кількість, [service-materials].[Ціна за одиницю], call.Вартість, call.[Код чеку] , call.[Номер виклику]'+
'FROM [service-materials] INNER JOIN (personnel INNER JOIN (inhabitant INNER JOIN (cheque INNER JOIN call ON cheque.[Код чеку] = call.[Код чеку]) ON inhabitant.[Код мешканця] = '+
'call.[Код мешканця]) ON personnel.[Код персоналу] = call.[Код персоналу]) ON [service-materials].[Код послуги] = call.[Код послуги] '+
'WHERE (((call.[Код чеку])= cheq_num))';
 datamodule3.qryCheque.Parameters.ParamByName('cheq_num').Value:=cheq_num;
   datamodule3.qryCheque.Open;

   datamodule3.qryCheque.last;
    cheq_sum:=inttostr(strtoint(DataModule3.dsCheque.DataSet.Fields[3].AsString)+strtoint(cheq_sum));
   lbl3.Caption:= 'Сума по чекy (грн):' + cheq_sum;   

   datamodule3.qryADOQcheque.Close;
   datamodule3.qryADOQcheque.SQL.Text:='UPDATE [cheque] set [cheque].[Сума] = '+cheq_sum+' where ((cheque.[Код чеку])='+cheq_num+')';
   datamodule3.qryADOQcheque.ExecSQL;

   FormShow(sender);
end;

procedure TForm4.N1Click(Sender: TObject);
begin
 Form1.Show;
end;

procedure TForm4.btn3Click(Sender: TObject);
begin

     cheq_sum:=inttostr(-strtoint(dbgrd2.fields[3].asstring)+strtoint(cheq_sum));


   lbl3.Caption:= 'Сума по чекy (грн):' + cheq_sum;
   datamodule3.qryADOQwork.Close;
   datamodule3.qryADOQwork.SQL.Text:='DELETE * FROM [call] WHERE  [Номер виклику]='+dbgrd2.fields[5].asstring+'';
   datamodule3.qryADOQwork.ExecSQL;

     datamodule3.qryCheque.Parameters.ParamByName('cheq_num').Value:='00';
   datamodule3.qryCheque.Close;
    datamodule3.qryCheque.SQL.Text:='SELECT [service-materials].Назва AS [Назва послуги], call.Кількість, [service-materials].[Ціна за одиницю], call.Вартість, call.[Код чеку], call.[Номер виклику] '+
'FROM [service-materials] INNER JOIN (personnel INNER JOIN (inhabitant INNER JOIN (cheque INNER JOIN call ON cheque.[Код чеку] = call.[Код чеку]) ON inhabitant.[Код мешканця] = '+
'call.[Код мешканця]) ON personnel.[Код персоналу] = call.[Код персоналу]) ON [service-materials].[Код послуги] = call.[Код послуги] '+
'WHERE (((call.[Код чеку])= cheq_num))';
 datamodule3.qryCheque.Parameters.ParamByName('cheq_num').Value:=cheq_num;
   datamodule3.qryCheque.Open;



   datamodule3.qryADOQcheque.Close;
   datamodule3.qryADOQcheque.SQL.Text:='UPDATE [cheque] set [cheque].[Сума] = '+cheq_sum+' where ((cheque.[Код чеку])='+cheq_num+')';
   datamodule3.qryADOQcheque.ExecSQL;

   FormShow(sender);
   if cheq_sum='0' then btn3.Enabled:=False;
end;

procedure TForm4.btn4Click(Sender: TObject);
begin
  Form5.QRLabel1.Caption:= 'Чек №'+cheq_num;
  Form5.QRLabel2.Caption:= 'Дата:'+datetostr(dtp1.Date);
  Form5.QRLabel11.Caption:= 'Сума по чеку, грн:'+cheq_sum;
Form5.QuickRep1.PreviewModal;

end;

procedure TForm4.N3Click(Sender: TObject);
begin
ShowMessage('Розроблено студенткою групи РПЗ 19 1/9 Андрієнко Олександрою');
end;

end.

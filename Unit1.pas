unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dbgrd1: TDBGrid;
    lbl3: TLabel;
    edt3: TEdit;
    btn5: TButton;
    btn4: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure bersih;
    procedure FormCreate(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a : string;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  try
    DataModule2.ZSatuan.SQL.Clear;
    DataModule2.ZSatuan.SQL.Add('insert into satuan (Nama, Deskripsi) values ("' +
    edt1.Text + '", "' + edt2.Text + '")');
    DataModule2.ZSatuan.ExecSQL;

    DataModule2.ZSatuan.SQL.Clear;
    DataModule2.ZSatuan.SQL.Add('select * from satuan');
    DataModule2.ZSatuan.Open;
    ShowMessage('Data Berhasil Disimpan');
  except
    on E: Exception do
      ShowMessage('Error saving data: ' + E.Message);
  end;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  DataModule2.ZSatuan.SQL.Clear;
  DataModule2.ZSatuan.SQL.Add('select * from satuan where Nama like "%' + edt1.Text + '%" or ' +
    'Deskripsi like "%' + edt2.Text + '%"');
  DataModule2.ZSatuan.Open;
  ShowMessage('Data Berhasil Di Update');
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
    if a = '' then
    begin
    ShowMessage('No record selected.');
    Exit;

  try
    DataModule2.ZSatuan.SQL.Clear;
    DataModule2.ZSatuan.SQL.Add('delete from satuan where id= "' + a + '"');
    DataModule2.ZSatuan.ExecSQL;

    DataModule2.ZSatuan.SQL.Clear;
    DataModule2.ZSatuan.SQL.Add('select * from satuan');
    DataModule2.ZSatuan.Open;
    ShowMessage('Data Berhasil dihapus!');
  except
    on E: Exception do
      ShowMessage('Error deleting data: ' + E.Message);
  end;
end;

end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  bersih;
  btn1.Enabled := True;
  btn2.Enabled := False;
  btn3.Enabled := False;
  btn4.Enabled := True;
  btn5.Enabled := True;
  edt1.Enabled := True;
  edt2.Enabled := True;
  edt3.Enabled := True;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  bersih;
  btn1.Enabled := False;
  btn2.Enabled := False;
  btn3.Enabled := False;
  btn4.Enabled := False;
  btn5.Enabled := True;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  btn1.Enabled := False;
  btn2.Enabled := False;
  btn3.Enabled := False;
  btn4.Enabled := False;
  btn5.Enabled := True;
  edt1.Enabled := False;
  edt2.Enabled := False;
end;

procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text := DataModule2.ZSatuan.Fields[1].AsString;
edt2.Text := DataModule2.ZSatuan.Fields[2].AsString;
a := DataModule2.ZSatuan.Fields[0].AsString;

  // Mengaktifkan Button
  btn1.Enabled := False;
  btn2.Enabled := True;
  btn3.Enabled := True;
  btn4.Enabled := True;
  btn5.Enabled := False;
end;

procedure TForm1.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
end;

end.
 
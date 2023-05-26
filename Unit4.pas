unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm4 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    edtnilai1: TEdit;
    edtnilai2: TEdit;
    edtnilai3: TEdit;
    pnl2: TPanel;
    pnl3: TPanel;
    edtbobot1: TEdit;
    edtbobot2: TEdit;
    edtbobot3: TEdit;
    edttotal: TEdit;
    edtgrade: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
var
  nil1, nil2, nil3, hasil : real;
  b1,b2,b3 : real;
  grade :string;
begin
    // berfungsi untuk mengambil data nilai
  nil1 := strtofloat(edtnilai1.Text);
  nil2 := strtofloat(edtnilai2.Text);
  nil3 := strtofloat(edtnilai3.Text);
  //mengambil pesan data bobot
  b1 := strtofloat(edtbobot1.Text)/100;
  b2 := strtofloat(edtbobot2.Text)/100;
  b3 := strtofloat(edtbobot3.Text)/100;
  //menghitung nilai akhir
  hasil := nil1*b1 + nil2*b2 + nil3*b3;
  //menentukan grade nilai
  if (hasil >= 80 ) then
  grade:='A'
  else
  if (hasil >= 70 ) then
  grade:='B'
  else
  if (hasil >= 60 ) then
  grade:='C'
  else
  if (hasil >= 50 ) then
  grade:='D'
  else
  grade :='E';
  //Hasil dari proses..
  edttotal.Text := floattostr(hasil);
  edtgrade.Text := grade;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  edtnilai1.Text := '';
  edtnilai2.Text := '';
  edtnilai3.Text := '';
  edtbobot1.Text := '';
  edtbobot2.Text := '';
  edtbobot3.Text := '';
  edttotal.Text := '';
  edtgrade.Text := '';
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.

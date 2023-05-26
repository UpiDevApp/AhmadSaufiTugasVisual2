unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm3 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    Button1: TButton;
    grp1: TGroupBox;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
  edt3.Text:= IntToStr(StrToInt(edt1.Text)+StrToInt(edt2.Text));
  edt4.Text:= IntToStr(StrToInt(edt1.Text)-StrToInt(edt2.Text));
  edt5.Text:= IntToStr(StrToInt(edt1.Text)*StrToInt(edt2.Text));
  edt6.Text:= FloatToStr(StrToFloat(edt1.Text)/StrToFloat(edt2.Text));
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
    edt3.Text:= IntToStr(StrToInt(edt1.Text)+StrToInt(edt2.Text));
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
   edt4.Text:= IntToStr(StrToInt(edt1.Text)-StrToInt(edt2.Text));
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
    edt5.Text:= IntToStr(StrToInt(edt1.Text)*StrToInt(edt2.Text));
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
  edt6.Text:= FloatToStr(StrToFloat(edt1.Text)/StrToFloat(edt2.Text));
end;

end.

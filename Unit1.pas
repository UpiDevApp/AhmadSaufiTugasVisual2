unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    BitBtn1: TBitBtn;
    Button6: TButton;
    Button7: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit9, Unit8;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  form2.Show;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  form3.Show;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  form4.Show;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  form5.Show;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
 form6.ShowModal;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
 form7.ShowModal;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
 Form9.ShowModal;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  Form8.ShowModal;
end;

end.

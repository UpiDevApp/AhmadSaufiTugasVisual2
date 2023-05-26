unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TeEngine, Series, ExtCtrls, TeeProcs, Chart, Grids,
  DBGrids;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cbb1: TComboBox;
    cbb2: TComboBox;
    edt1: TEdit;
    Button1: TButton;
    Button2: TButton;
    cht1: TChart;
    Series1: TPieSeries;
    StringGrid1: TStringGrid;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.FormShow(Sender: TObject);
begin
    stringgrid1.RowCount:=1;
    stringgrid1.ColCount:=4;
    stringgrid1.Cells[0,0]:='NO';
    stringgrid1.Cells[1,0]:='JUMLAH TERDAFTAR';
    stringgrid1.Cells[2,0]:='FAKULTAS';
    stringgrid1.Cells[3,0]:='TAHUN ANGKATAN';

    stringgrid1.ColWidths[0]:=20;
    stringgrid1.ColWidths[1]:=70;
    stringgrid1.ColWidths[2]:=170;
    stringgrid1.ColWidths[3]:=100;
end;

procedure TForm6.Button1Click(Sender: TObject);
begin
  stringgrid1.RowCount := stringgrid1.RowCount+1;
  stringgrid1.Cells[0,stringgrid1.RowCount -1] := IntToStr(stringgrid1.RowCount -1);
  stringgrid1.Cells[1,stringgrid1.RowCount -1] := edt1.Text;
  stringgrid1.Cells[2,stringgrid1.RowCount -1] := cbb2.Text;
  stringgrid1.Cells[3,stringgrid1.RowCount -1] := cbb1.Text;
end;

procedure TForm6.Button2Click(Sender: TObject);
var i: Integer;
begin
    for i:=1 to stringgrid1.rowcount-1 do
    begin
    cht1.Series[0].Add(StrToFloat(stringgrid1.Cells[1,i]),stringgrid1.Cells[2,i]);
end;

end;

end.

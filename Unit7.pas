unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, Grids, DBGrids,
  StdCtrls, Buttons, DB, ADODB;

type
  TForm7 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DBGrid1: TDBGrid;
    Chart1: TChart;
    brsrsSeries1: TBarSeries;
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Unit8;

{$R *.dfm}

procedure TForm7.FormShow(Sender: TObject);
begin
  Chart1.Title.Text.Add('GRAFIK KEHADIRAN PRAKTIKUM SISWA');
DBGrid1.Columns[0].Width:=30;
DBGrid1.Columns[3].Width:=90;
DBGrid1.Columns[5].Width:=50;
DBGrid1.Columns[6].Width:=110;
DBGrid1.Columns[7].Width:=90;
end;

procedure TForm7.BitBtn3Click(Sender: TObject);
begin
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select * from jadwal_table');
  ADOQuery1.Open;

  DBGrid1.Columns[0].Width:=30;
  DBGrid1.Columns[3].Width:=90;
  DBGrid1.Columns[5].Width:=50;
  DBGrid1.Columns[6].Width:=110;
  DBGrid1.Columns[7].Width:=90;
end;

procedure TForm7.BitBtn1Click(Sender: TObject);
var i:Integer;
begin
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select Count(no)as jumlah_kelas,sum(kehadiran_total) as total_siswa,kelas as nama_kelas from jadwal_table group by kelas');
  ADOQuery1.Open;

  Chart1.Series[0].Clear;
  for i:=1 to ADOQuery1.RecordCount do
begin
  Chart1.Series[0].Add(StrToInt(ADOQuery1.fieldbyname('total_siswa').AsString),ADOQuery1.fields[2].AsString);
  ADOQuery1.Next;
  end;
  DBGrid1.Columns[2].Width:=90;
end;

procedure TForm7.BitBtn4Click(Sender: TObject);
begin
form8.ShowModal;
end;

end.

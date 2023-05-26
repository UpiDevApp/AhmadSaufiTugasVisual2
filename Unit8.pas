unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ComCtrls;

type
  TForm8 = class(TForm)
    Label9: TLabel;
    grp1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    DateTimePicker1: TDateTimePicker;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DBGrid1: TDBGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure bersih;
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  updt:String;
  

implementation

uses Unit7;

{$R *.dfm}

procedure TForm8.bersih;
begin
     Edit1.Text :='00.00';
Edit2.Text :='00.00';
ComboBox1.Text :='----PILIH HARI----';
Edit3.Text :='-';
Edit4.Text :='-';
Edit5.Text :='-';
Edit6.Text :='0';

Form7.ADOQuery1.SQL.Clear;
Form7.ADOQuery1.SQL.Add('select * from jadwal_table');
Form7.ADOQuery1.Open;
DBGrid1.Columns[0].Width:=30;
DBGrid1.Columns[3].Width:=90;
DBGrid1.Columns[5].Width:=50;
DBGrid1.Columns[6].Width:=110;
DBGrid1.Columns[7].Width:=90;
BitBtn1.Enabled:=True;
BitBtn2.Enabled:=False;
BitBtn2.Enabled:=False;
end;

procedure TForm8.BitBtn1Click(Sender: TObject);

var a:Integer;
begin
  if (Edit1.Text='') or (Edit1.Text='00.00') or (Edit2.Text='') or (Edit2.Text='00.00')then
  begin
    ShowMessage('DATA BELUM DIISI DENGAN BENAR');
  end else
  if (ComboBox1.Text='') or (ComboBox1.Text='----PILIH HARI----')then
  begin
    ShowMessage('HARI BELUM DIISI DENGAN BENAR');
  end else
  if (Edit3.Text='') or (Edit3.Text='-') or (Edit4.Text='') or (Edit4.Text='-')then
  begin
    ShowMessage('INPUTAN RUANGAN ATAU MATA KULIAH MASIH BELUM SESUAI');
  end else
  if (Edit5.Text='') or (Edit5.Text='-') or (Edit6.Text='') or (Edit6.Text='0')then
  begin
    ShowMessage('INPUTAN KELAS ATAU TOTAL HADIR MASIH BELUM SESUAI');
  end else
  if (Form7.ADOQuery1.Locate('hari',ComboBox1.Text,[])) and (Form7.ADOQuery1.Locate('jam_mulai',Edit1.Text,[])) then //VALIDASI MEMBANDINGKAN DATA INPUTAN DENGAN DATA DI TABLE
  begin
    ShowMessage('DATA SUDAH ADA DI DALAM SISTEM');
    Edit1.SetFocus;
  end else
  begin   //KODE SIMPAN
    a:=Form7.ADOQuery1.RecordCount+1;
  with Form7.ADOQuery1 do  //KODE SIMPAN
  begin
      SQL.Clear;
      SQL.Add('insert into jadwal_table values("'+inttostr(a)+'","'+Edit1.Text+'","'+Edit2.Text+'","'+ComboBox1.Text+'","'+formatdatetime('yyyy-mm-dd',DateTimePicker1.Date)+'","'+Edit3.Text+'","'+Edit4.Text+'","'+Edit5.Text+'","'+Edit6.Text+'")');
      ExecSQL;
      bersih; //PROCEDURE BERSIH
      ShowMessage('DATA BERHASIL DISIMPAN');

  end;
  end;
end;
procedure TForm8.BitBtn2Click(Sender: TObject);
begin
  if (Edit1.Text='') or (Edit1.Text='00.00') or (Edit2.Text='') or (Edit2.Text='00.00')then
  begin
    ShowMessage('DATA BELUM DIISI DENGAN BENAR');
  end else
  if (ComboBox1.Text='') or (ComboBox1.Text='----PILIH HARI----')then
  begin
    ShowMessage('HARI BELUM DIISI DENGAN BENAR');
  end else
  if (Edit3.Text='') or (Edit3.Text='-') or (Edit4.Text='') or (Edit4.Text='-')then
  begin
    ShowMessage('INPUTAN RUANGAN ATAU MATA KULIAH MASIH BELUM SESUAI');
  end else
  if (Edit5.Text='') or (Edit5.Text='-') or (Edit6.Text='') or (Edit6.Text='0')then
  begin
    ShowMessage('INPUTAN KELAS ATAU TOTAL HADIR MASIH BELUM SESUAI');
  end else
  if (Edit1.Text= Form7.ADOQuery1.Fields[1].AsString) and (ComboBox1.Text= Form7.ADOQuery1.Fields[3].AsString)then   //perbandingan dari inputan = table
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
  end else
  begin
    //KODE UPDATE
    with Form7.ADOQuery1 do
    begin
      SQL.Clear;
      SQL.Add('update jadwal_table set jam_mulai="'+Edit1.Text+'",jam_akhir="'+Edit2.Text+'" where id="'+updt+'"');
      ExecSQL;


      bersih; //procedure bersih
      ShowMessage('DATA BERHASIL DIUPDATE');
    end;
  end;
end;

procedure TForm8.DBGrid1CellClick(Column: TColumn);
begin
 try
  updt:=Form7.ADOQuery1.Fields[0].AsString;
  Edit1.Text:=Form7.ADOQuery1.Fields[1].AsString;
  Edit2.Text:=Form7.ADOQuery1.Fields[2].AsString;
  ComboBox1.Text:=Form7.ADOQuery1.Fields[3].AsString;
  DateTimePicker1.Date:=Form7.ADOQuery1.Fields[4].AsDateTime;
  Edit3.Text:=Form7.ADOQuery1.Fields[5].AsString;
  Edit4.Text:=Form7.ADOQuery1.Fields[6].AsString;
  Edit5.Text:=Form7.ADOQuery1.Fields[7].AsString;
  Edit6.Text:=Form7.ADOQuery1.Fields[8].AsString;
  BitBtn2.Enabled:=True;
  BitBtn2.Enabled:=True;
  BitBtn1.Enabled:=False;
except
  //kosong
end;
end;

procedure TForm8.BitBtn3Click(Sender: TObject);
begin
 if (Edit1.Text='') or (Edit1.Text='00.00') or (Edit2.Text='') or (Edit2.Text='00.00')then
  begin
    ShowMessage('DATA BELUM DIISI DENGAN BENAR');
  end else
  if (ComboBox1.Text='') or (ComboBox1.Text='----PILIH HARI----')then
  begin
    ShowMessage('HARI BELUM DIISI DENGAN BENAR');
  end else
  if (Edit3.Text='') or (Edit3.Text='-') or (Edit4.Text='') or (Edit4.Text='-')then
  begin
    ShowMessage('INPUTAN RUANGAN ATAU MATA KULIAH MASIH BELUM SESUAI');
  end else
  if (Edit5.Text='') or (Edit5.Text='-') or (Edit6.Text='') or (Edit6.Text='0')then
  begin
    ShowMessage('INPUTAN KELAS ATAU TOTAL HADIR MASIH BELUM SESUAI');
  end else
  begin
    //KODE DELETE
    if MessageDlg('APAKAH ANDA YAKIN MENGHAPUS DATA INI?', mtWarning,[mbYes,mbNo],0)=mryes then
    begin
      with Form7.ADOQuery1 do
      begin
        SQL.Clear;
        SQL.Add('delete from jadwal_table where id="'+updt+'"');
        ExecSQL;
      end;
        bersih; //procedure bersih
        ShowMessage('DATA BERHASIL DIIHAPUS');
    end else
    begin
      ShowMessage('DATA BATAL DIHAPUS!');
    end;
  end;
end;

procedure TForm8.BitBtn4Click(Sender: TObject);
begin
  bersih;
end;

procedure TForm8.FormShow(Sender: TObject);
begin
      bersih;
end;

end.

unit Cad_Funcionarios;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, DBGrids, DBCtrls,
  StdCtrls, ComCtrls;

type

  { TCad_FuncionariosF }

  TCad_FuncionariosF = class(TForm)
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBRadioGroup1: TDBRadioGroup;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure DBComboBox1Change(Sender: TObject);
  private

  public

  end;

var
  Cad_FuncionariosF: TCad_FuncionariosF;

implementation

{$R *.lfm}

{ TCad_FuncionariosF }

procedure TCad_FuncionariosF.DBComboBox1Change(Sender: TObject);
begin

end;

end.


unit TelaPrincipal;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, ExtCtrls,
  ComCtrls;

type

  { TTelaPrincipalF }

  TTelaPrincipalF = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro: TMenuItem;
    Funcionarios: TMenuItem;
    Produtos: TMenuItem;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    procedure FuncionariosClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  TelaPrincipalF: TTelaPrincipalF;

implementation
              uses Login, Cad_Funcionarios;
{$R *.lfm}

{ TTelaPrincipalF }

procedure TTelaPrincipalF.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[0].Text := 'Usuário: ' + LoginF.Edit1.Text;
StatusBar1.Panels[1].Text := 'Data: ' + DateToStr(Date);
StatusBar1.Panels[2].Text := 'Hora: '+ TimeToStr(time);

end;

procedure TTelaPrincipalF.FuncionariosClick(Sender: TObject);
begin
  Cad_FuncionariosF.showmodal;
end;

end.


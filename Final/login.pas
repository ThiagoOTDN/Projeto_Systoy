unit Login;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Buttons, StdCtrls;

type

  { TLoginF }

  TLoginF = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    SpeedButton2: TSpeedButton;
    Usuario: TLabel;
    Senha: TLabel;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private

  public

  end;

var
  LoginF: TLoginF;

implementation
              uses TelaPrincipal;
{$R *.lfm}

{ TLoginF }

procedure TLoginF.SpeedButton1Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente sair do sistema? Tem certeza ?',mtinformation,[mbyes,mbno],0) = mryes then

begin
Application.Terminate;
end
else
begin
Abort;
end;

end;

procedure TLoginF.SpeedButton2Click(Sender: TObject);
begin
  if (Edit1.Text <> '') and (Edit2.Text <> '') then
Begin
    if (Edit1.Text = 'admin') and (Edit2.Text = '123456') then
    begin
        ShowMessage('Acesso permitido');
        LoginF.Hide;
        TelaPrincipalF.showmodal;
    end
    else
    begin
        ShowMessage('Acesso negado');
        Edit1.clear;
        Edit2.clear;
        Edit1.setfocus;
        abort;
    end;
end
else
begin
    ShowMessage('Preencha todos os campos');
end;

end;

end.


unit Carregamento;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, ExtCtrls;

type

  { TTelaDeCarregamentoF }

  TTelaDeCarregamentoF = class(TForm)
    Image1: TImage;
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  TelaDeCarregamentoF: TTelaDeCarregamentoF;

implementation
              uses Login;
{$R *.lfm}

{ TTelaDeCarregamentoF }

procedure TTelaDeCarregamentoF.Timer1Timer(Sender: TObject);
begin
  ProgressBar1.Position := ProgressBar1.Position + 27;
   IF ProgressBar1.Position = 100 THEN
   BEGIN
     TelaDeCarregamentoF.Destroy;
     LoginF.ShowModal;
   end;

end;

end.


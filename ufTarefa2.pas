unit ufTarefa2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;


type
  TfTarefa2 = class(TForm)
    btExecutar: TButton;
    lbThread1: TLabel;
    edThread1: TEdit;
    lbThread2: TLabel;
    edThread2: TEdit;
    lbPThread1: TLabel;
    lbPThread2: TLabel;
    pgThread1: TProgressBar;
    pgThread2: TProgressBar;
    procedure btExecutarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);


  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  fTarefa2: TfTarefa2;

implementation

{$R *.dfm}

{ TProcInThread }
procedure TfTarefa2.btExecutarClick(Sender: TObject);
begin
  try
    try
       if Trim(edThread1.Text) = String.Empty then
       begin
         ShowMessage('Deve ser informado o tempo da Thread 1!');
         edThread1.SetFocus;
         abort;
       end;

       if Trim(edThread2.Text) = String.Empty then
       begin
         ShowMessage('Deve ser informado o tempo da Thread 2!');
         edThread2.SetFocus;
         Abort;
       end;

       pgThread1.Position := 0;
       pgThread2.Position := 0;

       TThread.CreateAnonymousThread(procedure var i: integer;
                                        begin
                                          for I := 0 to 100 do
                                            begin
                                              sleep(StrToInt(edThread1.Text));
                                              pgThread1.StepBy(1);
                                            end;
                                        end).Start;

       TThread.CreateAnonymousThread(procedure var i: integer;
                                       begin
                                         for I := 0 to 100 do
                                            begin
                                              sleep(StrToInt(edThread2.Text));
                                              pgThread2.StepBy(1);
                                            end;

                                       end).start;
    except on e:Exception do
       ShowMessage(e.Message)
    end;
  finally
  end;
end;

procedure TfTarefa2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(fTarefa2);
end;


end.

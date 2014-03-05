unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FileCtrl;

type
  TForm1 = class(TForm)
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    Button2: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    DirectoryListBox1: TDirectoryListBox;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

Procedure EnDecryptFile(pathin, pathout : String; Chave : Word);
var
   InMS, OutMS : TMemoryStream;
   I : Integer;
   C : byte;
begin
  InMS := TMemoryStream.Create;
  OutMS := TMemoryStream.Create;

    try
        InMS.LoadFromFile(pathin);
        InMS.Position := 0;

        for I := 0 to InMS.Size - 1 do
          begin
              InMS.Read(C, 1);
              C := (C xor not(ord(chave shr I)));
              OutMS.Write(C,1);
          end;

          OutMS.SaveToFile(pathout);

   finally

       InMS.Free;
       OutMS.Free;
   end;
end;


procedure TForm1.Button1Click(Sender: TObject);
var folder,filename:string;
begin

    if (Edit1.Text <> EmptyStr) then
     begin

     folder:= DirectoryListBox1.Directory;
     filename:= ExtractFileName(OpenDialog1.FileName);

     EnDecryptFile(OpenDialog1.FileName, folder + '\' + filename,12);

     showmessage('Encrypt or Decrypt with success!');

     end
     else
     begin
       ShowMessage('Please select a file.');
     end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
OpenDialog1.Execute;
Edit1.Text:= OpenDialog1.FileName;

end;

procedure TForm1.FormShow(Sender: TObject);
begin
Edit1.SetFocus;
end;



end.

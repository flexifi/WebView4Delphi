unit uWVBrowser;

{$IFDEF FPC}{$MODE Delphi}{$ENDIF}

interface

uses
  {$IFDEF FPC}
  Classes, Types, Forms, Math, LResources,
  {$ELSE}
  System.Classes, System.Types, Vcl.Forms, System.Math,
  {$ENDIF}
  uWVBrowserBase;

type
  {$IFNDEF FPC}[ComponentPlatformsAttribute(pidWin32 or pidWin64)]{$ENDIF}
  TWVBrowser = class(TWVBrowserBase)
    protected
      function  GetParentForm : TCustomForm;

    public
      procedure MoveFormTo(const x, y: Integer); override;
      procedure MoveFormBy(const x, y: Integer); override;
      procedure ResizeFormWidthTo(const x : Integer); override;
      procedure ResizeFormHeightTo(const y : Integer); override;
      procedure SetFormLeftTo(const x : Integer); override;
      procedure SetFormTopTo(const y : Integer); override;

    published
      property BrowserExecPath;
      property UserDataFolder;
      property DefaultURL;
      property AdditionalBrowserArguments;
      property Language;
      property TargetCompatibleBrowserVersion;
      property AllowSingleSignOnUsingOSPrimaryAccount;
      property OnInitializationError;
      property OnEnvironmentCompleted;
      property OnControllerCompleted;
      property OnAfterCreated;
      property OnExecuteScriptCompleted;
      property OnCapturePreviewCompleted;
      property OnNavigationStarting;
      property OnNavigationCompleted;
      property OnFrameNavigationStarting;
      property OnFrameNavigationCompleted;
      property OnSourceChanged;
      property OnHistoryChanged;
      property OnContentLoading;
      property OnDocumentTitleChanged;
      property OnNewWindowRequested;
      property OnWebResourceRequested;
      property OnScriptDialogOpening;
      property OnPermissionRequested;
      property OnProcessFailed;
      property OnWebMessageReceived;
      property OnContainsFullScreenElementChanged;
      property OnWindowCloseRequested;
      property OnDevToolsProtocolEventReceived;
      property OnZoomFactorChanged;
      property OnMoveFocusRequested;
      property OnAcceleratorKeyPressed;
      property OnGotFocus;
      property OnLostFocus;
      property OnCursorChanged;
      property OnBrowserProcessExited;
      property OnRasterizationScaleChanged;
      property OnWebResourceResponseReceived;
      property OnDOMContentLoaded;
      property OnWebResourceResponseViewGetContentCompleted;
      property OnGetCookiesCompleted;
      property OnTrySuspendCompleted;
      property OnFrameCreated;
      property OnDownloadStarting;
      property OnClientCertificateRequested;
      property OnPrintToPdfCompleted;
      property OnBytesReceivedChanged;
      property OnEstimatedEndTimeChanged;
      property OnDownloadStateChanged;
      property OnFrameNameChanged;
      property OnFrameDestroyed;
      property OnCompositionControllerCompleted;
      property OnCallDevToolsProtocolMethodCompleted;
      property OnAddScriptToExecuteOnDocumentCreatedCompleted;
  end;

{$IFDEF FPC}
procedure Register;
{$ENDIF}

implementation

function TWVBrowser.GetParentForm : TCustomForm;
var
  TempComp : TComponent;
begin
  Result   := nil;
  TempComp := Owner;

  while (TempComp <> nil) do
    if (TempComp is TCustomForm) then
      begin
        Result := TCustomForm(TempComp);
        exit;
      end
     else
      TempComp := TempComp.owner;
end;

procedure TWVBrowser.MoveFormTo(const x, y: Integer);
var
  TempForm : TCustomForm;
  TempRect : TRect;
begin
  TempForm := GetParentForm;

  if (TempForm <> nil) then
    begin
      TempRect.Left   := min(max(x, max(screen.DesktopLeft, 0)), screen.DesktopWidth  - TempForm.Width);
      TempRect.Top    := min(max(y, max(screen.DesktopTop,  0)), screen.DesktopHeight - TempForm.Height);
      TempRect.Right  := TempRect.Left + TempForm.Width  - 1;
      TempRect.Bottom := TempRect.Top  + TempForm.Height - 1;

      TempForm.SetBounds(TempRect.Left, TempRect.Top, TempRect.Right - TempRect.Left + 1, TempRect.Bottom - TempRect.Top + 1);
    end;
end;

procedure TWVBrowser.MoveFormBy(const x, y: Integer);
var
  TempForm : TCustomForm;
  TempRect : TRect;
begin
  TempForm := GetParentForm;

  if (TempForm <> nil) then
    begin
      TempRect.Left   := min(max(TempForm.Left + x, max(screen.DesktopLeft, 0)), screen.DesktopWidth  - TempForm.Width);
      TempRect.Top    := min(max(TempForm.Top  + y, max(screen.DesktopTop,  0)), screen.DesktopHeight - TempForm.Height);
      TempRect.Right  := TempRect.Left + TempForm.Width  - 1;
      TempRect.Bottom := TempRect.Top  + TempForm.Height - 1;

      TempForm.SetBounds(TempRect.Left, TempRect.Top, TempRect.Right - TempRect.Left + 1, TempRect.Bottom - TempRect.Top + 1);
    end;
end;

procedure TWVBrowser.ResizeFormWidthTo(const x : Integer);
var
  TempForm : TCustomForm;
  TempX, TempDeltaX : integer;
begin
  TempForm := GetParentForm;

  if (TempForm <> nil) then
    begin
      TempX          := max(x, 100);
      TempDeltaX     := TempForm.Width  - TempForm.ClientWidth;
      TempForm.Width := TempX + TempDeltaX;
    end;
end;

procedure TWVBrowser.ResizeFormHeightTo(const y : Integer);
var
  TempForm : TCustomForm;
  TempY, TempDeltaY : integer;
begin
  TempForm := GetParentForm;

  if (TempForm <> nil) then
    begin
      TempY           := max(y, 100);
      TempDeltaY      := TempForm.Height - TempForm.ClientHeight;
      TempForm.Height := TempY + TempDeltaY;
    end;
end;

procedure TWVBrowser.SetFormLeftTo(const x : Integer);
var
  TempForm : TCustomForm;
begin
  TempForm := GetParentForm;

  if (TempForm <> nil) then
    TempForm.Left := min(max(x, max(screen.DesktopLeft, 0)), screen.DesktopWidth  - TempForm.Width);
end;

procedure TWVBrowser.SetFormTopTo(const y : Integer);
var
  TempForm : TCustomForm;
begin
  TempForm := GetParentForm;

  if (TempForm <> nil) then
    TempForm.Top := min(max(y, max(screen.DesktopTop, 0)), screen.DesktopHeight - TempForm.Height);
end;

{$IFDEF FPC}
procedure Register;
begin
  {$I res/twvbrowser.lrs}
  RegisterComponents('WebView4Delphi', [TWVBrowser]);
end;
{$ENDIF}


end.

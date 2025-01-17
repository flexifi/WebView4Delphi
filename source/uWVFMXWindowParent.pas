unit uWVFMXWindowParent;

interface

uses
  System.Classes, System.Types, System.UITypes, WinApi.Windows, FMX.Controls, FMX.Types, FMX.Forms,
  uWVWinControl, uWVBrowserBase, uWVConstants;

type
  TWVFMXWindowParent = class(TCommonCustomForm)
    protected
      FBrowser : TWVBrowserBase;

      function  GetBrowser : TWVBrowserBase;
      function  GetChildWindowHandle : HWND;

      procedure SetBrowser(const aValue : TWVBrowserBase);

      procedure Notification(AComponent: TComponent; Operation: TOperation); override;
      procedure Resize; override;
      procedure DoFocusChanged; override;

    public
      constructor Create(AOwner: TComponent); override;
      procedure   Reparent(const aNewParentHandle : TWindowHandle);
      procedure   UpdateSize;

      property  ChildWindowHandle : HWND             read GetChildWindowHandle;
      property  Browser           : TWVBrowserBase   read GetBrowser            write SetBrowser;

    published
      property Visible;
      property Height;
      property Width;
      property Touch;
      property OnGesture;
  end;

implementation

// This class inherits from TCommonCustomForm because WebView2 needs a Windows handle
// to create the browser.

// TFMXWindowParent has to be created and resized at runtime.
// It's also necessary to call "Reparent" to add this component as a child component to your form.

uses
  System.SysUtils, FMX.Platform, FMX.Platform.Win;

constructor TWVFMXWindowParent.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  FBrowser := nil;
end;

procedure TWVFMXWindowParent.Resize;
begin
  inherited Resize;

  UpdateSize;
end;

procedure TWVFMXWindowParent.DoFocusChanged;
begin
  inherited DoFocusChanged;

  if (Focused <> nil) and (FBrowser <> nil) then
    FBrowser.SetFocus;
end;

function TWVFMXWindowParent.GetBrowser: TWVBrowserBase;
begin
  Result := FBrowser;
end;

procedure TWVFMXWindowParent.SetBrowser(const aValue : TWVBrowserBase);
begin
  FBrowser := aValue;

  if (aValue <> nil) then
    aValue.FreeNotification(Self);
end;

function TWVFMXWindowParent.GetChildWindowHandle : HWND;
var
  TempHWND : HWND;
begin
  TempHWND := FmxHandleToHWND(Handle);
  Result   := WinApi.Windows.GetWindow(TempHWND, GW_CHILD);
end;

procedure TWVFMXWindowParent.Notification(AComponent: TComponent; Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);

  if (Operation = opRemove) and (AComponent = FBrowser) then
    FBrowser := nil;
end;

procedure TWVFMXWindowParent.UpdateSize;
var
  TempHWND, TempChildHWND : HWND;
  TempRect : System.Types.TRect;
  TempClientRect : TRectF;
begin
  TempClientRect  := ClientRect;
  TempRect.Left   := round(TempClientRect.Left);
  TempRect.Top    := round(TempClientRect.Top);
  TempRect.Right  := round(TempClientRect.Right);
  TempRect.Bottom := round(TempClientRect.Bottom);

  if (FBrowser <> nil) then
    FBrowser.Bounds := TempRect
   else
    begin
      TempChildHWND := ChildWindowHandle;

      if (TempChildHWND <> 0) then
        begin
          TempHWND := BeginDeferWindowPos(1);

          try
            TempHWND := DeferWindowPos(TempHWND, TempChildHWND, HWND_TOP,
                                       TempRect.left, TempRect.top, TempRect.right - TempRect.left, TempRect.bottom - TempRect.top,
                                       SWP_NOZORDER);
          finally
            EndDeferWindowPos(TempHWND);
          end;
        end;
    end;
end;

procedure TWVFMXWindowParent.Reparent(const aNewParentHandle : TWindowHandle);
var
  TempChildHandle, TempParentHandle : HWND;
begin
  if (aNewParentHandle <> nil) then
    begin
      TempChildHandle  := FmxHandleToHWND(Handle);
      TempParentHandle := FmxHandleToHWND(aNewParentHandle);

      if (TempChildHandle <> 0) and (TempParentHandle <> 0) then
        begin
          SetWindowLong(TempChildHandle, GWL_STYLE, WS_CHILDWINDOW);
          WinApi.Windows.SetParent(TempChildHandle, TempParentHandle);
        end;
    end;
end;

end.

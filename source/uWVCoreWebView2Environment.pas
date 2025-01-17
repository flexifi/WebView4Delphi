unit uWVCoreWebView2Environment;

{$IFDEF FPC}{$MODE Delphi}{$ENDIF}

interface

uses
  {$IFDEF FPC}
  Classes, ActiveX, SysUtils,
  {$ELSE}
  System.Classes, System.Types, Winapi.ActiveX, System.SysUtils,
  {$ENDIF}
  uWVInterfaces, uWVTypeLibrary, uWVTypes;

type
  TCoreWebView2Environment = class
    protected
      FBaseIntf                             : ICoreWebView2Environment;
      FBaseIntf2                            : ICoreWebView2Environment2;
      FBaseIntf3                            : ICoreWebView2Environment3;
      FBaseIntf4                            : ICoreWebView2Environment4;
      FBaseIntf5                            : ICoreWebView2Environment5;
      FBaseIntf6                            : ICoreWebView2Environment6;
      FBaseIntf7                            : ICoreWebView2Environment7;
      FNewBrowserVersionAvailableEventToken : EventRegistrationToken;
      FBrowserProcessExitedEventToken       : EventRegistrationToken;

      function  GetInitialized : boolean;
      function  GetBrowserVersionInfo : wvstring;
      function  GetSupportsCompositionController : boolean;
      function  GetUserDataFolder : wvstring;

      procedure InitializeFields;
      procedure InitializeTokens;
      procedure RemoveAllEvents;

      function  AddNewBrowserVersionAvailableEvent(const aLoaderComponent : TComponent) : boolean;
      function  AddBrowserProcessExitedLoaderEvent(const aLoaderComponent : TComponent) : boolean;
      function  AddBrowserProcessExitedBrowserEvent(const aBrowserComponent : TComponent) : boolean;

    public
      constructor Create(const aBaseIntf : ICoreWebView2Environment); reintroduce;
      destructor  Destroy; override;
      function    AddAllLoaderEvents(const aLoaderComponent : TComponent) : boolean;
      function    AddAllBrowserEvents(const aBrowserComponent : TComponent) : boolean;
      function    CreateCoreWebView2Controller(aParentWindow : THandle; const aBrowserEvents : IWVBrowserEvents) : boolean;
      function    CreateWebResourceResponse(const aContent : IStream; aStatusCode : integer; aReasonPhrase, aHeaders : wvstring; var aResponse : ICoreWebView2WebResourceResponse) : boolean;
      function    CreateWebResourceRequest(const aURI, aMethod : wvstring; const aPostData : IStream; const aHeaders : wvstring; var aRequest : ICoreWebView2WebResourceRequest): boolean;
      function    CreateCoreWebView2CompositionController(aParentWindow : THandle; const aBrowserEvents : IWVBrowserEvents) : boolean;
      function    CreateCoreWebView2PointerInfo(var aPointerInfo : ICoreWebView2PointerInfo) : boolean;
      function    GetProviderForHwnd(aHandle : THandle; var aProvider : IUnknown) : boolean;
      function    CreatePrintSettings(var aPrintSettings : ICoreWebView2PrintSettings) : boolean;

      property    Initialized                   : boolean                          read GetInitialized;
      property    BaseIntf                      : ICoreWebView2Environment         read FBaseIntf;
      property    BrowserVersionInfo            : wvstring                         read GetBrowserVersionInfo;
      property    SupportsCompositionController : boolean                          read GetSupportsCompositionController;
      property    UserDataFolder                : wvstring                         read GetUserDataFolder;
  end;

implementation

uses
  uWVCoreWebView2Delegates, uWVBrowserBase, uWVLoader;

constructor TCoreWebView2Environment.Create(const aBaseIntf : ICoreWebView2Environment);
begin
  inherited Create;

  InitializeFields;

  FBaseIntf := aBaseIntf;

  if Initialized and
     succeeded(FBaseIntf.QueryInterface(IID_ICoreWebView2Environment2, FBaseIntf2)) and
     succeeded(FBaseIntf.QueryInterface(IID_ICoreWebView2Environment3, FBaseIntf3)) and
     succeeded(FBaseIntf.QueryInterface(IID_ICoreWebView2Environment4, FBaseIntf4)) and
     succeeded(FBaseIntf.QueryInterface(IID_ICoreWebView2Environment5, FBaseIntf5)) and
     succeeded(FBaseIntf.QueryInterface(IID_ICoreWebView2Environment6, FBaseIntf6)) then
    FBaseIntf.QueryInterface(IID_ICoreWebView2Environment7, FBaseIntf7);
end;

destructor TCoreWebView2Environment.Destroy;
begin
  try
    RemoveAllEvents;
    InitializeFields;
  finally
    inherited Destroy;
  end;
end;

procedure TCoreWebView2Environment.InitializeFields;
begin
  FBaseIntf  := nil;
  FBaseIntf2 := nil;
  FBaseIntf3 := nil;
  FBaseIntf4 := nil;
  FBaseIntf5 := nil;
  FBaseIntf6 := nil;
  FBaseIntf7 := nil;

  InitializeTokens;
end;

procedure TCoreWebView2Environment.InitializeTokens;
begin
  FNewBrowserVersionAvailableEventToken.value := 0;
  FBrowserProcessExitedEventToken.value       := 0;
end;

function TCoreWebView2Environment.GetInitialized : boolean;
begin
  Result := assigned(FBaseIntf);
end;

procedure TCoreWebView2Environment.RemoveAllEvents;
begin
  if Initialized then
    begin
      if (FNewBrowserVersionAvailableEventToken.value <> 0) then
        FBaseIntf.remove_NewBrowserVersionAvailable(FNewBrowserVersionAvailableEventToken);

      if assigned(FBaseIntf5) and (FBrowserProcessExitedEventToken.value <> 0) then
        FBaseIntf5.remove_BrowserProcessExited(FBrowserProcessExitedEventToken);

      InitializeTokens;
    end;
end;

function TCoreWebView2Environment.AddAllLoaderEvents(const aLoaderComponent : TComponent) : boolean;
begin
  Result := AddNewBrowserVersionAvailableEvent(aLoaderComponent) and
            AddBrowserProcessExitedLoaderEvent(aLoaderComponent);
end;         

function TCoreWebView2Environment.AddAllBrowserEvents(const aBrowserComponent : TComponent) : boolean;
begin
  Result := AddBrowserProcessExitedBrowserEvent(aBrowserComponent);
end;

function TCoreWebView2Environment.AddNewBrowserVersionAvailableEvent(const aLoaderComponent : TComponent) : boolean;
var
  TempHandler : ICoreWebView2NewBrowserVersionAvailableEventHandler;
begin
  Result := False;

  if Initialized and (FNewBrowserVersionAvailableEventToken.value = 0) then
    try
      TempHandler := TCoreWebView2NewBrowserVersionAvailableEventHandler.Create(TWVLoader(aLoaderComponent));
      Result      := succeeded(FBaseIntf.add_NewBrowserVersionAvailable(TempHandler, FNewBrowserVersionAvailableEventToken));
    finally
      TempHandler := nil;
    end;
end;

function TCoreWebView2Environment.AddBrowserProcessExitedLoaderEvent(const aLoaderComponent : TComponent) : boolean;
var
  TempHandler : ICoreWebView2BrowserProcessExitedEventHandler;
begin
  Result := False;

  if assigned(FBaseIntf5) and (FBrowserProcessExitedEventToken.value = 0) then
    try
      TempHandler := TCoreWebView2BrowserProcessExitedEventHandler.Create(TWVLoader(aLoaderComponent));
      Result      := succeeded(FBaseIntf5.add_BrowserProcessExited(TempHandler, FBrowserProcessExitedEventToken));
    finally
      TempHandler := nil;
    end;
end;

function TCoreWebView2Environment.AddBrowserProcessExitedBrowserEvent(const aBrowserComponent : TComponent) : boolean;
var
  TempHandler : ICoreWebView2BrowserProcessExitedEventHandler;
begin
  Result := False;

  if assigned(FBaseIntf5) and (FBrowserProcessExitedEventToken.value = 0) then
    try
      TempHandler := TCoreWebView2BrowserProcessExitedEventHandler.Create(TWVBrowserBase(aBrowserComponent));          
      Result      := succeeded(FBaseIntf5.add_BrowserProcessExited(TempHandler, FBrowserProcessExitedEventToken));
    finally
      TempHandler := nil;
    end;
end;

function TCoreWebView2Environment.CreateCoreWebView2Controller(aParentWindow : THandle; const aBrowserEvents: IWVBrowserEvents) : boolean;
var
  TempHandler : ICoreWebView2CreateCoreWebView2ControllerCompletedHandler;
begin
  Result := False;

  if Initialized then
    try
      TempHandler := TCoreWebView2CreateCoreWebView2ControllerCompletedHandler.Create(aBrowserEvents);
      Result      := succeeded(FBaseIntf.CreateCoreWebView2Controller(aParentWindow, TempHandler));
    finally
      TempHandler := nil;
    end;
end;

function TCoreWebView2Environment.CreateWebResourceResponse(const aContent      : IStream;
                                                                  aStatusCode   : integer;
                                                                  aReasonPhrase : wvstring;
                                                                  aHeaders      : wvstring;
                                                            var   aResponse     : ICoreWebView2WebResourceResponse) : boolean;
begin
  Result := Initialized and
            succeeded(FBaseIntf.CreateWebResourceResponse(aContent,
                                                          aStatusCode,
                                                          PWideChar(aReasonPhrase),
                                                          PWideChar(aHeaders),
                                                          aResponse));
end;

function TCoreWebView2Environment.CreateWebResourceRequest(const aURI      : wvstring;
                                                           const aMethod   : wvstring;
                                                           const aPostData : IStream;
                                                           const aHeaders  : wvstring;
                                                           var   aRequest  : ICoreWebView2WebResourceRequest): boolean;
begin
  aRequest := nil;
  Result   := assigned(FBaseIntf2) and
              succeeded(FBaseIntf2.CreateWebResourceRequest(PWideChar(aURI),
                                                            PWideChar(aMethod),
                                                            aPostData,
                                                            PWideChar(aHeaders),
                                                            aRequest));
end;

function TCoreWebView2Environment.GetBrowserVersionInfo: wvstring;
var
  TempVersionInfo : PWideChar;
begin
  Result := '';

  if Initialized then
    begin
      TempVersionInfo := nil;

      if succeeded(FBaseIntf.Get_BrowserVersionString(TempVersionInfo)) then
        begin
          Result := TempVersionInfo;
          CoTaskMemFree(TempVersionInfo);
        end;
   end;
end;

function TCoreWebView2Environment.GetSupportsCompositionController : boolean;
begin
  Result := assigned(FBaseIntf3);
end;

function TCoreWebView2Environment.CreateCoreWebView2CompositionController(aParentWindow : THandle; const aBrowserEvents: IWVBrowserEvents) : boolean;
var
  TempHandler : ICoreWebView2CreateCoreWebView2CompositionControllerCompletedHandler;
begin
  Result := False;

  if assigned(FBaseIntf3) then
    try
      TempHandler := TCoreWebView2CreateCoreWebView2CompositionControllerCompletedHandler.Create(aBrowserEvents);
      Result      := succeeded(FBaseIntf3.CreateCoreWebView2CompositionController(aParentWindow, TempHandler));
    finally
      TempHandler := nil;
    end;
end;

function TCoreWebView2Environment.CreateCoreWebView2PointerInfo(var aPointerInfo: ICoreWebView2PointerInfo) : boolean;
begin
  Result := assigned(FBaseIntf3) and
            succeeded(FBaseIntf3.CreateCoreWebView2PointerInfo(aPointerInfo));
end;

function TCoreWebView2Environment.GetProviderForHwnd(aHandle : THandle; var aProvider: IUnknown) : boolean;
begin
  aProvider := nil;
  Result    := assigned(FBaseIntf4) and
               succeeded(FBaseIntf4.GetProviderForHwnd(aHandle, aProvider));
end;

function TCoreWebView2Environment.CreatePrintSettings(var aPrintSettings: ICoreWebView2PrintSettings): boolean;
begin
  aPrintSettings := nil;
  Result         := assigned(FBaseIntf6) and
                    succeeded(FBaseIntf6.CreatePrintSettings(aPrintSettings)) and
                    assigned(aPrintSettings);
end;

function TCoreWebView2Environment.GetUserDataFolder : wvstring;
var
  TempString : PWideChar;
begin
  Result := '';

  if assigned(FBaseIntf7) then
    begin
      TempString := nil;

      if succeeded(FBaseIntf7.Get_UserDataFolder(TempString)) then
        begin
          Result := TempString;
          CoTaskMemFree(TempString);
        end;
   end;
end;

end.

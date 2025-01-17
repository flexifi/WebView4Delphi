unit uWVEvents;

{$IFDEF FPC}{$MODE Delphi}{$ENDIF}

interface

uses
  {$IFDEF FPC}
  ActiveX,
  {$ELSE}
  Winapi.ActiveX,
  {$ENDIF}
  uWVTypeLibrary, uWVTypes;

type
  // Loader events
  TLoaderNotifyEvent                                       = {$IFNDEF FPC}reference to{$ENDIF} procedure(Sender: TObject);
  TLoaderBrowserProcessExitedEvent                         = {$IFNDEF FPC}reference to{$ENDIF} procedure(Sender: TObject; const aEnvironment: ICoreWebView2Environment; const aArgs: ICoreWebView2BrowserProcessExitedEventArgs);
  TLoaderNewBrowserVersionAvailableEvent                   = {$IFNDEF FPC}reference to{$ENDIF} procedure(Sender: TObject; const aEnvironment: ICoreWebView2Environment);

  // Browser events
  TOnExecuteScriptCompletedEvent                           = procedure(Sender: TObject; aErrorCode: HRESULT; const aResultObjectAsJson: wvstring; aExecutionID: integer) of object;
  TOnCapturePreviewCompletedEvent                          = procedure(Sender: TObject; aErrorCode: HRESULT) of object;
  TOnWebResourceResponseViewGetContentCompletedEvent       = procedure(Sender: TObject; aErrorCode: HRESULT; const aContents: IStream) of object;
  TOnGetCookiesCompletedEvent                              = procedure(Sender: TObject; aResult: HRESULT; const aCookieList: ICoreWebView2CookieList) of object;
  TOnTrySuspendCompletedEvent                              = procedure(Sender: TObject; aErrorCode: HRESULT; aIsSuccessful: boolean) of object;
  TOnPrintToPdfCompletedEvent                              = procedure(Sender: TObject; aErrorCode: HRESULT; aIsSuccessful: boolean) of object;
  TOnCallDevToolsProtocolMethodCompletedEvent              = procedure(Sender: TObject; aErrorCode: HRESULT; const aReturnObjectAsJson: wvstring; aExecutionID: integer) of object;
  TOnAddScriptToExecuteOnDocumentCreatedCompletedEvent     = procedure(Sender: TObject; aErrorCode: HRESULT; const aID: wvstring) of object;
  TOnMoveFocusRequestedEvent                               = procedure(Sender: TObject; const aController: ICoreWebView2Controller; const aArgs: ICoreWebView2MoveFocusRequestedEventArgs) of object;
  TOnAcceleratorKeyPressedEvent                            = procedure(Sender: TObject; const aController: ICoreWebView2Controller; const aArgs: ICoreWebView2AcceleratorKeyPressedEventArgs) of object;
  TOnBrowserProcessExitedEvent                             = procedure(Sender: TObject; const aEnvironment: ICoreWebView2Environment; const aArgs: ICoreWebView2BrowserProcessExitedEventArgs) of object;
  TOnNavigationStartingEvent                               = procedure(Sender: TObject; const aWebView: ICoreWebView2; const aArgs: ICoreWebView2NavigationStartingEventArgs) of object;
  TOnNavigationCompletedEvent                              = procedure(Sender: TObject; const aWebView: ICoreWebView2; const aArgs: ICoreWebView2NavigationCompletedEventArgs) of object;
  TOnSourceChangedEvent                                    = procedure(Sender: TObject; const aWebView: ICoreWebView2; const aArgs: ICoreWebView2SourceChangedEventArgs) of object;
  TOnContentLoadingEvent                                   = procedure(Sender: TObject; const aWebView: ICoreWebView2; const aArgs: ICoreWebView2ContentLoadingEventArgs) of object;
  TOnNewWindowRequestedEvent                               = procedure(Sender: TObject; const aWebView: ICoreWebView2; const aArgs: ICoreWebView2NewWindowRequestedEventArgs) of object;
  TOnWebResourceRequestedEvent                             = procedure(Sender: TObject; const aWebView: ICoreWebView2; const aArgs: ICoreWebView2WebResourceRequestedEventArgs) of object;
  TOnScriptDialogOpeningEvent                              = procedure(Sender: TObject; const aWebView: ICoreWebView2; const aArgs: ICoreWebView2ScriptDialogOpeningEventArgs) of object;
  TOnPermissionRequestedEvent                              = procedure(Sender: TObject; const aWebView: ICoreWebView2; const aArgs: ICoreWebView2PermissionRequestedEventArgs) of object;
  TOnProcessFailedEvent                                    = procedure(Sender: TObject; const aWebView: ICoreWebView2; const aArgs: ICoreWebView2ProcessFailedEventArgs) of object;
  TOnWebMessageReceivedEvent                               = procedure(Sender: TObject; const aWebView: ICoreWebView2; const aArgs: ICoreWebView2WebMessageReceivedEventArgs) of object;
  TOnDevToolsProtocolEventReceivedEvent                    = procedure(Sender: TObject; const aWebView: ICoreWebView2; const aArgs: ICoreWebView2DevToolsProtocolEventReceivedEventArgs; const aEventName : wvstring; aEventID : integer) of object;
  TOnWebResourceResponseReceivedEvent                      = procedure(Sender: TObject; const aWebView: ICoreWebView2; const aArgs: ICoreWebView2WebResourceResponseReceivedEventArgs) of object;
  TOnDOMContentLoadedEvent                                 = procedure(Sender: TObject; const aWebView: ICoreWebView2; const aArgs: ICoreWebView2DOMContentLoadedEventArgs) of object;
  TOnFrameCreatedEvent                                     = procedure(Sender: TObject; const aWebView: ICoreWebView2; const aArgs: ICoreWebView2FrameCreatedEventArgs) of object;
  TOnDownloadStartingEvent                                 = procedure(Sender: TObject; const aWebView: ICoreWebView2; const aArgs: ICoreWebView2DownloadStartingEventArgs) of object;
  TOnClientCertificateRequestedEvent                       = procedure(Sender: TObject; const aWebView: ICoreWebView2; const aArgs: ICoreWebView2ClientCertificateRequestedEventArgs) of object;
  TOnBytesReceivedChangedEvent                             = procedure(Sender: TObject; const aDownloadOperation: ICoreWebView2DownloadOperation; aDownloadID: integer) of object;
  TOnEstimatedEndTimeChangedEvent                          = procedure(Sender: TObject; const aDownloadOperation: ICoreWebView2DownloadOperation; aDownloadID: integer) of object;
  TOnDownloadStateChangedEvent                             = procedure(Sender: TObject; const aDownloadOperation: ICoreWebView2DownloadOperation; aDownloadID: integer) of object;
  TOnFrameNameChangedEvent                                 = procedure(Sender: TObject; const aFrame: ICoreWebView2Frame; aFrameID: integer) of object;
  TOnFrameDestroyedEvent                                   = procedure(Sender: TObject; const aFrame: ICoreWebView2Frame; aFrameID: integer) of object;
  TOnInitializationErrorEvent                              = procedure(Sender: TObject; aErrorCode: HRESULT; const aErrorMessage: wvstring) of object;

implementation

end.

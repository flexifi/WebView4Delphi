unit uWVTypeLibrary;

// ATTENTION !!!
// -------------
// tlibimp used a "_RemotableHandle" type for the "ParentWindow" parameter in
// ICoreWebView2Environment.CreateCoreWebView2Controller but we need a HWND
// That parameter definition has been changed from "var ParentWindow: _RemotableHandle"
// to "ParentWindow: HWND"
//
// ICoreWebView2Controller.Get_ParentWindow and ICoreWebView2Controller.Get_ParentWindow
// have also been changed. ParentWindow: wireHWND to ParentWindow: PNativeUInt
//
// Other parameters might also have a wrong type. Check the documentation.
// SEARCH FOR : ************** WEBVIEW4DELPHI **************

{$IFDEF FPC}{$MODE Delphi}{$ENDIF}


// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// $Rev: 98336 $
// File generated on 02/12/2021 11:35:30 from Type Library described below.

// ************************************************************************  //
// Type Lib: Z:\microsoft.web.webview2.1.0.1054.31.nupkg_FILES\WebView2.tlb (1)
// LIBID: {26D34152-879F-4065-BEA2-3DAA2CFADFB8}
// LCID: 0
// Helpfile: 
// HelpString: 
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// SYS_KIND: SYS_WIN64
// Errors:
//   Hint: Parameter 'object' of ICoreWebView2.AddHostObjectToScript changed to 'object_'
//   Hint: Symbol 'type' renamed to 'type_'
//   Hint: Parameter 'object' of ICoreWebView2Frame.AddHostObjectToScriptWithOrigins changed to 'object_'
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses
  {$IFDEF FPC}
  Windows, Classes, Variants, Graphics, ActiveX;
  {$ELSE}
  Winapi.Windows, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Winapi.ActiveX;
  {$ENDIF}

  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  WebView2MajorVersion = 1;
  WebView2MinorVersion = 0;

  LIBID_WebView2: TGUID = '{26D34152-879F-4065-BEA2-3DAA2CFADFB8}';

  IID_ICoreWebView2AcceleratorKeyPressedEventArgs: TGUID = '{9F760F8A-FB79-42BE-9990-7B56900FA9C7}';
  IID_ICoreWebView2AcceleratorKeyPressedEventHandler: TGUID = '{B29C7E28-FA79-41A8-8E44-65811C76DCB2}';
  IID_ICoreWebView2Controller: TGUID = '{4D00C0D1-9434-4EB6-8078-8697A560334F}';
  IID_ICoreWebView2ZoomFactorChangedEventHandler: TGUID = '{B52D71D6-C4DF-4543-A90C-64A3E60F38CB}';
  IID_ICoreWebView2MoveFocusRequestedEventHandler: TGUID = '{69035451-6DC7-4CB8-9BCE-B2BD70AD289F}';
  IID_ICoreWebView2MoveFocusRequestedEventArgs: TGUID = '{2D6AA13B-3839-4A15-92FC-D88B3C0D9C9D}';
  IID_ICoreWebView2FocusChangedEventHandler: TGUID = '{05EA24BD-6452-4926-9014-4B82B498135D}';
  IID_ICoreWebView2: TGUID = '{76ECEACB-0462-4D94-AC83-423A6793775E}';
  IID_ICoreWebView2Settings: TGUID = '{E562E4F0-D7FA-43AC-8D71-C05150499F00}';
  IID_ICoreWebView2NavigationStartingEventHandler: TGUID = '{9ADBE429-F36D-432B-9DDC-F8881FBD76E3}';
  IID_ICoreWebView2NavigationStartingEventArgs: TGUID = '{5B495469-E119-438A-9B18-7604F25F2E49}';
  IID_ICoreWebView2HttpRequestHeaders: TGUID = '{E86CAC0E-5523-465C-B536-8FB9FC8C8C60}';
  IID_ICoreWebView2HttpHeadersCollectionIterator: TGUID = '{0702FC30-F43B-47BB-AB52-A42CB552AD9F}';
  IID_ICoreWebView2ContentLoadingEventHandler: TGUID = '{364471E7-F2BE-4910-BDBA-D72077D51C4B}';
  IID_ICoreWebView2ContentLoadingEventArgs: TGUID = '{0C8A1275-9B6B-4901-87AD-70DF25BAFA6E}';
  IID_ICoreWebView2SourceChangedEventHandler: TGUID = '{3C067F9F-5388-4772-8B48-79F7EF1AB37C}';
  IID_ICoreWebView2SourceChangedEventArgs: TGUID = '{31E0E545-1DBA-4266-8914-F63848A1F7D7}';
  IID_ICoreWebView2HistoryChangedEventHandler: TGUID = '{C79A420C-EFD9-4058-9295-3E8B4BCAB645}';
  IID_ICoreWebView2NavigationCompletedEventHandler: TGUID = '{D33A35BF-1C49-4F98-93AB-006E0533FE1C}';
  IID_ICoreWebView2NavigationCompletedEventArgs: TGUID = '{30D68B7D-20D9-4752-A9CA-EC8448FBB5C1}';
  IID_ICoreWebView2ScriptDialogOpeningEventHandler: TGUID = '{EF381BF9-AFA8-4E37-91C4-8AC48524BDFB}';
  IID_ICoreWebView2ScriptDialogOpeningEventArgs: TGUID = '{7390BB70-ABE0-4843-9529-F143B31B03D6}';
  IID_ICoreWebView2Deferral: TGUID = '{C10E7F7B-B585-46F0-A623-8BEFBF3E4EE0}';
  IID_ICoreWebView2PermissionRequestedEventHandler: TGUID = '{15E1C6A3-C72A-4DF3-91D7-D097FBEC6BFD}';
  IID_ICoreWebView2PermissionRequestedEventArgs: TGUID = '{973AE2EF-FF18-4894-8FB2-3C758F046810}';
  IID_ICoreWebView2ProcessFailedEventHandler: TGUID = '{79E0AEA4-990B-42D9-AA1D-0FCC2E5BC7F1}';
  IID_ICoreWebView2ProcessFailedEventArgs: TGUID = '{8155A9A4-1474-4A86-8CAE-151B0FA6B8CA}';
  IID_ICoreWebView2AddScriptToExecuteOnDocumentCreatedCompletedHandler: TGUID = '{B99369F3-9B11-47B5-BC6F-8E7895FCEA17}';
  IID_ICoreWebView2ExecuteScriptCompletedHandler: TGUID = '{49511172-CC67-4BCA-9923-137112F4C4CC}';
  IID_ICoreWebView2CapturePreviewCompletedHandler: TGUID = '{697E05E9-3D8F-45FA-96F4-8FFE1EDEDAF5}';
  IID_ICoreWebView2WebMessageReceivedEventHandler: TGUID = '{57213F19-00E6-49FA-8E07-898EA01ECBD2}';
  IID_ICoreWebView2WebMessageReceivedEventArgs: TGUID = '{0F99A40C-E962-4207-9E92-E3D542EFF849}';
  IID_ICoreWebView2CallDevToolsProtocolMethodCompletedHandler: TGUID = '{5C4889F0-5EF6-4C5A-952C-D8F1B92D0574}';
  IID_ICoreWebView2DevToolsProtocolEventReceiver: TGUID = '{B32CA51A-8371-45E9-9317-AF021D080367}';
  IID_ICoreWebView2DevToolsProtocolEventReceivedEventHandler: TGUID = '{E2FDA4BE-5456-406C-A261-3D452138362C}';
  IID_ICoreWebView2DevToolsProtocolEventReceivedEventArgs: TGUID = '{653C2959-BB3A-4377-8632-B58ADA4E66C4}';
  IID_ICoreWebView2NewWindowRequestedEventHandler: TGUID = '{D4C185FE-C81C-4989-97AF-2D3FA7AB5651}';
  IID_ICoreWebView2NewWindowRequestedEventArgs: TGUID = '{34ACB11C-FC37-4418-9132-F9C21D1EAFB9}';
  IID_ICoreWebView2WindowFeatures: TGUID = '{5EAF559F-B46E-4397-8860-E422F287FF1E}';
  IID_ICoreWebView2DocumentTitleChangedEventHandler: TGUID = '{F5F2B923-953E-4042-9F95-F3A118E1AFD4}';
  IID_ICoreWebView2ContainsFullScreenElementChangedEventHandler: TGUID = '{E45D98B1-AFEF-45BE-8BAF-6C7728867F73}';
  IID_ICoreWebView2WebResourceRequestedEventHandler: TGUID = '{AB00B74C-15F1-4646-80E8-E76341D25D71}';
  IID_ICoreWebView2WebResourceRequestedEventArgs: TGUID = '{453E667F-12C7-49D4-BE6D-DDBE7956F57A}';
  IID_ICoreWebView2WebResourceRequest: TGUID = '{97055CD4-512C-4264-8B5F-E3F446CEA6A5}';
  IID_ICoreWebView2WebResourceResponse: TGUID = '{AAFCC94F-FA27-48FD-97DF-830EF75AAEC9}';
  IID_ICoreWebView2HttpResponseHeaders: TGUID = '{03C5FF5A-9B45-4A88-881C-89A9F328619C}';
  IID_ICoreWebView2WindowCloseRequestedEventHandler: TGUID = '{5C19E9E0-092F-486B-AFFA-CA8231913039}';
  IID_ICoreWebView2_2: TGUID = '{9E8F0CF8-E670-4B5E-B2BC-73E061E3184C}';
  IID_ICoreWebView2WebResourceResponseReceivedEventHandler: TGUID = '{7DE9898A-24F5-40C3-A2DE-D4F458E69828}';
  IID_ICoreWebView2WebResourceResponseReceivedEventArgs: TGUID = '{D1DB483D-6796-4B8B-80FC-13712BB716F4}';
  IID_ICoreWebView2WebResourceResponseView: TGUID = '{79701053-7759-4162-8F7D-F1B3F084928D}';
  IID_ICoreWebView2WebResourceResponseViewGetContentCompletedHandler: TGUID = '{875738E1-9FA2-40E3-8B74-2E8972DD6FE7}';
  IID_ICoreWebView2DOMContentLoadedEventHandler: TGUID = '{4BAC7E9C-199E-49ED-87ED-249303ACF019}';
  IID_ICoreWebView2DOMContentLoadedEventArgs: TGUID = '{16B1E21A-C503-44F2-84C9-70ABA5031283}';
  IID_ICoreWebView2CookieManager: TGUID = '{177CD9E7-B6F5-451A-94A0-5D7A3A4C4141}';
  IID_ICoreWebView2Cookie: TGUID = '{AD26D6BE-1486-43E6-BF87-A2034006CA21}';
  IID_ICoreWebView2GetCookiesCompletedHandler: TGUID = '{5A4F5069-5C15-47C3-8646-F4DE1C116670}';
  IID_ICoreWebView2CookieList: TGUID = '{F7F6F714-5D2A-43C6-9503-346ECE02D186}';
  IID_ICoreWebView2Environment: TGUID = '{B96D755E-0319-4E92-A296-23436F46A1FC}';
  IID_ICoreWebView2CreateCoreWebView2ControllerCompletedHandler: TGUID = '{6C4819F3-C9B7-4260-8127-C9F5BDE7F68C}';
  IID_ICoreWebView2NewBrowserVersionAvailableEventHandler: TGUID = '{F9A2976E-D34E-44FC-ADEE-81B6B57CA914}';
  IID_ICoreWebView2_3: TGUID = '{A0D6DF20-3B92-416D-AA0C-437A9C727857}';
  IID_ICoreWebView2TrySuspendCompletedHandler: TGUID = '{00F206A7-9D17-4605-91F6-4E8E4DE192E3}';
  IID_ICoreWebView2_4: TGUID = '{20D02D59-6DF2-42DC-BD06-F98A694B1302}';
  IID_ICoreWebView2FrameCreatedEventHandler: TGUID = '{38059770-9BAA-11EB-A8B3-0242AC130003}';
  IID_ICoreWebView2FrameCreatedEventArgs: TGUID = '{4D6E7B5E-9BAA-11EB-A8B3-0242AC130003}';
  IID_ICoreWebView2Frame: TGUID = '{F1131A5E-9BA9-11EB-A8B3-0242AC130003}';
  IID_ICoreWebView2FrameNameChangedEventHandler: TGUID = '{435C7DC8-9BAA-11EB-A8B3-0242AC130003}';
  IID_ICoreWebView2FrameDestroyedEventHandler: TGUID = '{59DD7B4C-9BAA-11EB-A8B3-0242AC130003}';
  IID_ICoreWebView2DownloadStartingEventHandler: TGUID = '{EFEDC989-C396-41CA-83F7-07F845A55724}';
  IID_ICoreWebView2DownloadStartingEventArgs: TGUID = '{E99BBE21-43E9-4544-A732-282764EAFA60}';
  IID_ICoreWebView2DownloadOperation: TGUID = '{3D6B6CF2-AFE1-44C7-A995-C65117714336}';
  IID_ICoreWebView2BytesReceivedChangedEventHandler: TGUID = '{828E8AB6-D94C-4264-9CEF-5217170D6251}';
  IID_ICoreWebView2EstimatedEndTimeChangedEventHandler: TGUID = '{28F0D425-93FE-4E63-9F8D-2AEEC6D3BA1E}';
  IID_ICoreWebView2StateChangedEventHandler: TGUID = '{81336594-7EDE-4BA9-BF71-ACF0A95B58DD}';
  IID_ICoreWebView2_5: TGUID = '{BEDB11B8-D63C-11EB-B8BC-0242AC130003}';
  IID_ICoreWebView2ClientCertificateRequestedEventHandler: TGUID = '{D7175BA2-BCC3-11EB-8529-0242AC130003}';
  IID_ICoreWebView2ClientCertificateRequestedEventArgs: TGUID = '{BC59DB28-BCC3-11EB-8529-0242AC130003}';
  IID_ICoreWebView2StringCollection: TGUID = '{F41F3F8A-BCC3-11EB-8529-0242AC130003}';
  IID_ICoreWebView2ClientCertificateCollection: TGUID = '{EF5674D2-BCC3-11EB-8529-0242AC130003}';
  IID_ICoreWebView2ClientCertificate: TGUID = '{E7188076-BCC3-11EB-8529-0242AC130003}';
  IID_ICoreWebView2_6: TGUID = '{499AADAC-D92C-4589-8A75-111BFC167795}';
  IID_ICoreWebView2_7: TGUID = '{79C24D83-09A3-45AE-9418-487F32A58740}';
  IID_ICoreWebView2PrintSettings: TGUID = '{377F3721-C74E-48CA-8DB1-DF68E51D60E2}';
  IID_ICoreWebView2PrintToPdfCompletedHandler: TGUID = '{CCF1EF04-FD8E-4D5F-B2DE-0983E41B8C36}';
  IID_ICoreWebView2BrowserProcessExitedEventArgs: TGUID = '{1F00663F-AF8C-4782-9CDD-DD01C52E34CB}';
  IID_ICoreWebView2BrowserProcessExitedEventHandler: TGUID = '{FA504257-A216-4911-A860-FE8825712861}';
  IID_ICoreWebView2CompositionController: TGUID = '{3DF9B733-B9AE-4A15-86B4-EB9EE9826469}';
  IID_ICoreWebView2PointerInfo: TGUID = '{E6995887-D10D-4F5D-9359-4CE46E4F96B9}';
  IID_ICoreWebView2CursorChangedEventHandler: TGUID = '{9DA43CCC-26E1-4DAD-B56C-D8961C94C571}';
  IID_ICoreWebView2CompositionController2: TGUID = '{0B6A3D24-49CB-4806-BA20-B5E0734A7B26}';
  IID_ICoreWebView2Controller2: TGUID = '{C979903E-D4CA-4228-92EB-47EE3FA96EAB}';
  IID_ICoreWebView2Controller3: TGUID = '{F9614724-5D2B-41DC-AEF7-73D62B51543B}';
  IID_ICoreWebView2RasterizationScaleChangedEventHandler: TGUID = '{9C98C8B1-AC53-427E-A345-3049B5524BBE}';
  IID_ICoreWebView2CreateCoreWebView2CompositionControllerCompletedHandler: TGUID = '{02FAB84B-1428-4FB7-AD45-1B2E64736184}';
  IID_ICoreWebView2CreateCoreWebView2EnvironmentCompletedHandler: TGUID = '{4E8A3389-C9D8-4BD2-B6B5-124FEE6CC14D}';
  IID_ICoreWebView2Environment2: TGUID = '{41F3632B-5EF4-404F-AD82-2D606C5A9A21}';
  IID_ICoreWebView2Environment3: TGUID = '{80A22AE3-BE7C-4CE2-AFE1-5A50056CDEEB}';
  IID_ICoreWebView2Environment4: TGUID = '{20944379-6DCF-41D6-A0A0-ABC0FC50DE0D}';
  IID_ICoreWebView2Environment5: TGUID = '{319E423D-E0D7-4B8D-9254-AE9475DE9B17}';
  IID_ICoreWebView2Environment6: TGUID = '{E59EE362-ACBD-4857-9A8E-D3644D9459A9}';
  IID_ICoreWebView2Environment7: TGUID = '{43C22296-3BBD-43A4-9C00-5C0DF6DD29A2}';
  IID_ICoreWebView2EnvironmentOptions: TGUID = '{2FDE08A8-1E9A-4766-8C05-95A9CEB9D1C5}';
  IID_ICoreWebView2FrameInfo: TGUID = '{DA86B8A1-BDF3-4F11-9955-528CEFA59727}';
  IID_ICoreWebView2FrameInfoCollection: TGUID = '{8F834154-D38E-4D90-AFFB-6800A7272839}';
  IID_ICoreWebView2FrameInfoCollectionIterator: TGUID = '{1BF89E2D-1B2B-4629-B28F-05099B41BB03}';
  IID_ICoreWebView2NewWindowRequestedEventArgs2: TGUID = '{BBC7BAED-74C6-4C92-B63A-7F5AEAE03DE3}';
  IID_ICoreWebView2ProcessFailedEventArgs2: TGUID = '{4DAB9422-46FA-4C3E-A5D2-41D2071D3680}';
  IID_ICoreWebView2Settings2: TGUID = '{EE9A0F68-F46C-4E32-AC23-EF8CAC224D2A}';
  IID_ICoreWebView2Settings3: TGUID = '{FDB5AB74-AF33-4854-84F0-0A631DEB5EBA}';
  IID_ICoreWebView2Settings4: TGUID = '{CB56846C-4168-4D53-B04F-03B6D6796FF2}';
  IID_ICoreWebView2Settings5: TGUID = '{183E7052-1D03-43A0-AB99-98E043B66B39}';
  IID_ICoreWebView2Settings6: TGUID = '{11CB3ACD-9BC8-43B8-83BF-F40753714F87}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum COREWEBVIEW2_KEY_EVENT_KIND
type
  COREWEBVIEW2_KEY_EVENT_KIND = TOleEnum;
const
  COREWEBVIEW2_KEY_EVENT_KIND_KEY_DOWN = $00000000;
  COREWEBVIEW2_KEY_EVENT_KIND_KEY_UP = $00000001;
  COREWEBVIEW2_KEY_EVENT_KIND_SYSTEM_KEY_DOWN = $00000002;
  COREWEBVIEW2_KEY_EVENT_KIND_SYSTEM_KEY_UP = $00000003;

// Constants for enum COREWEBVIEW2_MOVE_FOCUS_REASON
type
  COREWEBVIEW2_MOVE_FOCUS_REASON = TOleEnum;
const
  COREWEBVIEW2_MOVE_FOCUS_REASON_PROGRAMMATIC = $00000000;
  COREWEBVIEW2_MOVE_FOCUS_REASON_NEXT = $00000001;
  COREWEBVIEW2_MOVE_FOCUS_REASON_PREVIOUS = $00000002;

// Constants for enum COREWEBVIEW2_WEB_ERROR_STATUS
type
  COREWEBVIEW2_WEB_ERROR_STATUS = TOleEnum;
const
  COREWEBVIEW2_WEB_ERROR_STATUS_UNKNOWN = $00000000;
  COREWEBVIEW2_WEB_ERROR_STATUS_CERTIFICATE_COMMON_NAME_IS_INCORRECT = $00000001;
  COREWEBVIEW2_WEB_ERROR_STATUS_CERTIFICATE_EXPIRED = $00000002;
  COREWEBVIEW2_WEB_ERROR_STATUS_CLIENT_CERTIFICATE_CONTAINS_ERRORS = $00000003;
  COREWEBVIEW2_WEB_ERROR_STATUS_CERTIFICATE_REVOKED = $00000004;
  COREWEBVIEW2_WEB_ERROR_STATUS_CERTIFICATE_IS_INVALID = $00000005;
  COREWEBVIEW2_WEB_ERROR_STATUS_SERVER_UNREACHABLE = $00000006;
  COREWEBVIEW2_WEB_ERROR_STATUS_TIMEOUT = $00000007;
  COREWEBVIEW2_WEB_ERROR_STATUS_ERROR_HTTP_INVALID_SERVER_RESPONSE = $00000008;
  COREWEBVIEW2_WEB_ERROR_STATUS_CONNECTION_ABORTED = $00000009;
  COREWEBVIEW2_WEB_ERROR_STATUS_CONNECTION_RESET = $0000000A;
  COREWEBVIEW2_WEB_ERROR_STATUS_DISCONNECTED = $0000000B;
  COREWEBVIEW2_WEB_ERROR_STATUS_CANNOT_CONNECT = $0000000C;
  COREWEBVIEW2_WEB_ERROR_STATUS_HOST_NAME_NOT_RESOLVED = $0000000D;
  COREWEBVIEW2_WEB_ERROR_STATUS_OPERATION_CANCELED = $0000000E;
  COREWEBVIEW2_WEB_ERROR_STATUS_REDIRECT_FAILED = $0000000F;
  COREWEBVIEW2_WEB_ERROR_STATUS_UNEXPECTED_ERROR = $00000010;

// Constants for enum COREWEBVIEW2_SCRIPT_DIALOG_KIND
type
  COREWEBVIEW2_SCRIPT_DIALOG_KIND = TOleEnum;
const
  COREWEBVIEW2_SCRIPT_DIALOG_KIND_ALERT = $00000000;
  COREWEBVIEW2_SCRIPT_DIALOG_KIND_CONFIRM = $00000001;
  COREWEBVIEW2_SCRIPT_DIALOG_KIND_PROMPT = $00000002;
  COREWEBVIEW2_SCRIPT_DIALOG_KIND_BEFOREUNLOAD = $00000003;

// Constants for enum COREWEBVIEW2_PERMISSION_KIND
type
  COREWEBVIEW2_PERMISSION_KIND = TOleEnum;
const
  COREWEBVIEW2_PERMISSION_KIND_UNKNOWN_PERMISSION = $00000000;
  COREWEBVIEW2_PERMISSION_KIND_MICROPHONE = $00000001;
  COREWEBVIEW2_PERMISSION_KIND_CAMERA = $00000002;
  COREWEBVIEW2_PERMISSION_KIND_GEOLOCATION = $00000003;
  COREWEBVIEW2_PERMISSION_KIND_NOTIFICATIONS = $00000004;
  COREWEBVIEW2_PERMISSION_KIND_OTHER_SENSORS = $00000005;
  COREWEBVIEW2_PERMISSION_KIND_CLIPBOARD_READ = $00000006;

// Constants for enum COREWEBVIEW2_PERMISSION_STATE
type
  COREWEBVIEW2_PERMISSION_STATE = TOleEnum;
const
  COREWEBVIEW2_PERMISSION_STATE_DEFAULT = $00000000;
  COREWEBVIEW2_PERMISSION_STATE_ALLOW = $00000001;
  COREWEBVIEW2_PERMISSION_STATE_DENY = $00000002;

// Constants for enum COREWEBVIEW2_PROCESS_FAILED_KIND
type
  COREWEBVIEW2_PROCESS_FAILED_KIND = TOleEnum;
const
  COREWEBVIEW2_PROCESS_FAILED_KIND_BROWSER_PROCESS_EXITED = $00000000;
  COREWEBVIEW2_PROCESS_FAILED_KIND_RENDER_PROCESS_EXITED = $00000001;
  COREWEBVIEW2_PROCESS_FAILED_KIND_RENDER_PROCESS_UNRESPONSIVE = $00000002;
  COREWEBVIEW2_PROCESS_FAILED_KIND_FRAME_RENDER_PROCESS_EXITED = $00000003;
  COREWEBVIEW2_PROCESS_FAILED_KIND_UTILITY_PROCESS_EXITED = $00000004;
  COREWEBVIEW2_PROCESS_FAILED_KIND_SANDBOX_HELPER_PROCESS_EXITED = $00000005;
  COREWEBVIEW2_PROCESS_FAILED_KIND_GPU_PROCESS_EXITED = $00000006;
  COREWEBVIEW2_PROCESS_FAILED_KIND_PPAPI_PLUGIN_PROCESS_EXITED = $00000007;
  COREWEBVIEW2_PROCESS_FAILED_KIND_PPAPI_BROKER_PROCESS_EXITED = $00000008;
  COREWEBVIEW2_PROCESS_FAILED_KIND_UNKNOWN_PROCESS_EXITED = $00000009;

// Constants for enum COREWEBVIEW2_CAPTURE_PREVIEW_IMAGE_FORMAT
type
  COREWEBVIEW2_CAPTURE_PREVIEW_IMAGE_FORMAT = TOleEnum;
const
  COREWEBVIEW2_CAPTURE_PREVIEW_IMAGE_FORMAT_PNG = $00000000;
  COREWEBVIEW2_CAPTURE_PREVIEW_IMAGE_FORMAT_JPEG = $00000001;

// Constants for enum COREWEBVIEW2_WEB_RESOURCE_CONTEXT
type
  COREWEBVIEW2_WEB_RESOURCE_CONTEXT = TOleEnum;
const
  COREWEBVIEW2_WEB_RESOURCE_CONTEXT_ALL = $00000000;
  COREWEBVIEW2_WEB_RESOURCE_CONTEXT_DOCUMENT = $00000001;
  COREWEBVIEW2_WEB_RESOURCE_CONTEXT_STYLESHEET = $00000002;
  COREWEBVIEW2_WEB_RESOURCE_CONTEXT_IMAGE = $00000003;
  COREWEBVIEW2_WEB_RESOURCE_CONTEXT_MEDIA = $00000004;
  COREWEBVIEW2_WEB_RESOURCE_CONTEXT_FONT = $00000005;
  COREWEBVIEW2_WEB_RESOURCE_CONTEXT_SCRIPT = $00000006;
  COREWEBVIEW2_WEB_RESOURCE_CONTEXT_XML_HTTP_REQUEST = $00000007;
  COREWEBVIEW2_WEB_RESOURCE_CONTEXT_FETCH = $00000008;
  COREWEBVIEW2_WEB_RESOURCE_CONTEXT_TEXT_TRACK = $00000009;
  COREWEBVIEW2_WEB_RESOURCE_CONTEXT_EVENT_SOURCE = $0000000A;
  COREWEBVIEW2_WEB_RESOURCE_CONTEXT_WEBSOCKET = $0000000B;
  COREWEBVIEW2_WEB_RESOURCE_CONTEXT_MANIFEST = $0000000C;
  COREWEBVIEW2_WEB_RESOURCE_CONTEXT_SIGNED_EXCHANGE = $0000000D;
  COREWEBVIEW2_WEB_RESOURCE_CONTEXT_PING = $0000000E;
  COREWEBVIEW2_WEB_RESOURCE_CONTEXT_CSP_VIOLATION_REPORT = $0000000F;
  COREWEBVIEW2_WEB_RESOURCE_CONTEXT_OTHER = $00000010;

// Constants for enum COREWEBVIEW2_COOKIE_SAME_SITE_KIND
type
  COREWEBVIEW2_COOKIE_SAME_SITE_KIND = TOleEnum;
const
  COREWEBVIEW2_COOKIE_SAME_SITE_KIND_NONE = $00000000;
  COREWEBVIEW2_COOKIE_SAME_SITE_KIND_LAX = $00000001;
  COREWEBVIEW2_COOKIE_SAME_SITE_KIND_STRICT = $00000002;

// Constants for enum COREWEBVIEW2_HOST_RESOURCE_ACCESS_KIND
type
  COREWEBVIEW2_HOST_RESOURCE_ACCESS_KIND = TOleEnum;
const
  COREWEBVIEW2_HOST_RESOURCE_ACCESS_KIND_DENY = $00000000;
  COREWEBVIEW2_HOST_RESOURCE_ACCESS_KIND_ALLOW = $00000001;
  COREWEBVIEW2_HOST_RESOURCE_ACCESS_KIND_DENY_CORS = $00000002;

// Constants for enum COREWEBVIEW2_DOWNLOAD_STATE
type
  COREWEBVIEW2_DOWNLOAD_STATE = TOleEnum;
const
  COREWEBVIEW2_DOWNLOAD_STATE_IN_PROGRESS = $00000000;
  COREWEBVIEW2_DOWNLOAD_STATE_INTERRUPTED = $00000001;
  COREWEBVIEW2_DOWNLOAD_STATE_COMPLETED = $00000002;

// Constants for enum COREWEBVIEW2_DOWNLOAD_INTERRUPT_REASON
type
  COREWEBVIEW2_DOWNLOAD_INTERRUPT_REASON = TOleEnum;
const
  COREWEBVIEW2_DOWNLOAD_INTERRUPT_REASON_NONE = $00000000;
  COREWEBVIEW2_DOWNLOAD_INTERRUPT_REASON_FILE_FAILED = $00000001;
  COREWEBVIEW2_DOWNLOAD_INTERRUPT_REASON_FILE_ACCESS_DENIED = $00000002;
  COREWEBVIEW2_DOWNLOAD_INTERRUPT_REASON_FILE_NO_SPACE = $00000003;
  COREWEBVIEW2_DOWNLOAD_INTERRUPT_REASON_FILE_NAME_TOO_LONG = $00000004;
  COREWEBVIEW2_DOWNLOAD_INTERRUPT_REASON_FILE_TOO_LARGE = $00000005;
  COREWEBVIEW2_DOWNLOAD_INTERRUPT_REASON_FILE_MALICIOUS = $00000006;
  COREWEBVIEW2_DOWNLOAD_INTERRUPT_REASON_FILE_TRANSIENT_ERROR = $00000007;
  COREWEBVIEW2_DOWNLOAD_INTERRUPT_REASON_FILE_BLOCKED_BY_POLICY = $00000008;
  COREWEBVIEW2_DOWNLOAD_INTERRUPT_REASON_FILE_SECURITY_CHECK_FAILED = $00000009;
  COREWEBVIEW2_DOWNLOAD_INTERRUPT_REASON_FILE_TOO_SHORT = $0000000A;
  COREWEBVIEW2_DOWNLOAD_INTERRUPT_REASON_FILE_HASH_MISMATCH = $0000000B;
  COREWEBVIEW2_DOWNLOAD_INTERRUPT_REASON_NETWORK_FAILED = $0000000C;
  COREWEBVIEW2_DOWNLOAD_INTERRUPT_REASON_NETWORK_TIMEOUT = $0000000D;
  COREWEBVIEW2_DOWNLOAD_INTERRUPT_REASON_NETWORK_DISCONNECTED = $0000000E;
  COREWEBVIEW2_DOWNLOAD_INTERRUPT_REASON_NETWORK_SERVER_DOWN = $0000000F;
  COREWEBVIEW2_DOWNLOAD_INTERRUPT_REASON_NETWORK_INVALID_REQUEST = $00000010;
  COREWEBVIEW2_DOWNLOAD_INTERRUPT_REASON_SERVER_FAILED = $00000011;
  COREWEBVIEW2_DOWNLOAD_INTERRUPT_REASON_SERVER_NO_RANGE = $00000012;
  COREWEBVIEW2_DOWNLOAD_INTERRUPT_REASON_SERVER_BAD_CONTENT = $00000013;
  COREWEBVIEW2_DOWNLOAD_INTERRUPT_REASON_SERVER_UNAUTHORIZED = $00000014;
  COREWEBVIEW2_DOWNLOAD_INTERRUPT_REASON_SERVER_CERTIFICATE_PROBLEM = $00000015;
  COREWEBVIEW2_DOWNLOAD_INTERRUPT_REASON_SERVER_FORBIDDEN = $00000016;
  COREWEBVIEW2_DOWNLOAD_INTERRUPT_REASON_SERVER_UNEXPECTED_RESPONSE = $00000017;
  COREWEBVIEW2_DOWNLOAD_INTERRUPT_REASON_SERVER_CONTENT_LENGTH_MISMATCH = $00000018;
  COREWEBVIEW2_DOWNLOAD_INTERRUPT_REASON_SERVER_CROSS_ORIGIN_REDIRECT = $00000019;
  COREWEBVIEW2_DOWNLOAD_INTERRUPT_REASON_USER_CANCELED = $0000001A;
  COREWEBVIEW2_DOWNLOAD_INTERRUPT_REASON_USER_SHUTDOWN = $0000001B;
  COREWEBVIEW2_DOWNLOAD_INTERRUPT_REASON_USER_PAUSED = $0000001C;
  COREWEBVIEW2_DOWNLOAD_INTERRUPT_REASON_DOWNLOAD_PROCESS_CRASHED = $0000001D;

// Constants for enum COREWEBVIEW2_CLIENT_CERTIFICATE_KIND
type
  COREWEBVIEW2_CLIENT_CERTIFICATE_KIND = TOleEnum;
const
  COREWEBVIEW2_CLIENT_CERTIFICATE_KIND_SMART_CARD = $00000000;
  COREWEBVIEW2_CLIENT_CERTIFICATE_KIND_PIN = $00000001;
  COREWEBVIEW2_CLIENT_CERTIFICATE_KIND_OTHER = $00000002;

// Constants for enum COREWEBVIEW2_PRINT_ORIENTATION
type
  COREWEBVIEW2_PRINT_ORIENTATION = TOleEnum;
const
  COREWEBVIEW2_PRINT_ORIENTATION_PORTRAIT = $00000000;
  COREWEBVIEW2_PRINT_ORIENTATION_LANDSCAPE = $00000001;

// Constants for enum COREWEBVIEW2_BROWSER_PROCESS_EXIT_KIND
type
  COREWEBVIEW2_BROWSER_PROCESS_EXIT_KIND = TOleEnum;
const
  COREWEBVIEW2_BROWSER_PROCESS_EXIT_KIND_NORMAL = $00000000;
  COREWEBVIEW2_BROWSER_PROCESS_EXIT_KIND_FAILED = $00000001;

// Constants for enum COREWEBVIEW2_MOUSE_EVENT_KIND
type
  COREWEBVIEW2_MOUSE_EVENT_KIND = TOleEnum;
const
  COREWEBVIEW2_MOUSE_EVENT_KIND_HORIZONTAL_WHEEL = $0000020E;
  COREWEBVIEW2_MOUSE_EVENT_KIND_LEFT_BUTTON_DOUBLE_CLICK = $00000203;
  COREWEBVIEW2_MOUSE_EVENT_KIND_LEFT_BUTTON_DOWN = $00000201;
  COREWEBVIEW2_MOUSE_EVENT_KIND_LEFT_BUTTON_UP = $00000202;
  COREWEBVIEW2_MOUSE_EVENT_KIND_LEAVE = $000002A3;
  COREWEBVIEW2_MOUSE_EVENT_KIND_MIDDLE_BUTTON_DOUBLE_CLICK = $00000209;
  COREWEBVIEW2_MOUSE_EVENT_KIND_MIDDLE_BUTTON_DOWN = $00000207;
  COREWEBVIEW2_MOUSE_EVENT_KIND_MIDDLE_BUTTON_UP = $00000208;
  COREWEBVIEW2_MOUSE_EVENT_KIND_MOVE = $00000200;
  COREWEBVIEW2_MOUSE_EVENT_KIND_RIGHT_BUTTON_DOUBLE_CLICK = $00000206;
  COREWEBVIEW2_MOUSE_EVENT_KIND_RIGHT_BUTTON_DOWN = $00000204;
  COREWEBVIEW2_MOUSE_EVENT_KIND_RIGHT_BUTTON_UP = $00000205;
  COREWEBVIEW2_MOUSE_EVENT_KIND_WHEEL = $0000020A;
  COREWEBVIEW2_MOUSE_EVENT_KIND_X_BUTTON_DOUBLE_CLICK = $0000020D;
  COREWEBVIEW2_MOUSE_EVENT_KIND_X_BUTTON_DOWN = $0000020B;
  COREWEBVIEW2_MOUSE_EVENT_KIND_X_BUTTON_UP = $0000020C;

// Constants for enum COREWEBVIEW2_MOUSE_EVENT_VIRTUAL_KEYS
type
  COREWEBVIEW2_MOUSE_EVENT_VIRTUAL_KEYS = TOleEnum;
const
  COREWEBVIEW2_MOUSE_EVENT_VIRTUAL_KEYS_NONE = $00000000;
  COREWEBVIEW2_MOUSE_EVENT_VIRTUAL_KEYS_LEFT_BUTTON = $00000001;
  COREWEBVIEW2_MOUSE_EVENT_VIRTUAL_KEYS_RIGHT_BUTTON = $00000002;
  COREWEBVIEW2_MOUSE_EVENT_VIRTUAL_KEYS_SHIFT = $00000004;
  COREWEBVIEW2_MOUSE_EVENT_VIRTUAL_KEYS_CONTROL = $00000008;
  COREWEBVIEW2_MOUSE_EVENT_VIRTUAL_KEYS_MIDDLE_BUTTON = $00000010;
  COREWEBVIEW2_MOUSE_EVENT_VIRTUAL_KEYS_X_BUTTON1 = $00000020;
  COREWEBVIEW2_MOUSE_EVENT_VIRTUAL_KEYS_X_BUTTON2 = $00000040;

// Constants for enum COREWEBVIEW2_POINTER_EVENT_KIND
type
  COREWEBVIEW2_POINTER_EVENT_KIND = TOleEnum;
const
  COREWEBVIEW2_POINTER_EVENT_KIND_ACTIVATE = $0000024B;
  COREWEBVIEW2_POINTER_EVENT_KIND_DOWN = $00000246;
  COREWEBVIEW2_POINTER_EVENT_KIND_ENTER = $00000249;
  COREWEBVIEW2_POINTER_EVENT_KIND_LEAVE = $0000024A;
  COREWEBVIEW2_POINTER_EVENT_KIND_UP = $00000247;
  COREWEBVIEW2_POINTER_EVENT_KIND_UPDATE = $00000245;

// Constants for enum COREWEBVIEW2_BOUNDS_MODE
type
  COREWEBVIEW2_BOUNDS_MODE = TOleEnum;
const
  COREWEBVIEW2_BOUNDS_MODE_USE_RAW_PIXELS = $00000000;
  COREWEBVIEW2_BOUNDS_MODE_USE_RASTERIZATION_SCALE = $00000001;

// Constants for enum COREWEBVIEW2_PROCESS_FAILED_REASON
type
  COREWEBVIEW2_PROCESS_FAILED_REASON = TOleEnum;
const
  COREWEBVIEW2_PROCESS_FAILED_REASON_UNEXPECTED = $00000000;
  COREWEBVIEW2_PROCESS_FAILED_REASON_UNRESPONSIVE = $00000001;
  COREWEBVIEW2_PROCESS_FAILED_REASON_TERMINATED = $00000002;
  COREWEBVIEW2_PROCESS_FAILED_REASON_CRASHED = $00000003;
  COREWEBVIEW2_PROCESS_FAILED_REASON_LAUNCH_FAILED = $00000004;
  COREWEBVIEW2_PROCESS_FAILED_REASON_OUT_OF_MEMORY = $00000005;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  ICoreWebView2AcceleratorKeyPressedEventArgs = interface;
  ICoreWebView2AcceleratorKeyPressedEventHandler = interface;
  ICoreWebView2Controller = interface;
  ICoreWebView2ZoomFactorChangedEventHandler = interface;
  ICoreWebView2MoveFocusRequestedEventHandler = interface;
  ICoreWebView2MoveFocusRequestedEventArgs = interface;
  ICoreWebView2FocusChangedEventHandler = interface;
  ICoreWebView2 = interface;
  ICoreWebView2Settings = interface;
  ICoreWebView2NavigationStartingEventHandler = interface;
  ICoreWebView2NavigationStartingEventArgs = interface;
  ICoreWebView2HttpRequestHeaders = interface;
  ICoreWebView2HttpHeadersCollectionIterator = interface;
  ICoreWebView2ContentLoadingEventHandler = interface;
  ICoreWebView2ContentLoadingEventArgs = interface;
  ICoreWebView2SourceChangedEventHandler = interface;
  ICoreWebView2SourceChangedEventArgs = interface;
  ICoreWebView2HistoryChangedEventHandler = interface;
  ICoreWebView2NavigationCompletedEventHandler = interface;
  ICoreWebView2NavigationCompletedEventArgs = interface;
  ICoreWebView2ScriptDialogOpeningEventHandler = interface;
  ICoreWebView2ScriptDialogOpeningEventArgs = interface;
  ICoreWebView2Deferral = interface;
  ICoreWebView2PermissionRequestedEventHandler = interface;
  ICoreWebView2PermissionRequestedEventArgs = interface;
  ICoreWebView2ProcessFailedEventHandler = interface;
  ICoreWebView2ProcessFailedEventArgs = interface;
  ICoreWebView2AddScriptToExecuteOnDocumentCreatedCompletedHandler = interface;
  ICoreWebView2ExecuteScriptCompletedHandler = interface;
  ICoreWebView2CapturePreviewCompletedHandler = interface;
  ICoreWebView2WebMessageReceivedEventHandler = interface;
  ICoreWebView2WebMessageReceivedEventArgs = interface;
  ICoreWebView2CallDevToolsProtocolMethodCompletedHandler = interface;
  ICoreWebView2DevToolsProtocolEventReceiver = interface;
  ICoreWebView2DevToolsProtocolEventReceivedEventHandler = interface;
  ICoreWebView2DevToolsProtocolEventReceivedEventArgs = interface;
  ICoreWebView2NewWindowRequestedEventHandler = interface;
  ICoreWebView2NewWindowRequestedEventArgs = interface;
  ICoreWebView2WindowFeatures = interface;
  ICoreWebView2DocumentTitleChangedEventHandler = interface;
  ICoreWebView2ContainsFullScreenElementChangedEventHandler = interface;
  ICoreWebView2WebResourceRequestedEventHandler = interface;
  ICoreWebView2WebResourceRequestedEventArgs = interface;
  ICoreWebView2WebResourceRequest = interface;
  ICoreWebView2WebResourceResponse = interface;
  ICoreWebView2HttpResponseHeaders = interface;
  ICoreWebView2WindowCloseRequestedEventHandler = interface;
  ICoreWebView2_2 = interface;
  ICoreWebView2WebResourceResponseReceivedEventHandler = interface;
  ICoreWebView2WebResourceResponseReceivedEventArgs = interface;
  ICoreWebView2WebResourceResponseView = interface;
  ICoreWebView2WebResourceResponseViewGetContentCompletedHandler = interface;
  ICoreWebView2DOMContentLoadedEventHandler = interface;
  ICoreWebView2DOMContentLoadedEventArgs = interface;
  ICoreWebView2CookieManager = interface;
  ICoreWebView2Cookie = interface;
  ICoreWebView2GetCookiesCompletedHandler = interface;
  ICoreWebView2CookieList = interface;
  ICoreWebView2Environment = interface;
  ICoreWebView2CreateCoreWebView2ControllerCompletedHandler = interface;
  ICoreWebView2NewBrowserVersionAvailableEventHandler = interface;
  ICoreWebView2_3 = interface;
  ICoreWebView2TrySuspendCompletedHandler = interface;
  ICoreWebView2_4 = interface;
  ICoreWebView2FrameCreatedEventHandler = interface;
  ICoreWebView2FrameCreatedEventArgs = interface;
  ICoreWebView2Frame = interface;
  ICoreWebView2FrameNameChangedEventHandler = interface;
  ICoreWebView2FrameDestroyedEventHandler = interface;
  ICoreWebView2DownloadStartingEventHandler = interface;
  ICoreWebView2DownloadStartingEventArgs = interface;
  ICoreWebView2DownloadOperation = interface;
  ICoreWebView2BytesReceivedChangedEventHandler = interface;
  ICoreWebView2EstimatedEndTimeChangedEventHandler = interface;
  ICoreWebView2StateChangedEventHandler = interface;
  ICoreWebView2_5 = interface;
  ICoreWebView2ClientCertificateRequestedEventHandler = interface;
  ICoreWebView2ClientCertificateRequestedEventArgs = interface;
  ICoreWebView2StringCollection = interface;
  ICoreWebView2ClientCertificateCollection = interface;
  ICoreWebView2ClientCertificate = interface;
  ICoreWebView2_6 = interface;
  ICoreWebView2_7 = interface;
  ICoreWebView2PrintSettings = interface;
  ICoreWebView2PrintToPdfCompletedHandler = interface;
  ICoreWebView2BrowserProcessExitedEventArgs = interface;
  ICoreWebView2BrowserProcessExitedEventHandler = interface;
  ICoreWebView2CompositionController = interface;
  ICoreWebView2PointerInfo = interface;
  ICoreWebView2CursorChangedEventHandler = interface;
  ICoreWebView2CompositionController2 = interface;
  ICoreWebView2Controller2 = interface;
  ICoreWebView2Controller3 = interface;
  ICoreWebView2RasterizationScaleChangedEventHandler = interface;
  ICoreWebView2CreateCoreWebView2CompositionControllerCompletedHandler = interface;
  ICoreWebView2CreateCoreWebView2EnvironmentCompletedHandler = interface;
  ICoreWebView2Environment2 = interface;
  ICoreWebView2Environment3 = interface;
  ICoreWebView2Environment4 = interface;
  ICoreWebView2Environment5 = interface;
  ICoreWebView2Environment6 = interface;
  ICoreWebView2Environment7 = interface;
  ICoreWebView2EnvironmentOptions = interface;
  ICoreWebView2FrameInfo = interface;
  ICoreWebView2FrameInfoCollection = interface;
  ICoreWebView2FrameInfoCollectionIterator = interface;
  ICoreWebView2NewWindowRequestedEventArgs2 = interface;
  ICoreWebView2ProcessFailedEventArgs2 = interface;
  ICoreWebView2Settings2 = interface;
  ICoreWebView2Settings3 = interface;
  ICoreWebView2Settings4 = interface;
  ICoreWebView2Settings5 = interface;
  ICoreWebView2Settings6 = interface;

// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  wireHWND = ^_RemotableHandle; 
  wireHICON = ^_RemotableHandle; 
  PUserType1 = ^GUID; {*}
  POleVariant1 = ^OleVariant; {*}
  PByte1 = ^Byte; {*}
  PPWideChar1 = ^PWideChar; {*}

  __MIDL___MIDL_itf_webview2_0005_0001_0001 = record
    Data1: LongWord;
    Data2: Word;
    Data3: Word;
    Data4: array[0..7] of Byte;
  end;

  GUID = __MIDL___MIDL_itf_webview2_0005_0001_0001; 

  COREWEBVIEW2_PHYSICAL_KEY_STATUS = record
    RepeatCount: SYSUINT;
    ScanCode: SYSUINT;
    IsExtendedKey: Integer;
    IsMenuKeyDown: Integer;
    WasKeyDown: Integer;
    IsKeyReleased: Integer;
  end;

  tagRECT = record
    left: Integer;
    top: Integer;
    right: Integer;
    bottom: Integer;
  end;

{$ALIGN 8}
  EventRegistrationToken = record
    value: Int64;
  end;


{$ALIGN 4}
  __MIDL_IWinTypes_0009 = record
    case Integer of
      0: (hInproc: Integer);
      1: (hRemote: Integer);
  end;

  _RemotableHandle = record
    fContext: Integer;
    u: __MIDL_IWinTypes_0009;
  end;

{$ALIGN 8}
  _LARGE_INTEGER = record
    QuadPart: Int64;
  end;

  _ULARGE_INTEGER = record
    QuadPart: Largeuint;
  end;

{$ALIGN 4}
  _FILETIME = record
    dwLowDateTime: LongWord;
    dwHighDateTime: LongWord;
  end;

{$ALIGN 8}
  tagSTATSTG = record
    pwcsName: PWideChar;
    type_: LongWord;
    cbSize: _ULARGE_INTEGER;
    mtime: _FILETIME;
    ctime: _FILETIME;
    atime: _FILETIME;
    grfMode: LongWord;
    grfLocksSupported: LongWord;
    clsid: GUID;
    grfStateBits: LongWord;
    reserved: LongWord;
  end;

{$ALIGN 4}
  tagPOINT = record
    x: Integer;
    y: Integer;
  end;


{$ALIGN 1}
  COREWEBVIEW2_COLOR = record
    A: Byte;
    R: Byte;
    G: Byte;
    B: Byte;
  end;


// *********************************************************************//
// Interface: ICoreWebView2AcceleratorKeyPressedEventArgs
// Flags:     (0)
// GUID:      {9F760F8A-FB79-42BE-9990-7B56900FA9C7}
// *********************************************************************//
  ICoreWebView2AcceleratorKeyPressedEventArgs = interface(IUnknown)
    ['{9F760F8A-FB79-42BE-9990-7B56900FA9C7}']
    function Get_KeyEventKind(out KeyEventKind: COREWEBVIEW2_KEY_EVENT_KIND): HResult; stdcall;
    function Get_VirtualKey(out VirtualKey: SYSUINT): HResult; stdcall;
    function Get_KeyEventLParam(out lParam: SYSINT): HResult; stdcall;
    function Get_PhysicalKeyStatus(out PhysicalKeyStatus: COREWEBVIEW2_PHYSICAL_KEY_STATUS): HResult; stdcall;
    function Get_Handled(out Handled: Integer): HResult; stdcall;
    function Set_Handled(Handled: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2AcceleratorKeyPressedEventHandler
// Flags:     (0)
// GUID:      {B29C7E28-FA79-41A8-8E44-65811C76DCB2}
// *********************************************************************//
  ICoreWebView2AcceleratorKeyPressedEventHandler = interface(IUnknown)
    ['{B29C7E28-FA79-41A8-8E44-65811C76DCB2}']
    function Invoke(const sender: ICoreWebView2Controller; 
                    const args: ICoreWebView2AcceleratorKeyPressedEventArgs): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2Controller
// Flags:     (0)
// GUID:      {4D00C0D1-9434-4EB6-8078-8697A560334F}
// *********************************************************************//
  ICoreWebView2Controller = interface(IUnknown)
    ['{4D00C0D1-9434-4EB6-8078-8697A560334F}']
    function Get_IsVisible(out IsVisible: Integer): HResult; stdcall;
    function Set_IsVisible(IsVisible: Integer): HResult; stdcall;
    function Get_Bounds(out Bounds: tagRECT): HResult; stdcall;
    function Set_Bounds(Bounds: tagRECT): HResult; stdcall;
    function Get_ZoomFactor(out ZoomFactor: Double): HResult; stdcall;
    function Set_ZoomFactor(ZoomFactor: Double): HResult; stdcall;
    function add_ZoomFactorChanged(const eventHandler: ICoreWebView2ZoomFactorChangedEventHandler; 
                                   out token: EventRegistrationToken): HResult; stdcall;
    function remove_ZoomFactorChanged(token: EventRegistrationToken): HResult; stdcall;
    function SetBoundsAndZoomFactor(Bounds: tagRECT; ZoomFactor: Double): HResult; stdcall;
    function MoveFocus(reason: COREWEBVIEW2_MOVE_FOCUS_REASON): HResult; stdcall;
    function add_MoveFocusRequested(const eventHandler: ICoreWebView2MoveFocusRequestedEventHandler; 
                                    out token: EventRegistrationToken): HResult; stdcall;
    function remove_MoveFocusRequested(token: EventRegistrationToken): HResult; stdcall;
    function add_GotFocus(const eventHandler: ICoreWebView2FocusChangedEventHandler; 
                          out token: EventRegistrationToken): HResult; stdcall;
    function remove_GotFocus(token: EventRegistrationToken): HResult; stdcall;
    function add_LostFocus(const eventHandler: ICoreWebView2FocusChangedEventHandler; 
                           out token: EventRegistrationToken): HResult; stdcall;
    function remove_LostFocus(token: EventRegistrationToken): HResult; stdcall;
    function add_AcceleratorKeyPressed(const eventHandler: ICoreWebView2AcceleratorKeyPressedEventHandler; 
                                       out token: EventRegistrationToken): HResult; stdcall;
    function remove_AcceleratorKeyPressed(token: EventRegistrationToken): HResult; stdcall;
    // ParentWindow: wireHWND --> ParentWindow: HWND    ************** WEBVIEW4DELPHI **************
    function Get_ParentWindow(out ParentWindow: HWND): HResult; stdcall;
    // ParentWindow: wireHWND --> ParentWindow: HWND    ************** WEBVIEW4DELPHI **************
    function Set_ParentWindow(ParentWindow: HWND): HResult; stdcall;
    function NotifyParentWindowPositionChanged: HResult; stdcall;
    function Close: HResult; stdcall;
    function Get_CoreWebView2(out CoreWebView2: ICoreWebView2): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2ZoomFactorChangedEventHandler
// Flags:     (0)
// GUID:      {B52D71D6-C4DF-4543-A90C-64A3E60F38CB}
// *********************************************************************//
  ICoreWebView2ZoomFactorChangedEventHandler = interface(IUnknown)
    ['{B52D71D6-C4DF-4543-A90C-64A3E60F38CB}']
    function Invoke(const sender: ICoreWebView2Controller; const args: IUnknown): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2MoveFocusRequestedEventHandler
// Flags:     (0)
// GUID:      {69035451-6DC7-4CB8-9BCE-B2BD70AD289F}
// *********************************************************************//
  ICoreWebView2MoveFocusRequestedEventHandler = interface(IUnknown)
    ['{69035451-6DC7-4CB8-9BCE-B2BD70AD289F}']
    function Invoke(const sender: ICoreWebView2Controller; 
                    const args: ICoreWebView2MoveFocusRequestedEventArgs): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2MoveFocusRequestedEventArgs
// Flags:     (0)
// GUID:      {2D6AA13B-3839-4A15-92FC-D88B3C0D9C9D}
// *********************************************************************//
  ICoreWebView2MoveFocusRequestedEventArgs = interface(IUnknown)
    ['{2D6AA13B-3839-4A15-92FC-D88B3C0D9C9D}']
    function Get_reason(out reason: COREWEBVIEW2_MOVE_FOCUS_REASON): HResult; stdcall;
    function Get_Handled(out value: Integer): HResult; stdcall;
    function Set_Handled(value: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2FocusChangedEventHandler
// Flags:     (0)
// GUID:      {05EA24BD-6452-4926-9014-4B82B498135D}
// *********************************************************************//
  ICoreWebView2FocusChangedEventHandler = interface(IUnknown)
    ['{05EA24BD-6452-4926-9014-4B82B498135D}']
    function Invoke(const sender: ICoreWebView2Controller; const args: IUnknown): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2
// Flags:     (0)
// GUID:      {76ECEACB-0462-4D94-AC83-423A6793775E}
// *********************************************************************//
  ICoreWebView2 = interface(IUnknown)
    ['{76ECEACB-0462-4D94-AC83-423A6793775E}']
    function Get_Settings(out Settings: ICoreWebView2Settings): HResult; stdcall;
    function Get_Source(out uri: PWideChar): HResult; stdcall;
    function Navigate(uri: PWideChar): HResult; stdcall;
    function NavigateToString(htmlContent: PWideChar): HResult; stdcall;
    function add_NavigationStarting(const eventHandler: ICoreWebView2NavigationStartingEventHandler; 
                                    out token: EventRegistrationToken): HResult; stdcall;
    function remove_NavigationStarting(token: EventRegistrationToken): HResult; stdcall;
    function add_ContentLoading(const eventHandler: ICoreWebView2ContentLoadingEventHandler; 
                                out token: EventRegistrationToken): HResult; stdcall;
    function remove_ContentLoading(token: EventRegistrationToken): HResult; stdcall;
    function add_SourceChanged(const eventHandler: ICoreWebView2SourceChangedEventHandler; 
                               out token: EventRegistrationToken): HResult; stdcall;
    function remove_SourceChanged(token: EventRegistrationToken): HResult; stdcall;
    function add_HistoryChanged(const eventHandler: ICoreWebView2HistoryChangedEventHandler; 
                                out token: EventRegistrationToken): HResult; stdcall;
    function remove_HistoryChanged(token: EventRegistrationToken): HResult; stdcall;
    function add_NavigationCompleted(const eventHandler: ICoreWebView2NavigationCompletedEventHandler; 
                                     out token: EventRegistrationToken): HResult; stdcall;
    function remove_NavigationCompleted(token: EventRegistrationToken): HResult; stdcall;
    function add_FrameNavigationStarting(const eventHandler: ICoreWebView2NavigationStartingEventHandler; 
                                         out token: EventRegistrationToken): HResult; stdcall;
    function remove_FrameNavigationStarting(token: EventRegistrationToken): HResult; stdcall;
    function add_FrameNavigationCompleted(const eventHandler: ICoreWebView2NavigationCompletedEventHandler; 
                                          out token: EventRegistrationToken): HResult; stdcall;
    function remove_FrameNavigationCompleted(token: EventRegistrationToken): HResult; stdcall;
    function add_ScriptDialogOpening(const eventHandler: ICoreWebView2ScriptDialogOpeningEventHandler; 
                                     out token: EventRegistrationToken): HResult; stdcall;
    function remove_ScriptDialogOpening(token: EventRegistrationToken): HResult; stdcall;
    function add_PermissionRequested(const eventHandler: ICoreWebView2PermissionRequestedEventHandler; 
                                     out token: EventRegistrationToken): HResult; stdcall;
    function remove_PermissionRequested(token: EventRegistrationToken): HResult; stdcall;
    function add_ProcessFailed(const eventHandler: ICoreWebView2ProcessFailedEventHandler; 
                               out token: EventRegistrationToken): HResult; stdcall;
    function remove_ProcessFailed(token: EventRegistrationToken): HResult; stdcall;
    function AddScriptToExecuteOnDocumentCreated(javaScript: PWideChar; 
                                                 const handler: ICoreWebView2AddScriptToExecuteOnDocumentCreatedCompletedHandler): HResult; stdcall;
    function RemoveScriptToExecuteOnDocumentCreated(id: PWideChar): HResult; stdcall;
    function ExecuteScript(javaScript: PWideChar; 
                           const handler: ICoreWebView2ExecuteScriptCompletedHandler): HResult; stdcall;
    function CapturePreview(imageFormat: COREWEBVIEW2_CAPTURE_PREVIEW_IMAGE_FORMAT; 
                            const imageStream: IStream; 
                            const handler: ICoreWebView2CapturePreviewCompletedHandler): HResult; stdcall;
    function Reload: HResult; stdcall;
    function PostWebMessageAsJson(webMessageAsJson: PWideChar): HResult; stdcall;
    function PostWebMessageAsString(webMessageAsString: PWideChar): HResult; stdcall;
    function add_WebMessageReceived(const handler: ICoreWebView2WebMessageReceivedEventHandler; 
                                    out token: EventRegistrationToken): HResult; stdcall;
    function remove_WebMessageReceived(token: EventRegistrationToken): HResult; stdcall;
    function CallDevToolsProtocolMethod(methodName: PWideChar; parametersAsJson: PWideChar; 
                                        const handler: ICoreWebView2CallDevToolsProtocolMethodCompletedHandler): HResult; stdcall;
    function Get_BrowserProcessId(out value: SYSUINT): HResult; stdcall;
    function Get_CanGoBack(out CanGoBack: Integer): HResult; stdcall;
    function Get_CanGoForward(out CanGoForward: Integer): HResult; stdcall;
    function GoBack: HResult; stdcall;
    function GoForward: HResult; stdcall;
    function GetDevToolsProtocolEventReceiver(eventName: PWideChar; 
                                              out receiver: ICoreWebView2DevToolsProtocolEventReceiver): HResult; stdcall;
    function Stop: HResult; stdcall;
    function add_NewWindowRequested(const eventHandler: ICoreWebView2NewWindowRequestedEventHandler; 
                                    out token: EventRegistrationToken): HResult; stdcall;
    function remove_NewWindowRequested(token: EventRegistrationToken): HResult; stdcall;
    function add_DocumentTitleChanged(const eventHandler: ICoreWebView2DocumentTitleChangedEventHandler; 
                                      out token: EventRegistrationToken): HResult; stdcall;
    function remove_DocumentTitleChanged(token: EventRegistrationToken): HResult; stdcall;
    function Get_DocumentTitle(out title: PWideChar): HResult; stdcall;
    function AddHostObjectToScript(name: PWideChar; const object_: OleVariant): HResult; stdcall;
    function RemoveHostObjectFromScript(name: PWideChar): HResult; stdcall;
    function OpenDevToolsWindow: HResult; stdcall;
    function add_ContainsFullScreenElementChanged(const eventHandler: ICoreWebView2ContainsFullScreenElementChangedEventHandler; 
                                                  out token: EventRegistrationToken): HResult; stdcall;
    function remove_ContainsFullScreenElementChanged(token: EventRegistrationToken): HResult; stdcall;
    function Get_ContainsFullScreenElement(out ContainsFullScreenElement: Integer): HResult; stdcall;
    function add_WebResourceRequested(const eventHandler: ICoreWebView2WebResourceRequestedEventHandler; 
                                      out token: EventRegistrationToken): HResult; stdcall;
    function remove_WebResourceRequested(token: EventRegistrationToken): HResult; stdcall;
    function AddWebResourceRequestedFilter(uri: PWideChar; 
                                           ResourceContext: COREWEBVIEW2_WEB_RESOURCE_CONTEXT): HResult; stdcall;
    function RemoveWebResourceRequestedFilter(uri: PWideChar; 
                                              ResourceContext: COREWEBVIEW2_WEB_RESOURCE_CONTEXT): HResult; stdcall;
    function add_WindowCloseRequested(const eventHandler: ICoreWebView2WindowCloseRequestedEventHandler; 
                                      out token: EventRegistrationToken): HResult; stdcall;
    function remove_WindowCloseRequested(token: EventRegistrationToken): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2Settings
// Flags:     (0)
// GUID:      {E562E4F0-D7FA-43AC-8D71-C05150499F00}
// *********************************************************************//
  ICoreWebView2Settings = interface(IUnknown)
    ['{E562E4F0-D7FA-43AC-8D71-C05150499F00}']
    function Get_IsScriptEnabled(out IsScriptEnabled: Integer): HResult; stdcall;
    function Set_IsScriptEnabled(IsScriptEnabled: Integer): HResult; stdcall;
    function Get_IsWebMessageEnabled(out IsWebMessageEnabled: Integer): HResult; stdcall;
    function Set_IsWebMessageEnabled(IsWebMessageEnabled: Integer): HResult; stdcall;
    function Get_AreDefaultScriptDialogsEnabled(out AreDefaultScriptDialogsEnabled: Integer): HResult; stdcall;
    function Set_AreDefaultScriptDialogsEnabled(AreDefaultScriptDialogsEnabled: Integer): HResult; stdcall;
    function Get_IsStatusBarEnabled(out IsStatusBarEnabled: Integer): HResult; stdcall;
    function Set_IsStatusBarEnabled(IsStatusBarEnabled: Integer): HResult; stdcall;
    function Get_AreDevToolsEnabled(out AreDevToolsEnabled: Integer): HResult; stdcall;
    function Set_AreDevToolsEnabled(AreDevToolsEnabled: Integer): HResult; stdcall;
    function Get_AreDefaultContextMenusEnabled(out enabled: Integer): HResult; stdcall;
    function Set_AreDefaultContextMenusEnabled(enabled: Integer): HResult; stdcall;
    function Get_AreHostObjectsAllowed(out allowed: Integer): HResult; stdcall;
    function Set_AreHostObjectsAllowed(allowed: Integer): HResult; stdcall;
    function Get_IsZoomControlEnabled(out enabled: Integer): HResult; stdcall;
    function Set_IsZoomControlEnabled(enabled: Integer): HResult; stdcall;
    function Get_IsBuiltInErrorPageEnabled(out enabled: Integer): HResult; stdcall;
    function Set_IsBuiltInErrorPageEnabled(enabled: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2NavigationStartingEventHandler
// Flags:     (0)
// GUID:      {9ADBE429-F36D-432B-9DDC-F8881FBD76E3}
// *********************************************************************//
  ICoreWebView2NavigationStartingEventHandler = interface(IUnknown)
    ['{9ADBE429-F36D-432B-9DDC-F8881FBD76E3}']
    function Invoke(const sender: ICoreWebView2; 
                    const args: ICoreWebView2NavigationStartingEventArgs): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2NavigationStartingEventArgs
// Flags:     (0)
// GUID:      {5B495469-E119-438A-9B18-7604F25F2E49}
// *********************************************************************//
  ICoreWebView2NavigationStartingEventArgs = interface(IUnknown)
    ['{5B495469-E119-438A-9B18-7604F25F2E49}']
    function Get_uri(out uri: PWideChar): HResult; stdcall;
    function Get_IsUserInitiated(out IsUserInitiated: Integer): HResult; stdcall;
    function Get_IsRedirected(out IsRedirected: Integer): HResult; stdcall;
    function Get_RequestHeaders(out RequestHeaders: ICoreWebView2HttpRequestHeaders): HResult; stdcall;
    function Get_Cancel(out Cancel: Integer): HResult; stdcall;
    function Set_Cancel(Cancel: Integer): HResult; stdcall;
    function Get_NavigationId(out NavigationId: Largeuint): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2HttpRequestHeaders
// Flags:     (0)
// GUID:      {E86CAC0E-5523-465C-B536-8FB9FC8C8C60}
// *********************************************************************//
  ICoreWebView2HttpRequestHeaders = interface(IUnknown)
    ['{E86CAC0E-5523-465C-B536-8FB9FC8C8C60}']
    function GetHeader(name: PWideChar; out value: PWideChar): HResult; stdcall;
    function GetHeaders(name: PWideChar; out iterator: ICoreWebView2HttpHeadersCollectionIterator): HResult; stdcall;
    function Contains(name: PWideChar; out Contains: Integer): HResult; stdcall;
    function SetHeader(name: PWideChar; value: PWideChar): HResult; stdcall;
    function RemoveHeader(name: PWideChar): HResult; stdcall;
    function GetIterator(out iterator: ICoreWebView2HttpHeadersCollectionIterator): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2HttpHeadersCollectionIterator
// Flags:     (0)
// GUID:      {0702FC30-F43B-47BB-AB52-A42CB552AD9F}
// *********************************************************************//
  ICoreWebView2HttpHeadersCollectionIterator = interface(IUnknown)
    ['{0702FC30-F43B-47BB-AB52-A42CB552AD9F}']
    function GetCurrentHeader(out name: PWideChar; out value: PWideChar): HResult; stdcall;
    function Get_HasCurrentHeader(out hasCurrent: Integer): HResult; stdcall;
    function MoveNext(out hasNext: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2ContentLoadingEventHandler
// Flags:     (0)
// GUID:      {364471E7-F2BE-4910-BDBA-D72077D51C4B}
// *********************************************************************//
  ICoreWebView2ContentLoadingEventHandler = interface(IUnknown)
    ['{364471E7-F2BE-4910-BDBA-D72077D51C4B}']
    function Invoke(const sender: ICoreWebView2; const args: ICoreWebView2ContentLoadingEventArgs): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2ContentLoadingEventArgs
// Flags:     (0)
// GUID:      {0C8A1275-9B6B-4901-87AD-70DF25BAFA6E}
// *********************************************************************//
  ICoreWebView2ContentLoadingEventArgs = interface(IUnknown)
    ['{0C8A1275-9B6B-4901-87AD-70DF25BAFA6E}']
    function Get_IsErrorPage(out IsErrorPage: Integer): HResult; stdcall;
    function Get_NavigationId(out NavigationId: Largeuint): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2SourceChangedEventHandler
// Flags:     (0)
// GUID:      {3C067F9F-5388-4772-8B48-79F7EF1AB37C}
// *********************************************************************//
  ICoreWebView2SourceChangedEventHandler = interface(IUnknown)
    ['{3C067F9F-5388-4772-8B48-79F7EF1AB37C}']
    function Invoke(const sender: ICoreWebView2; const args: ICoreWebView2SourceChangedEventArgs): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2SourceChangedEventArgs
// Flags:     (0)
// GUID:      {31E0E545-1DBA-4266-8914-F63848A1F7D7}
// *********************************************************************//
  ICoreWebView2SourceChangedEventArgs = interface(IUnknown)
    ['{31E0E545-1DBA-4266-8914-F63848A1F7D7}']
    function Get_IsNewDocument(out IsNewDocument: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2HistoryChangedEventHandler
// Flags:     (0)
// GUID:      {C79A420C-EFD9-4058-9295-3E8B4BCAB645}
// *********************************************************************//
  ICoreWebView2HistoryChangedEventHandler = interface(IUnknown)
    ['{C79A420C-EFD9-4058-9295-3E8B4BCAB645}']
    function Invoke(const sender: ICoreWebView2; const args: IUnknown): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2NavigationCompletedEventHandler
// Flags:     (0)
// GUID:      {D33A35BF-1C49-4F98-93AB-006E0533FE1C}
// *********************************************************************//
  ICoreWebView2NavigationCompletedEventHandler = interface(IUnknown)
    ['{D33A35BF-1C49-4F98-93AB-006E0533FE1C}']
    function Invoke(const sender: ICoreWebView2; 
                    const args: ICoreWebView2NavigationCompletedEventArgs): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2NavigationCompletedEventArgs
// Flags:     (0)
// GUID:      {30D68B7D-20D9-4752-A9CA-EC8448FBB5C1}
// *********************************************************************//
  ICoreWebView2NavigationCompletedEventArgs = interface(IUnknown)
    ['{30D68B7D-20D9-4752-A9CA-EC8448FBB5C1}']
    function Get_IsSuccess(out IsSuccess: Integer): HResult; stdcall;
    function Get_WebErrorStatus(out WebErrorStatus: COREWEBVIEW2_WEB_ERROR_STATUS): HResult; stdcall;
    function Get_NavigationId(out NavigationId: Largeuint): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2ScriptDialogOpeningEventHandler
// Flags:     (0)
// GUID:      {EF381BF9-AFA8-4E37-91C4-8AC48524BDFB}
// *********************************************************************//
  ICoreWebView2ScriptDialogOpeningEventHandler = interface(IUnknown)
    ['{EF381BF9-AFA8-4E37-91C4-8AC48524BDFB}']
    function Invoke(const sender: ICoreWebView2; 
                    const args: ICoreWebView2ScriptDialogOpeningEventArgs): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2ScriptDialogOpeningEventArgs
// Flags:     (0)
// GUID:      {7390BB70-ABE0-4843-9529-F143B31B03D6}
// *********************************************************************//
  ICoreWebView2ScriptDialogOpeningEventArgs = interface(IUnknown)
    ['{7390BB70-ABE0-4843-9529-F143B31B03D6}']
    function Get_uri(out uri: PWideChar): HResult; stdcall;
    function Get_Kind(out Kind: COREWEBVIEW2_SCRIPT_DIALOG_KIND): HResult; stdcall;
    function Get_Message(out Message: PWideChar): HResult; stdcall;
    function Accept: HResult; stdcall;
    function Get_DefaultText(out DefaultText: PWideChar): HResult; stdcall;
    function Get_ResultText(out ResultText: PWideChar): HResult; stdcall;
    function Set_ResultText(ResultText: PWideChar): HResult; stdcall;
    function GetDeferral(out deferral: ICoreWebView2Deferral): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2Deferral
// Flags:     (0)
// GUID:      {C10E7F7B-B585-46F0-A623-8BEFBF3E4EE0}
// *********************************************************************//
  ICoreWebView2Deferral = interface(IUnknown)
    ['{C10E7F7B-B585-46F0-A623-8BEFBF3E4EE0}']
    function Complete: HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2PermissionRequestedEventHandler
// Flags:     (0)
// GUID:      {15E1C6A3-C72A-4DF3-91D7-D097FBEC6BFD}
// *********************************************************************//
  ICoreWebView2PermissionRequestedEventHandler = interface(IUnknown)
    ['{15E1C6A3-C72A-4DF3-91D7-D097FBEC6BFD}']
    function Invoke(const sender: ICoreWebView2; 
                    const args: ICoreWebView2PermissionRequestedEventArgs): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2PermissionRequestedEventArgs
// Flags:     (0)
// GUID:      {973AE2EF-FF18-4894-8FB2-3C758F046810}
// *********************************************************************//
  ICoreWebView2PermissionRequestedEventArgs = interface(IUnknown)
    ['{973AE2EF-FF18-4894-8FB2-3C758F046810}']
    function Get_uri(out uri: PWideChar): HResult; stdcall;
    function Get_PermissionKind(out PermissionKind: COREWEBVIEW2_PERMISSION_KIND): HResult; stdcall;
    function Get_IsUserInitiated(out IsUserInitiated: Integer): HResult; stdcall;
    function Get_State(out State: COREWEBVIEW2_PERMISSION_STATE): HResult; stdcall;
    function Set_State(State: COREWEBVIEW2_PERMISSION_STATE): HResult; stdcall;
    function GetDeferral(out deferral: ICoreWebView2Deferral): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2ProcessFailedEventHandler
// Flags:     (0)
// GUID:      {79E0AEA4-990B-42D9-AA1D-0FCC2E5BC7F1}
// *********************************************************************//
  ICoreWebView2ProcessFailedEventHandler = interface(IUnknown)
    ['{79E0AEA4-990B-42D9-AA1D-0FCC2E5BC7F1}']
    function Invoke(const sender: ICoreWebView2; const args: ICoreWebView2ProcessFailedEventArgs): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2ProcessFailedEventArgs
// Flags:     (0)
// GUID:      {8155A9A4-1474-4A86-8CAE-151B0FA6B8CA}
// *********************************************************************//
  ICoreWebView2ProcessFailedEventArgs = interface(IUnknown)
    ['{8155A9A4-1474-4A86-8CAE-151B0FA6B8CA}']
    function Get_ProcessFailedKind(out ProcessFailedKind: COREWEBVIEW2_PROCESS_FAILED_KIND): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2AddScriptToExecuteOnDocumentCreatedCompletedHandler
// Flags:     (0)
// GUID:      {B99369F3-9B11-47B5-BC6F-8E7895FCEA17}
// *********************************************************************//
  ICoreWebView2AddScriptToExecuteOnDocumentCreatedCompletedHandler = interface(IUnknown)
    ['{B99369F3-9B11-47B5-BC6F-8E7895FCEA17}']
    function Invoke(errorCode: HResult; id: PWideChar): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2ExecuteScriptCompletedHandler
// Flags:     (0)
// GUID:      {49511172-CC67-4BCA-9923-137112F4C4CC}
// *********************************************************************//
  ICoreWebView2ExecuteScriptCompletedHandler = interface(IUnknown)
    ['{49511172-CC67-4BCA-9923-137112F4C4CC}']
    function Invoke(errorCode: HResult; resultObjectAsJson: PWideChar): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2CapturePreviewCompletedHandler
// Flags:     (0)
// GUID:      {697E05E9-3D8F-45FA-96F4-8FFE1EDEDAF5}
// *********************************************************************//
  ICoreWebView2CapturePreviewCompletedHandler = interface(IUnknown)
    ['{697E05E9-3D8F-45FA-96F4-8FFE1EDEDAF5}']
    function Invoke(errorCode: HResult): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2WebMessageReceivedEventHandler
// Flags:     (0)
// GUID:      {57213F19-00E6-49FA-8E07-898EA01ECBD2}
// *********************************************************************//
  ICoreWebView2WebMessageReceivedEventHandler = interface(IUnknown)
    ['{57213F19-00E6-49FA-8E07-898EA01ECBD2}']
    function Invoke(const sender: ICoreWebView2; 
                    const args: ICoreWebView2WebMessageReceivedEventArgs): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2WebMessageReceivedEventArgs
// Flags:     (0)
// GUID:      {0F99A40C-E962-4207-9E92-E3D542EFF849}
// *********************************************************************//
  ICoreWebView2WebMessageReceivedEventArgs = interface(IUnknown)
    ['{0F99A40C-E962-4207-9E92-E3D542EFF849}']
    function Get_Source(out Source: PWideChar): HResult; stdcall;
    function Get_webMessageAsJson(out webMessageAsJson: PWideChar): HResult; stdcall;
    function TryGetWebMessageAsString(out webMessageAsString: PWideChar): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2CallDevToolsProtocolMethodCompletedHandler
// Flags:     (0)
// GUID:      {5C4889F0-5EF6-4C5A-952C-D8F1B92D0574}
// *********************************************************************//
  ICoreWebView2CallDevToolsProtocolMethodCompletedHandler = interface(IUnknown)
    ['{5C4889F0-5EF6-4C5A-952C-D8F1B92D0574}']
    function Invoke(errorCode: HResult; returnObjectAsJson: PWideChar): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2DevToolsProtocolEventReceiver
// Flags:     (0)
// GUID:      {B32CA51A-8371-45E9-9317-AF021D080367}
// *********************************************************************//
  ICoreWebView2DevToolsProtocolEventReceiver = interface(IUnknown)
    ['{B32CA51A-8371-45E9-9317-AF021D080367}']
    function add_DevToolsProtocolEventReceived(const handler: ICoreWebView2DevToolsProtocolEventReceivedEventHandler; 
                                               out token: EventRegistrationToken): HResult; stdcall;
    function remove_DevToolsProtocolEventReceived(token: EventRegistrationToken): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2DevToolsProtocolEventReceivedEventHandler
// Flags:     (0)
// GUID:      {E2FDA4BE-5456-406C-A261-3D452138362C}
// *********************************************************************//
  ICoreWebView2DevToolsProtocolEventReceivedEventHandler = interface(IUnknown)
    ['{E2FDA4BE-5456-406C-A261-3D452138362C}']
    function Invoke(const sender: ICoreWebView2; 
                    const args: ICoreWebView2DevToolsProtocolEventReceivedEventArgs): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2DevToolsProtocolEventReceivedEventArgs
// Flags:     (0)
// GUID:      {653C2959-BB3A-4377-8632-B58ADA4E66C4}
// *********************************************************************//
  ICoreWebView2DevToolsProtocolEventReceivedEventArgs = interface(IUnknown)
    ['{653C2959-BB3A-4377-8632-B58ADA4E66C4}']
    function Get_ParameterObjectAsJson(out ParameterObjectAsJson: PWideChar): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2NewWindowRequestedEventHandler
// Flags:     (0)
// GUID:      {D4C185FE-C81C-4989-97AF-2D3FA7AB5651}
// *********************************************************************//
  ICoreWebView2NewWindowRequestedEventHandler = interface(IUnknown)
    ['{D4C185FE-C81C-4989-97AF-2D3FA7AB5651}']
    function Invoke(const sender: ICoreWebView2; 
                    const args: ICoreWebView2NewWindowRequestedEventArgs): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2NewWindowRequestedEventArgs
// Flags:     (0)
// GUID:      {34ACB11C-FC37-4418-9132-F9C21D1EAFB9}
// *********************************************************************//
  ICoreWebView2NewWindowRequestedEventArgs = interface(IUnknown)
    ['{34ACB11C-FC37-4418-9132-F9C21D1EAFB9}']
    function Get_uri(out uri: PWideChar): HResult; stdcall;
    function Set_NewWindow(const NewWindow: ICoreWebView2): HResult; stdcall;
    function Get_NewWindow(out NewWindow: ICoreWebView2): HResult; stdcall;
    function Set_Handled(Handled: Integer): HResult; stdcall;
    function Get_Handled(out Handled: Integer): HResult; stdcall;
    function Get_IsUserInitiated(out IsUserInitiated: Integer): HResult; stdcall;
    function GetDeferral(out deferral: ICoreWebView2Deferral): HResult; stdcall;
    function Get_WindowFeatures(out value: ICoreWebView2WindowFeatures): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2WindowFeatures
// Flags:     (0)
// GUID:      {5EAF559F-B46E-4397-8860-E422F287FF1E}
// *********************************************************************//
  ICoreWebView2WindowFeatures = interface(IUnknown)
    ['{5EAF559F-B46E-4397-8860-E422F287FF1E}']
    function Get_HasPosition(out value: Integer): HResult; stdcall;
    function Get_HasSize(out value: Integer): HResult; stdcall;
    function Get_left(out value: SYSUINT): HResult; stdcall;
    function Get_top(out value: SYSUINT): HResult; stdcall;
    function Get_Height(out value: SYSUINT): HResult; stdcall;
    function Get_Width(out value: SYSUINT): HResult; stdcall;
    function Get_ShouldDisplayMenuBar(out value: Integer): HResult; stdcall;
    function Get_ShouldDisplayStatus(out value: Integer): HResult; stdcall;
    function Get_ShouldDisplayToolbar(out value: Integer): HResult; stdcall;
    function Get_ShouldDisplayScrollBars(out value: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2DocumentTitleChangedEventHandler
// Flags:     (0)
// GUID:      {F5F2B923-953E-4042-9F95-F3A118E1AFD4}
// *********************************************************************//
  ICoreWebView2DocumentTitleChangedEventHandler = interface(IUnknown)
    ['{F5F2B923-953E-4042-9F95-F3A118E1AFD4}']
    function Invoke(const sender: ICoreWebView2; const args: IUnknown): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2ContainsFullScreenElementChangedEventHandler
// Flags:     (0)
// GUID:      {E45D98B1-AFEF-45BE-8BAF-6C7728867F73}
// *********************************************************************//
  ICoreWebView2ContainsFullScreenElementChangedEventHandler = interface(IUnknown)
    ['{E45D98B1-AFEF-45BE-8BAF-6C7728867F73}']
    function Invoke(const sender: ICoreWebView2; const args: IUnknown): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2WebResourceRequestedEventHandler
// Flags:     (0)
// GUID:      {AB00B74C-15F1-4646-80E8-E76341D25D71}
// *********************************************************************//
  ICoreWebView2WebResourceRequestedEventHandler = interface(IUnknown)
    ['{AB00B74C-15F1-4646-80E8-E76341D25D71}']
    function Invoke(const sender: ICoreWebView2; 
                    const args: ICoreWebView2WebResourceRequestedEventArgs): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2WebResourceRequestedEventArgs
// Flags:     (0)
// GUID:      {453E667F-12C7-49D4-BE6D-DDBE7956F57A}
// *********************************************************************//
  ICoreWebView2WebResourceRequestedEventArgs = interface(IUnknown)
    ['{453E667F-12C7-49D4-BE6D-DDBE7956F57A}']
    function Get_Request(out Request: ICoreWebView2WebResourceRequest): HResult; stdcall;
    function Get_Response(out Response: ICoreWebView2WebResourceResponse): HResult; stdcall;
    function Set_Response(const Response: ICoreWebView2WebResourceResponse): HResult; stdcall;
    function GetDeferral(out deferral: ICoreWebView2Deferral): HResult; stdcall;
    function Get_ResourceContext(out context: COREWEBVIEW2_WEB_RESOURCE_CONTEXT): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2WebResourceRequest
// Flags:     (0)
// GUID:      {97055CD4-512C-4264-8B5F-E3F446CEA6A5}
// *********************************************************************//
  ICoreWebView2WebResourceRequest = interface(IUnknown)
    ['{97055CD4-512C-4264-8B5F-E3F446CEA6A5}']
    function Get_uri(out uri: PWideChar): HResult; stdcall;
    function Set_uri(uri: PWideChar): HResult; stdcall;
    function Get_Method(out Method: PWideChar): HResult; stdcall;
    function Set_Method(Method: PWideChar): HResult; stdcall;
    function Get_Content(out Content: IStream): HResult; stdcall;
    function Set_Content(const Content: IStream): HResult; stdcall;
    function Get_Headers(out Headers: ICoreWebView2HttpRequestHeaders): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2WebResourceResponse
// Flags:     (0)
// GUID:      {AAFCC94F-FA27-48FD-97DF-830EF75AAEC9}
// *********************************************************************//
  ICoreWebView2WebResourceResponse = interface(IUnknown)
    ['{AAFCC94F-FA27-48FD-97DF-830EF75AAEC9}']
    function Get_Content(out Content: IStream): HResult; stdcall;
    function Set_Content(const Content: IStream): HResult; stdcall;
    function Get_Headers(out Headers: ICoreWebView2HttpResponseHeaders): HResult; stdcall;
    function Get_StatusCode(out StatusCode: SYSINT): HResult; stdcall;
    function Set_StatusCode(StatusCode: SYSINT): HResult; stdcall;
    function Get_ReasonPhrase(out ReasonPhrase: PWideChar): HResult; stdcall;
    function Set_ReasonPhrase(ReasonPhrase: PWideChar): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2HttpResponseHeaders
// Flags:     (0)
// GUID:      {03C5FF5A-9B45-4A88-881C-89A9F328619C}
// *********************************************************************//
  ICoreWebView2HttpResponseHeaders = interface(IUnknown)
    ['{03C5FF5A-9B45-4A88-881C-89A9F328619C}']
    function AppendHeader(name: PWideChar; value: PWideChar): HResult; stdcall;
    function Contains(name: PWideChar; out Contains: Integer): HResult; stdcall;
    function GetHeader(name: PWideChar; out value: PWideChar): HResult; stdcall;
    function GetHeaders(name: PWideChar; out iterator: ICoreWebView2HttpHeadersCollectionIterator): HResult; stdcall;
    function GetIterator(out iterator: ICoreWebView2HttpHeadersCollectionIterator): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2WindowCloseRequestedEventHandler
// Flags:     (0)
// GUID:      {5C19E9E0-092F-486B-AFFA-CA8231913039}
// *********************************************************************//
  ICoreWebView2WindowCloseRequestedEventHandler = interface(IUnknown)
    ['{5C19E9E0-092F-486B-AFFA-CA8231913039}']
    function Invoke(const sender: ICoreWebView2; const args: IUnknown): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2_2
// Flags:     (0)
// GUID:      {9E8F0CF8-E670-4B5E-B2BC-73E061E3184C}
// *********************************************************************//
  ICoreWebView2_2 = interface(ICoreWebView2)
    ['{9E8F0CF8-E670-4B5E-B2BC-73E061E3184C}']
    function add_WebResourceResponseReceived(const eventHandler: ICoreWebView2WebResourceResponseReceivedEventHandler; 
                                             out token: EventRegistrationToken): HResult; stdcall;
    function remove_WebResourceResponseReceived(token: EventRegistrationToken): HResult; stdcall;
    function NavigateWithWebResourceRequest(const Request: ICoreWebView2WebResourceRequest): HResult; stdcall;
    function add_DOMContentLoaded(const eventHandler: ICoreWebView2DOMContentLoadedEventHandler; 
                                  out token: EventRegistrationToken): HResult; stdcall;
    function remove_DOMContentLoaded(token: EventRegistrationToken): HResult; stdcall;
    function Get_CookieManager(out CookieManager: ICoreWebView2CookieManager): HResult; stdcall;
    function Get_Environment(out Environment: ICoreWebView2Environment): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2WebResourceResponseReceivedEventHandler
// Flags:     (0)
// GUID:      {7DE9898A-24F5-40C3-A2DE-D4F458E69828}
// *********************************************************************//
  ICoreWebView2WebResourceResponseReceivedEventHandler = interface(IUnknown)
    ['{7DE9898A-24F5-40C3-A2DE-D4F458E69828}']
    function Invoke(const sender: ICoreWebView2; 
                    const args: ICoreWebView2WebResourceResponseReceivedEventArgs): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2WebResourceResponseReceivedEventArgs
// Flags:     (0)
// GUID:      {D1DB483D-6796-4B8B-80FC-13712BB716F4}
// *********************************************************************//
  ICoreWebView2WebResourceResponseReceivedEventArgs = interface(IUnknown)
    ['{D1DB483D-6796-4B8B-80FC-13712BB716F4}']
    function Get_Request(out Request: ICoreWebView2WebResourceRequest): HResult; stdcall;
    function Get_Response(out Response: ICoreWebView2WebResourceResponseView): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2WebResourceResponseView
// Flags:     (0)
// GUID:      {79701053-7759-4162-8F7D-F1B3F084928D}
// *********************************************************************//
  ICoreWebView2WebResourceResponseView = interface(IUnknown)
    ['{79701053-7759-4162-8F7D-F1B3F084928D}']
    function Get_Headers(out Headers: ICoreWebView2HttpResponseHeaders): HResult; stdcall;
    function Get_StatusCode(out StatusCode: SYSINT): HResult; stdcall;
    function Get_ReasonPhrase(out ReasonPhrase: PWideChar): HResult; stdcall;
    function GetContent(const handler: ICoreWebView2WebResourceResponseViewGetContentCompletedHandler): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2WebResourceResponseViewGetContentCompletedHandler
// Flags:     (0)
// GUID:      {875738E1-9FA2-40E3-8B74-2E8972DD6FE7}
// *********************************************************************//
  ICoreWebView2WebResourceResponseViewGetContentCompletedHandler = interface(IUnknown)
    ['{875738E1-9FA2-40E3-8B74-2E8972DD6FE7}']
    function Invoke(errorCode: HResult; const Content: IStream): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2DOMContentLoadedEventHandler
// Flags:     (0)
// GUID:      {4BAC7E9C-199E-49ED-87ED-249303ACF019}
// *********************************************************************//
  ICoreWebView2DOMContentLoadedEventHandler = interface(IUnknown)
    ['{4BAC7E9C-199E-49ED-87ED-249303ACF019}']
    function Invoke(const sender: ICoreWebView2; const args: ICoreWebView2DOMContentLoadedEventArgs): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2DOMContentLoadedEventArgs
// Flags:     (0)
// GUID:      {16B1E21A-C503-44F2-84C9-70ABA5031283}
// *********************************************************************//
  ICoreWebView2DOMContentLoadedEventArgs = interface(IUnknown)
    ['{16B1E21A-C503-44F2-84C9-70ABA5031283}']
    function Get_NavigationId(out NavigationId: Largeuint): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2CookieManager
// Flags:     (0)
// GUID:      {177CD9E7-B6F5-451A-94A0-5D7A3A4C4141}
// *********************************************************************//
  ICoreWebView2CookieManager = interface(IUnknown)
    ['{177CD9E7-B6F5-451A-94A0-5D7A3A4C4141}']
    function CreateCookie(name: PWideChar; value: PWideChar; Domain: PWideChar; Path: PWideChar; 
                          out cookie: ICoreWebView2Cookie): HResult; stdcall;
    function CopyCookie(const cookieParam: ICoreWebView2Cookie; out cookie: ICoreWebView2Cookie): HResult; stdcall;
    function GetCookies(uri: PWideChar; const handler: ICoreWebView2GetCookiesCompletedHandler): HResult; stdcall;
    function AddOrUpdateCookie(const cookie: ICoreWebView2Cookie): HResult; stdcall;
    function DeleteCookie(const cookie: ICoreWebView2Cookie): HResult; stdcall;
    function DeleteCookies(name: PWideChar; uri: PWideChar): HResult; stdcall;
    function DeleteCookiesWithDomainAndPath(name: PWideChar; Domain: PWideChar; Path: PWideChar): HResult; stdcall;
    function DeleteAllCookies: HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2Cookie
// Flags:     (0)
// GUID:      {AD26D6BE-1486-43E6-BF87-A2034006CA21}
// *********************************************************************//
  ICoreWebView2Cookie = interface(IUnknown)
    ['{AD26D6BE-1486-43E6-BF87-A2034006CA21}']
    function Get_name(out name: PWideChar): HResult; stdcall;
    function Get_value(out value: PWideChar): HResult; stdcall;
    function Set_value(value: PWideChar): HResult; stdcall;
    function Get_Domain(out Domain: PWideChar): HResult; stdcall;
    function Get_Path(out Path: PWideChar): HResult; stdcall;
    function Get_Expires(out Expires: Double): HResult; stdcall;
    function Set_Expires(Expires: Double): HResult; stdcall;
    function Get_IsHttpOnly(out IsHttpOnly: Integer): HResult; stdcall;
    function Set_IsHttpOnly(IsHttpOnly: Integer): HResult; stdcall;
    function Get_SameSite(out SameSite: COREWEBVIEW2_COOKIE_SAME_SITE_KIND): HResult; stdcall;
    function Set_SameSite(SameSite: COREWEBVIEW2_COOKIE_SAME_SITE_KIND): HResult; stdcall;
    function Get_IsSecure(out IsSecure: Integer): HResult; stdcall;
    function Set_IsSecure(IsSecure: Integer): HResult; stdcall;
    function Get_IsSession(out IsSession: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2GetCookiesCompletedHandler
// Flags:     (0)
// GUID:      {5A4F5069-5C15-47C3-8646-F4DE1C116670}
// *********************************************************************//
  ICoreWebView2GetCookiesCompletedHandler = interface(IUnknown)
    ['{5A4F5069-5C15-47C3-8646-F4DE1C116670}']
    function Invoke(result: HResult; const cookieList: ICoreWebView2CookieList): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2CookieList
// Flags:     (0)
// GUID:      {F7F6F714-5D2A-43C6-9503-346ECE02D186}
// *********************************************************************//
  ICoreWebView2CookieList = interface(IUnknown)
    ['{F7F6F714-5D2A-43C6-9503-346ECE02D186}']
    function Get_Count(out Count: SYSUINT): HResult; stdcall;
    function GetValueAtIndex(index: SYSUINT; out cookie: ICoreWebView2Cookie): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2Environment
// Flags:     (0)
// GUID:      {B96D755E-0319-4E92-A296-23436F46A1FC}
// *********************************************************************//
  ICoreWebView2Environment = interface(IUnknown)
    ['{B96D755E-0319-4E92-A296-23436F46A1FC}']
    // var ParentWindow: _RemotableHandle --> ParentWindow: HWND    ************** WEBVIEW4DELPHI **************
    function CreateCoreWebView2Controller(ParentWindow: HWND;
                                          const handler: ICoreWebView2CreateCoreWebView2ControllerCompletedHandler): HResult; stdcall;
    function CreateWebResourceResponse(const Content: IStream; StatusCode: SYSINT; 
                                       ReasonPhrase: PWideChar; Headers: PWideChar; 
                                       out Response: ICoreWebView2WebResourceResponse): HResult; stdcall;
    function Get_BrowserVersionString(out versionInfo: PWideChar): HResult; stdcall;
    function add_NewBrowserVersionAvailable(const eventHandler: ICoreWebView2NewBrowserVersionAvailableEventHandler; 
                                            out token: EventRegistrationToken): HResult; stdcall;
    function remove_NewBrowserVersionAvailable(token: EventRegistrationToken): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2CreateCoreWebView2ControllerCompletedHandler
// Flags:     (0)
// GUID:      {6C4819F3-C9B7-4260-8127-C9F5BDE7F68C}
// *********************************************************************//
  ICoreWebView2CreateCoreWebView2ControllerCompletedHandler = interface(IUnknown)
    ['{6C4819F3-C9B7-4260-8127-C9F5BDE7F68C}']
    function Invoke(errorCode: HResult; const createdController: ICoreWebView2Controller): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2NewBrowserVersionAvailableEventHandler
// Flags:     (0)
// GUID:      {F9A2976E-D34E-44FC-ADEE-81B6B57CA914}
// *********************************************************************//
  ICoreWebView2NewBrowserVersionAvailableEventHandler = interface(IUnknown)
    ['{F9A2976E-D34E-44FC-ADEE-81B6B57CA914}']
    function Invoke(const sender: ICoreWebView2Environment; const args: IUnknown): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2_3
// Flags:     (0)
// GUID:      {A0D6DF20-3B92-416D-AA0C-437A9C727857}
// *********************************************************************//
  ICoreWebView2_3 = interface(ICoreWebView2_2)
    ['{A0D6DF20-3B92-416D-AA0C-437A9C727857}']
    function TrySuspend(const handler: ICoreWebView2TrySuspendCompletedHandler): HResult; stdcall;
    function Resume: HResult; stdcall;
    function Get_IsSuspended(out IsSuspended: Integer): HResult; stdcall;
    function SetVirtualHostNameToFolderMapping(hostName: PWideChar; folderPath: PWideChar; 
                                               accessKind: COREWEBVIEW2_HOST_RESOURCE_ACCESS_KIND): HResult; stdcall;
    function ClearVirtualHostNameToFolderMapping(hostName: PWideChar): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2TrySuspendCompletedHandler
// Flags:     (0)
// GUID:      {00F206A7-9D17-4605-91F6-4E8E4DE192E3}
// *********************************************************************//
  ICoreWebView2TrySuspendCompletedHandler = interface(IUnknown)
    ['{00F206A7-9D17-4605-91F6-4E8E4DE192E3}']
    function Invoke(errorCode: HResult; isSuccessful: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2_4
// Flags:     (0)
// GUID:      {20D02D59-6DF2-42DC-BD06-F98A694B1302}
// *********************************************************************//
  ICoreWebView2_4 = interface(ICoreWebView2_3)
    ['{20D02D59-6DF2-42DC-BD06-F98A694B1302}']
    function add_FrameCreated(const eventHandler: ICoreWebView2FrameCreatedEventHandler; 
                              out token: EventRegistrationToken): HResult; stdcall;
    function remove_FrameCreated(token: EventRegistrationToken): HResult; stdcall;
    function add_DownloadStarting(const eventHandler: ICoreWebView2DownloadStartingEventHandler; 
                                  out token: EventRegistrationToken): HResult; stdcall;
    function remove_DownloadStarting(token: EventRegistrationToken): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2FrameCreatedEventHandler
// Flags:     (0)
// GUID:      {38059770-9BAA-11EB-A8B3-0242AC130003}
// *********************************************************************//
  ICoreWebView2FrameCreatedEventHandler = interface(IUnknown)
    ['{38059770-9BAA-11EB-A8B3-0242AC130003}']
    function Invoke(const sender: ICoreWebView2; const args: ICoreWebView2FrameCreatedEventArgs): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2FrameCreatedEventArgs
// Flags:     (0)
// GUID:      {4D6E7B5E-9BAA-11EB-A8B3-0242AC130003}
// *********************************************************************//
  ICoreWebView2FrameCreatedEventArgs = interface(IUnknown)
    ['{4D6E7B5E-9BAA-11EB-A8B3-0242AC130003}']
    function Get_Frame(out Frame: ICoreWebView2Frame): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2Frame
// Flags:     (0)
// GUID:      {F1131A5E-9BA9-11EB-A8B3-0242AC130003}
// *********************************************************************//
  ICoreWebView2Frame = interface(IUnknown)
    ['{F1131A5E-9BA9-11EB-A8B3-0242AC130003}']
    function Get_name(out name: PWideChar): HResult; stdcall;
    function add_NameChanged(const eventHandler: ICoreWebView2FrameNameChangedEventHandler; 
                             out token: EventRegistrationToken): HResult; stdcall;
    function remove_NameChanged(token: EventRegistrationToken): HResult; stdcall;
    function AddHostObjectToScriptWithOrigins(name: PWideChar; const object_: OleVariant; 
                                              originsCount: SYSUINT; var origins: PWideChar): HResult; stdcall;
    function RemoveHostObjectFromScript(name: PWideChar): HResult; stdcall;
    function add_Destroyed(const eventHandler: ICoreWebView2FrameDestroyedEventHandler; 
                           out token: EventRegistrationToken): HResult; stdcall;
    function remove_Destroyed(token: EventRegistrationToken): HResult; stdcall;
    function IsDestroyed(out destroyed: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2FrameNameChangedEventHandler
// Flags:     (0)
// GUID:      {435C7DC8-9BAA-11EB-A8B3-0242AC130003}
// *********************************************************************//
  ICoreWebView2FrameNameChangedEventHandler = interface(IUnknown)
    ['{435C7DC8-9BAA-11EB-A8B3-0242AC130003}']
    function Invoke(const sender: ICoreWebView2Frame; const args: IUnknown): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2FrameDestroyedEventHandler
// Flags:     (0)
// GUID:      {59DD7B4C-9BAA-11EB-A8B3-0242AC130003}
// *********************************************************************//
  ICoreWebView2FrameDestroyedEventHandler = interface(IUnknown)
    ['{59DD7B4C-9BAA-11EB-A8B3-0242AC130003}']
    function Invoke(const sender: ICoreWebView2Frame; const args: IUnknown): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2DownloadStartingEventHandler
// Flags:     (0)
// GUID:      {EFEDC989-C396-41CA-83F7-07F845A55724}
// *********************************************************************//
  ICoreWebView2DownloadStartingEventHandler = interface(IUnknown)
    ['{EFEDC989-C396-41CA-83F7-07F845A55724}']
    function Invoke(const sender: ICoreWebView2; const args: ICoreWebView2DownloadStartingEventArgs): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2DownloadStartingEventArgs
// Flags:     (0)
// GUID:      {E99BBE21-43E9-4544-A732-282764EAFA60}
// *********************************************************************//
  ICoreWebView2DownloadStartingEventArgs = interface(IUnknown)
    ['{E99BBE21-43E9-4544-A732-282764EAFA60}']
    function Get_DownloadOperation(out DownloadOperation: ICoreWebView2DownloadOperation): HResult; stdcall;
    function Get_Cancel(out Cancel: Integer): HResult; stdcall;
    function Set_Cancel(Cancel: Integer): HResult; stdcall;
    function Get_ResultFilePath(out ResultFilePath: PWideChar): HResult; stdcall;
    function Set_ResultFilePath(ResultFilePath: PWideChar): HResult; stdcall;
    function Get_Handled(out Handled: Integer): HResult; stdcall;
    function Set_Handled(Handled: Integer): HResult; stdcall;
    function GetDeferral(out deferral: ICoreWebView2Deferral): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2DownloadOperation
// Flags:     (0)
// GUID:      {3D6B6CF2-AFE1-44C7-A995-C65117714336}
// *********************************************************************//
  ICoreWebView2DownloadOperation = interface(IUnknown)
    ['{3D6B6CF2-AFE1-44C7-A995-C65117714336}']
    function add_BytesReceivedChanged(const eventHandler: ICoreWebView2BytesReceivedChangedEventHandler; 
                                      out token: EventRegistrationToken): HResult; stdcall;
    function remove_BytesReceivedChanged(token: EventRegistrationToken): HResult; stdcall;
    function add_EstimatedEndTimeChanged(const eventHandler: ICoreWebView2EstimatedEndTimeChangedEventHandler; 
                                         out token: EventRegistrationToken): HResult; stdcall;
    function remove_EstimatedEndTimeChanged(token: EventRegistrationToken): HResult; stdcall;
    function add_StateChanged(const eventHandler: ICoreWebView2StateChangedEventHandler; 
                              out token: EventRegistrationToken): HResult; stdcall;
    function remove_StateChanged(token: EventRegistrationToken): HResult; stdcall;
    function Get_uri(out uri: PWideChar): HResult; stdcall;
    function Get_ContentDisposition(out ContentDisposition: PWideChar): HResult; stdcall;
    function Get_MimeType(out MimeType: PWideChar): HResult; stdcall;
    function Get_TotalBytesToReceive(out TotalBytesToReceive: Int64): HResult; stdcall;
    function Get_BytesReceived(out BytesReceived: Int64): HResult; stdcall;
    function Get_EstimatedEndTime(out EstimatedEndTime: PWideChar): HResult; stdcall;
    function Get_ResultFilePath(out ResultFilePath: PWideChar): HResult; stdcall;
    function Get_State(out downloadState: COREWEBVIEW2_DOWNLOAD_STATE): HResult; stdcall;
    function Get_InterruptReason(out InterruptReason: COREWEBVIEW2_DOWNLOAD_INTERRUPT_REASON): HResult; stdcall;
    function Cancel: HResult; stdcall;
    function Pause: HResult; stdcall;
    function Resume: HResult; stdcall;
    function Get_CanResume(out CanResume: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2BytesReceivedChangedEventHandler
// Flags:     (0)
// GUID:      {828E8AB6-D94C-4264-9CEF-5217170D6251}
// *********************************************************************//
  ICoreWebView2BytesReceivedChangedEventHandler = interface(IUnknown)
    ['{828E8AB6-D94C-4264-9CEF-5217170D6251}']
    function Invoke(const sender: ICoreWebView2DownloadOperation; const args: IUnknown): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2EstimatedEndTimeChangedEventHandler
// Flags:     (0)
// GUID:      {28F0D425-93FE-4E63-9F8D-2AEEC6D3BA1E}
// *********************************************************************//
  ICoreWebView2EstimatedEndTimeChangedEventHandler = interface(IUnknown)
    ['{28F0D425-93FE-4E63-9F8D-2AEEC6D3BA1E}']
    function Invoke(const sender: ICoreWebView2DownloadOperation; const args: IUnknown): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2StateChangedEventHandler
// Flags:     (0)
// GUID:      {81336594-7EDE-4BA9-BF71-ACF0A95B58DD}
// *********************************************************************//
  ICoreWebView2StateChangedEventHandler = interface(IUnknown)
    ['{81336594-7EDE-4BA9-BF71-ACF0A95B58DD}']
    function Invoke(const sender: ICoreWebView2DownloadOperation; const args: IUnknown): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2_5
// Flags:     (0)
// GUID:      {BEDB11B8-D63C-11EB-B8BC-0242AC130003}
// *********************************************************************//
  ICoreWebView2_5 = interface(ICoreWebView2_4)
    ['{BEDB11B8-D63C-11EB-B8BC-0242AC130003}']
    function add_ClientCertificateRequested(const eventHandler: ICoreWebView2ClientCertificateRequestedEventHandler; 
                                            out token: EventRegistrationToken): HResult; stdcall;
    function remove_ClientCertificateRequested(token: EventRegistrationToken): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2ClientCertificateRequestedEventHandler
// Flags:     (0)
// GUID:      {D7175BA2-BCC3-11EB-8529-0242AC130003}
// *********************************************************************//
  ICoreWebView2ClientCertificateRequestedEventHandler = interface(IUnknown)
    ['{D7175BA2-BCC3-11EB-8529-0242AC130003}']
    function Invoke(const sender: ICoreWebView2; 
                    const args: ICoreWebView2ClientCertificateRequestedEventArgs): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2ClientCertificateRequestedEventArgs
// Flags:     (0)
// GUID:      {BC59DB28-BCC3-11EB-8529-0242AC130003}
// *********************************************************************//
  ICoreWebView2ClientCertificateRequestedEventArgs = interface(IUnknown)
    ['{BC59DB28-BCC3-11EB-8529-0242AC130003}']
    function Get_Host(out value: PWideChar): HResult; stdcall;
    function Get_Port(out value: SYSINT): HResult; stdcall;
    function Get_IsProxy(out value: Integer): HResult; stdcall;
    function Get_AllowedCertificateAuthorities(out value: ICoreWebView2StringCollection): HResult; stdcall;
    function Get_MutuallyTrustedCertificates(out value: ICoreWebView2ClientCertificateCollection): HResult; stdcall;
    function Get_SelectedCertificate(out value: ICoreWebView2ClientCertificate): HResult; stdcall;
    function Set_SelectedCertificate(const value: ICoreWebView2ClientCertificate): HResult; stdcall;
    function Get_Cancel(out value: Integer): HResult; stdcall;
    function Set_Cancel(value: Integer): HResult; stdcall;
    function Get_Handled(out value: Integer): HResult; stdcall;
    function Set_Handled(value: Integer): HResult; stdcall;
    function GetDeferral(out deferral: ICoreWebView2Deferral): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2StringCollection
// Flags:     (0)
// GUID:      {F41F3F8A-BCC3-11EB-8529-0242AC130003}
// *********************************************************************//
  ICoreWebView2StringCollection = interface(IUnknown)
    ['{F41F3F8A-BCC3-11EB-8529-0242AC130003}']
    function Get_Count(out value: SYSUINT): HResult; stdcall;
    function GetValueAtIndex(index: SYSUINT; out value: PWideChar): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2ClientCertificateCollection
// Flags:     (0)
// GUID:      {EF5674D2-BCC3-11EB-8529-0242AC130003}
// *********************************************************************//
  ICoreWebView2ClientCertificateCollection = interface(IUnknown)
    ['{EF5674D2-BCC3-11EB-8529-0242AC130003}']
    function Get_Count(out value: SYSUINT): HResult; stdcall;
    function GetValueAtIndex(index: SYSUINT; out certificate: ICoreWebView2ClientCertificate): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2ClientCertificate
// Flags:     (0)
// GUID:      {E7188076-BCC3-11EB-8529-0242AC130003}
// *********************************************************************//
  ICoreWebView2ClientCertificate = interface(IUnknown)
    ['{E7188076-BCC3-11EB-8529-0242AC130003}']
    function Get_Subject(out value: PWideChar): HResult; stdcall;
    function Get_Issuer(out value: PWideChar): HResult; stdcall;
    function Get_ValidFrom(out value: Double): HResult; stdcall;
    function Get_ValidTo(out value: Double): HResult; stdcall;
    function Get_DerEncodedSerialNumber(out value: PWideChar): HResult; stdcall;
    function Get_DisplayName(out value: PWideChar): HResult; stdcall;
    function ToPemEncoding(out pemEncodedData: PWideChar): HResult; stdcall;
    function Get_PemEncodedIssuerCertificateChain(out value: ICoreWebView2StringCollection): HResult; stdcall;
    function Get_Kind(out value: COREWEBVIEW2_CLIENT_CERTIFICATE_KIND): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2_6
// Flags:     (0)
// GUID:      {499AADAC-D92C-4589-8A75-111BFC167795}
// *********************************************************************//
  ICoreWebView2_6 = interface(ICoreWebView2_5)
    ['{499AADAC-D92C-4589-8A75-111BFC167795}']
    function OpenTaskManagerWindow: HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2_7
// Flags:     (0)
// GUID:      {79C24D83-09A3-45AE-9418-487F32A58740}
// *********************************************************************//
  ICoreWebView2_7 = interface(ICoreWebView2_6)
    ['{79C24D83-09A3-45AE-9418-487F32A58740}']
    function PrintToPdf(ResultFilePath: PWideChar; const printSettings: ICoreWebView2PrintSettings; 
                        const handler: ICoreWebView2PrintToPdfCompletedHandler): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2PrintSettings
// Flags:     (0)
// GUID:      {377F3721-C74E-48CA-8DB1-DF68E51D60E2}
// *********************************************************************//
  ICoreWebView2PrintSettings = interface(IUnknown)
    ['{377F3721-C74E-48CA-8DB1-DF68E51D60E2}']
    function Get_Orientation(out Orientation: COREWEBVIEW2_PRINT_ORIENTATION): HResult; stdcall;
    function Set_Orientation(Orientation: COREWEBVIEW2_PRINT_ORIENTATION): HResult; stdcall;
    function Get_ScaleFactor(out ScaleFactor: Double): HResult; stdcall;
    function Set_ScaleFactor(ScaleFactor: Double): HResult; stdcall;
    function Get_PageWidth(out PageWidth: Double): HResult; stdcall;
    function Set_PageWidth(PageWidth: Double): HResult; stdcall;
    function Get_PageHeight(out PageHeight: Double): HResult; stdcall;
    function Set_PageHeight(PageHeight: Double): HResult; stdcall;
    function Get_MarginTop(out MarginTop: Double): HResult; stdcall;
    function Set_MarginTop(MarginTop: Double): HResult; stdcall;
    function Get_MarginBottom(out MarginBottom: Double): HResult; stdcall;
    function Set_MarginBottom(MarginBottom: Double): HResult; stdcall;
    function Get_MarginLeft(out MarginLeft: Double): HResult; stdcall;
    function Set_MarginLeft(MarginLeft: Double): HResult; stdcall;
    function Get_MarginRight(out MarginRight: Double): HResult; stdcall;
    function Set_MarginRight(MarginRight: Double): HResult; stdcall;
    function Get_ShouldPrintBackgrounds(out ShouldPrintBackgrounds: Integer): HResult; stdcall;
    function Set_ShouldPrintBackgrounds(ShouldPrintBackgrounds: Integer): HResult; stdcall;
    function Get_ShouldPrintSelectionOnly(out ShouldPrintSelectionOnly: Integer): HResult; stdcall;
    function Set_ShouldPrintSelectionOnly(ShouldPrintSelectionOnly: Integer): HResult; stdcall;
    function Get_ShouldPrintHeaderAndFooter(out ShouldPrintHeaderAndFooter: Integer): HResult; stdcall;
    function Set_ShouldPrintHeaderAndFooter(ShouldPrintHeaderAndFooter: Integer): HResult; stdcall;
    function Get_HeaderTitle(out HeaderTitle: PWideChar): HResult; stdcall;
    function Set_HeaderTitle(HeaderTitle: PWideChar): HResult; stdcall;
    function Get_FooterUri(out FooterUri: PWideChar): HResult; stdcall;
    function Set_FooterUri(FooterUri: PWideChar): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2PrintToPdfCompletedHandler
// Flags:     (0)
// GUID:      {CCF1EF04-FD8E-4D5F-B2DE-0983E41B8C36}
// *********************************************************************//
  ICoreWebView2PrintToPdfCompletedHandler = interface(IUnknown)
    ['{CCF1EF04-FD8E-4D5F-B2DE-0983E41B8C36}']
    function Invoke(errorCode: HResult; isSuccessful: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2BrowserProcessExitedEventArgs
// Flags:     (0)
// GUID:      {1F00663F-AF8C-4782-9CDD-DD01C52E34CB}
// *********************************************************************//
  ICoreWebView2BrowserProcessExitedEventArgs = interface(IUnknown)
    ['{1F00663F-AF8C-4782-9CDD-DD01C52E34CB}']
    function Get_BrowserProcessExitKind(out BrowserProcessExitKind: COREWEBVIEW2_BROWSER_PROCESS_EXIT_KIND): HResult; stdcall;
    function Get_BrowserProcessId(out value: SYSUINT): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2BrowserProcessExitedEventHandler
// Flags:     (0)
// GUID:      {FA504257-A216-4911-A860-FE8825712861}
// *********************************************************************//
  ICoreWebView2BrowserProcessExitedEventHandler = interface(IUnknown)
    ['{FA504257-A216-4911-A860-FE8825712861}']
    function Invoke(const sender: ICoreWebView2Environment; 
                    const args: ICoreWebView2BrowserProcessExitedEventArgs): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2CompositionController
// Flags:     (0)
// GUID:      {3DF9B733-B9AE-4A15-86B4-EB9EE9826469}
// *********************************************************************//
  ICoreWebView2CompositionController = interface(IUnknown)
    ['{3DF9B733-B9AE-4A15-86B4-EB9EE9826469}']
    function Get_RootVisualTarget(out target: IUnknown): HResult; stdcall;
    function Set_RootVisualTarget(const target: IUnknown): HResult; stdcall;
    function SendMouseInput(eventKind: COREWEBVIEW2_MOUSE_EVENT_KIND; 
                            virtualKeys: COREWEBVIEW2_MOUSE_EVENT_VIRTUAL_KEYS; mouseData: SYSUINT; 
                            point: tagPOINT): HResult; stdcall;
    function SendPointerInput(eventKind: COREWEBVIEW2_POINTER_EVENT_KIND; 
                              const pointerInfo: ICoreWebView2PointerInfo): HResult; stdcall;
    // function Get_Cursor(out Cursor: wireHICON): HResult; stdcall;  wireHICON -> HCURSOR  ************** WEBVIEW4DELPHI **************
    function Get_Cursor(out Cursor: HCURSOR): HResult; stdcall;
    function Get_SystemCursorId(out SystemCursorId: SYSUINT): HResult; stdcall;
    function add_CursorChanged(const eventHandler: ICoreWebView2CursorChangedEventHandler; 
                               out token: EventRegistrationToken): HResult; stdcall;
    function remove_CursorChanged(token: EventRegistrationToken): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2PointerInfo
// Flags:     (0)
// GUID:      {E6995887-D10D-4F5D-9359-4CE46E4F96B9}
// *********************************************************************//
  ICoreWebView2PointerInfo = interface(IUnknown)
    ['{E6995887-D10D-4F5D-9359-4CE46E4F96B9}']
    function Get_PointerKind(out PointerKind: LongWord): HResult; stdcall;
    function Set_PointerKind(PointerKind: LongWord): HResult; stdcall;
    function Get_PointerId(out PointerId: SYSUINT): HResult; stdcall;
    function Set_PointerId(PointerId: SYSUINT): HResult; stdcall;
    function Get_FrameId(out FrameId: SYSUINT): HResult; stdcall;
    function Set_FrameId(FrameId: SYSUINT): HResult; stdcall;
    function Get_PointerFlags(out PointerFlags: SYSUINT): HResult; stdcall;
    function Set_PointerFlags(PointerFlags: SYSUINT): HResult; stdcall;
    function Get_PointerDeviceRect(out PointerDeviceRect: tagRECT): HResult; stdcall;
    function Set_PointerDeviceRect(PointerDeviceRect: tagRECT): HResult; stdcall;
    function Get_DisplayRect(out DisplayRect: tagRECT): HResult; stdcall;
    function Set_DisplayRect(DisplayRect: tagRECT): HResult; stdcall;
    function Get_PixelLocation(out PixelLocation: tagPOINT): HResult; stdcall;
    function Set_PixelLocation(PixelLocation: tagPOINT): HResult; stdcall;
    function Get_HimetricLocation(out HimetricLocation: tagPOINT): HResult; stdcall;
    function Set_HimetricLocation(HimetricLocation: tagPOINT): HResult; stdcall;
    function Get_PixelLocationRaw(out PixelLocationRaw: tagPOINT): HResult; stdcall;
    function Set_PixelLocationRaw(PixelLocationRaw: tagPOINT): HResult; stdcall;
    function Get_HimetricLocationRaw(out HimetricLocationRaw: tagPOINT): HResult; stdcall;
    function Set_HimetricLocationRaw(HimetricLocationRaw: tagPOINT): HResult; stdcall;
    function Get_Time(out Time: LongWord): HResult; stdcall;
    function Set_Time(Time: LongWord): HResult; stdcall;
    function Get_HistoryCount(out HistoryCount: SYSUINT): HResult; stdcall;
    function Set_HistoryCount(HistoryCount: SYSUINT): HResult; stdcall;
    function Get_InputData(out InputData: SYSINT): HResult; stdcall;
    function Set_InputData(InputData: SYSINT): HResult; stdcall;
    function Get_KeyStates(out KeyStates: LongWord): HResult; stdcall;
    function Set_KeyStates(KeyStates: LongWord): HResult; stdcall;
    function Get_PerformanceCount(out PerformanceCount: Largeuint): HResult; stdcall;
    function Set_PerformanceCount(PerformanceCount: Largeuint): HResult; stdcall;
    function Get_ButtonChangeKind(out ButtonChangeKind: SYSINT): HResult; stdcall;
    function Set_ButtonChangeKind(ButtonChangeKind: SYSINT): HResult; stdcall;
    function Get_PenFlags(out PenFlags: SYSUINT): HResult; stdcall;
    function Set_PenFlags(PenFlags: SYSUINT): HResult; stdcall;
    function Get_PenMask(out PenMask: SYSUINT): HResult; stdcall;
    function Set_PenMask(PenMask: SYSUINT): HResult; stdcall;
    function Get_PenPressure(out PenPressure: SYSUINT): HResult; stdcall;
    function Set_PenPressure(PenPressure: SYSUINT): HResult; stdcall;
    function Get_PenRotation(out PenRotation: SYSUINT): HResult; stdcall;
    function Set_PenRotation(PenRotation: SYSUINT): HResult; stdcall;
    function Get_PenTiltX(out PenTiltX: SYSINT): HResult; stdcall;
    function Set_PenTiltX(PenTiltX: SYSINT): HResult; stdcall;
    function Get_PenTiltY(out PenTiltY: SYSINT): HResult; stdcall;
    function Set_PenTiltY(PenTiltY: SYSINT): HResult; stdcall;
    function Get_TouchFlags(out TouchFlags: SYSUINT): HResult; stdcall;
    function Set_TouchFlags(TouchFlags: SYSUINT): HResult; stdcall;
    function Get_TouchMask(out TouchMask: SYSUINT): HResult; stdcall;
    function Set_TouchMask(TouchMask: SYSUINT): HResult; stdcall;
    function Get_TouchContact(out TouchContact: tagRECT): HResult; stdcall;
    function Set_TouchContact(TouchContact: tagRECT): HResult; stdcall;
    function Get_TouchContactRaw(out TouchContactRaw: tagRECT): HResult; stdcall;
    function Set_TouchContactRaw(TouchContactRaw: tagRECT): HResult; stdcall;
    function Get_TouchOrientation(out TouchOrientation: SYSUINT): HResult; stdcall;
    function Set_TouchOrientation(TouchOrientation: SYSUINT): HResult; stdcall;
    function Get_TouchPressure(out TouchPressure: SYSUINT): HResult; stdcall;
    function Set_TouchPressure(TouchPressure: SYSUINT): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2CursorChangedEventHandler
// Flags:     (0)
// GUID:      {9DA43CCC-26E1-4DAD-B56C-D8961C94C571}
// *********************************************************************//
  ICoreWebView2CursorChangedEventHandler = interface(IUnknown)
    ['{9DA43CCC-26E1-4DAD-B56C-D8961C94C571}']
    function Invoke(const sender: ICoreWebView2CompositionController; const args: IUnknown): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2CompositionController2
// Flags:     (0)
// GUID:      {0B6A3D24-49CB-4806-BA20-B5E0734A7B26}
// *********************************************************************//
  ICoreWebView2CompositionController2 = interface(ICoreWebView2CompositionController)
    ['{0B6A3D24-49CB-4806-BA20-B5E0734A7B26}']
    function Get_UIAProvider(out provider: IUnknown): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2Controller2
// Flags:     (0)
// GUID:      {C979903E-D4CA-4228-92EB-47EE3FA96EAB}
// *********************************************************************//
  ICoreWebView2Controller2 = interface(ICoreWebView2Controller)
    ['{C979903E-D4CA-4228-92EB-47EE3FA96EAB}']
    function Get_DefaultBackgroundColor(out backgroundColor: COREWEBVIEW2_COLOR): HResult; stdcall;
    function Set_DefaultBackgroundColor(backgroundColor: COREWEBVIEW2_COLOR): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2Controller3
// Flags:     (0)
// GUID:      {F9614724-5D2B-41DC-AEF7-73D62B51543B}
// *********************************************************************//
  ICoreWebView2Controller3 = interface(ICoreWebView2Controller2)
    ['{F9614724-5D2B-41DC-AEF7-73D62B51543B}']
    function Get_RasterizationScale(out scale: Double): HResult; stdcall;
    function Set_RasterizationScale(scale: Double): HResult; stdcall;
    function Get_ShouldDetectMonitorScaleChanges(out value: Integer): HResult; stdcall;
    function Set_ShouldDetectMonitorScaleChanges(value: Integer): HResult; stdcall;
    function add_RasterizationScaleChanged(const eventHandler: ICoreWebView2RasterizationScaleChangedEventHandler; 
                                           out token: EventRegistrationToken): HResult; stdcall;
    function remove_RasterizationScaleChanged(token: EventRegistrationToken): HResult; stdcall;
    function Get_BoundsMode(out BoundsMode: COREWEBVIEW2_BOUNDS_MODE): HResult; stdcall;
    function Set_BoundsMode(BoundsMode: COREWEBVIEW2_BOUNDS_MODE): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2RasterizationScaleChangedEventHandler
// Flags:     (0)
// GUID:      {9C98C8B1-AC53-427E-A345-3049B5524BBE}
// *********************************************************************//
  ICoreWebView2RasterizationScaleChangedEventHandler = interface(IUnknown)
    ['{9C98C8B1-AC53-427E-A345-3049B5524BBE}']
    function Invoke(const sender: ICoreWebView2Controller; const args: IUnknown): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2CreateCoreWebView2CompositionControllerCompletedHandler
// Flags:     (0)
// GUID:      {02FAB84B-1428-4FB7-AD45-1B2E64736184}
// *********************************************************************//
  ICoreWebView2CreateCoreWebView2CompositionControllerCompletedHandler = interface(IUnknown)
    ['{02FAB84B-1428-4FB7-AD45-1B2E64736184}']
    function Invoke(errorCode: HResult; const webView: ICoreWebView2CompositionController): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2CreateCoreWebView2EnvironmentCompletedHandler
// Flags:     (0)
// GUID:      {4E8A3389-C9D8-4BD2-B6B5-124FEE6CC14D}
// *********************************************************************//
  ICoreWebView2CreateCoreWebView2EnvironmentCompletedHandler = interface(IUnknown)
    ['{4E8A3389-C9D8-4BD2-B6B5-124FEE6CC14D}']
    function Invoke(errorCode: HResult; const createdEnvironment: ICoreWebView2Environment): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2Environment2
// Flags:     (0)
// GUID:      {41F3632B-5EF4-404F-AD82-2D606C5A9A21}
// *********************************************************************//
  ICoreWebView2Environment2 = interface(ICoreWebView2Environment)
    ['{41F3632B-5EF4-404F-AD82-2D606C5A9A21}']
    function CreateWebResourceRequest(uri: PWideChar; Method: PWideChar; const postData: IStream; 
                                      Headers: PWideChar; 
                                      out Request: ICoreWebView2WebResourceRequest): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2Environment3
// Flags:     (0)
// GUID:      {80A22AE3-BE7C-4CE2-AFE1-5A50056CDEEB}
// *********************************************************************//
  ICoreWebView2Environment3 = interface(ICoreWebView2Environment2)
    ['{80A22AE3-BE7C-4CE2-AFE1-5A50056CDEEB}']
    // var ParentWindow: _RemotableHandle --> ParentWindow: HWND    ************** WEBVIEW4DELPHI **************
    function CreateCoreWebView2CompositionController(ParentWindow: HWND;
                                                     const handler: ICoreWebView2CreateCoreWebView2CompositionControllerCompletedHandler): HResult; stdcall;
    function CreateCoreWebView2PointerInfo(out pointerInfo: ICoreWebView2PointerInfo): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2Environment4
// Flags:     (0)
// GUID:      {20944379-6DCF-41D6-A0A0-ABC0FC50DE0D}
// *********************************************************************//
  ICoreWebView2Environment4 = interface(ICoreWebView2Environment3)
    ['{20944379-6DCF-41D6-A0A0-ABC0FC50DE0D}']
    // function GetProviderForHwnd(var hwnd: _RemotableHandle; out provider: IUnknown): HResult; stdcall;  var hwnd: _RemotableHandle -> aHWND: HWND    ************** WEBVIEW4DELPHI **************
    function GetProviderForHwnd(aHWND: HWND; out provider: IUnknown): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2Environment5
// Flags:     (0)
// GUID:      {319E423D-E0D7-4B8D-9254-AE9475DE9B17}
// *********************************************************************//
  ICoreWebView2Environment5 = interface(ICoreWebView2Environment4)
    ['{319E423D-E0D7-4B8D-9254-AE9475DE9B17}']
    function add_BrowserProcessExited(const eventHandler: ICoreWebView2BrowserProcessExitedEventHandler; 
                                      out token: EventRegistrationToken): HResult; stdcall;
    function remove_BrowserProcessExited(token: EventRegistrationToken): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2Environment6
// Flags:     (0)
// GUID:      {E59EE362-ACBD-4857-9A8E-D3644D9459A9}
// *********************************************************************//
  ICoreWebView2Environment6 = interface(ICoreWebView2Environment5)
    ['{E59EE362-ACBD-4857-9A8E-D3644D9459A9}']
    function CreatePrintSettings(out printSettings: ICoreWebView2PrintSettings): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2Environment7
// Flags:     (0)
// GUID:      {43C22296-3BBD-43A4-9C00-5C0DF6DD29A2}
// *********************************************************************//
  ICoreWebView2Environment7 = interface(ICoreWebView2Environment6)
    ['{43C22296-3BBD-43A4-9C00-5C0DF6DD29A2}']
    function Get_UserDataFolder(out value: PWideChar): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2EnvironmentOptions
// Flags:     (0)
// GUID:      {2FDE08A8-1E9A-4766-8C05-95A9CEB9D1C5}
// *********************************************************************//
  ICoreWebView2EnvironmentOptions = interface(IUnknown)
    ['{2FDE08A8-1E9A-4766-8C05-95A9CEB9D1C5}']
    function Get_AdditionalBrowserArguments(out value: PWideChar): HResult; stdcall;
    function Set_AdditionalBrowserArguments(value: PWideChar): HResult; stdcall;
    function Get_Language(out value: PWideChar): HResult; stdcall;
    function Set_Language(value: PWideChar): HResult; stdcall;
    function Get_TargetCompatibleBrowserVersion(out value: PWideChar): HResult; stdcall;
    function Set_TargetCompatibleBrowserVersion(value: PWideChar): HResult; stdcall;
    function Get_AllowSingleSignOnUsingOSPrimaryAccount(out allow: Integer): HResult; stdcall;
    function Set_AllowSingleSignOnUsingOSPrimaryAccount(allow: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2FrameInfo
// Flags:     (0)
// GUID:      {DA86B8A1-BDF3-4F11-9955-528CEFA59727}
// *********************************************************************//
  ICoreWebView2FrameInfo = interface(IUnknown)
    ['{DA86B8A1-BDF3-4F11-9955-528CEFA59727}']
    function Get_name(out name: PWideChar): HResult; stdcall;
    function Get_Source(out Source: PWideChar): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2FrameInfoCollection
// Flags:     (0)
// GUID:      {8F834154-D38E-4D90-AFFB-6800A7272839}
// *********************************************************************//
  ICoreWebView2FrameInfoCollection = interface(IUnknown)
    ['{8F834154-D38E-4D90-AFFB-6800A7272839}']
    function GetIterator(out iterator: ICoreWebView2FrameInfoCollectionIterator): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2FrameInfoCollectionIterator
// Flags:     (0)
// GUID:      {1BF89E2D-1B2B-4629-B28F-05099B41BB03}
// *********************************************************************//
  ICoreWebView2FrameInfoCollectionIterator = interface(IUnknown)
    ['{1BF89E2D-1B2B-4629-B28F-05099B41BB03}']
    function Get_hasCurrent(out hasCurrent: Integer): HResult; stdcall;
    function GetCurrent(out frameInfo: ICoreWebView2FrameInfo): HResult; stdcall;
    function MoveNext(out hasNext: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2NewWindowRequestedEventArgs2
// Flags:     (0)
// GUID:      {BBC7BAED-74C6-4C92-B63A-7F5AEAE03DE3}
// *********************************************************************//
  ICoreWebView2NewWindowRequestedEventArgs2 = interface(ICoreWebView2NewWindowRequestedEventArgs)
    ['{BBC7BAED-74C6-4C92-B63A-7F5AEAE03DE3}']
    function Get_name(out value: PWideChar): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2ProcessFailedEventArgs2
// Flags:     (0)
// GUID:      {4DAB9422-46FA-4C3E-A5D2-41D2071D3680}
// *********************************************************************//
  ICoreWebView2ProcessFailedEventArgs2 = interface(ICoreWebView2ProcessFailedEventArgs)
    ['{4DAB9422-46FA-4C3E-A5D2-41D2071D3680}']
    function Get_reason(out reason: COREWEBVIEW2_PROCESS_FAILED_REASON): HResult; stdcall;
    function Get_ExitCode(out ExitCode: SYSINT): HResult; stdcall;
    function Get_ProcessDescription(out ProcessDescription: PWideChar): HResult; stdcall;
    function Get_FrameInfosForFailedProcess(out frames: ICoreWebView2FrameInfoCollection): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2Settings2
// Flags:     (0)
// GUID:      {EE9A0F68-F46C-4E32-AC23-EF8CAC224D2A}
// *********************************************************************//
  ICoreWebView2Settings2 = interface(ICoreWebView2Settings)
    ['{EE9A0F68-F46C-4E32-AC23-EF8CAC224D2A}']
    function Get_UserAgent(out UserAgent: PWideChar): HResult; stdcall;
    function Set_UserAgent(UserAgent: PWideChar): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2Settings3
// Flags:     (0)
// GUID:      {FDB5AB74-AF33-4854-84F0-0A631DEB5EBA}
// *********************************************************************//
  ICoreWebView2Settings3 = interface(ICoreWebView2Settings2)
    ['{FDB5AB74-AF33-4854-84F0-0A631DEB5EBA}']
    function Get_AreBrowserAcceleratorKeysEnabled(out AreBrowserAcceleratorKeysEnabled: Integer): HResult; stdcall;
    function Set_AreBrowserAcceleratorKeysEnabled(AreBrowserAcceleratorKeysEnabled: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2Settings4
// Flags:     (0)
// GUID:      {CB56846C-4168-4D53-B04F-03B6D6796FF2}
// *********************************************************************//
  ICoreWebView2Settings4 = interface(ICoreWebView2Settings3)
    ['{CB56846C-4168-4D53-B04F-03B6D6796FF2}']
    function Get_IsPasswordAutosaveEnabled(out value: Integer): HResult; stdcall;
    function Set_IsPasswordAutosaveEnabled(value: Integer): HResult; stdcall;
    function Get_IsGeneralAutofillEnabled(out value: Integer): HResult; stdcall;
    function Set_IsGeneralAutofillEnabled(value: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2Settings5
// Flags:     (0)
// GUID:      {183E7052-1D03-43A0-AB99-98E043B66B39}
// *********************************************************************//
  ICoreWebView2Settings5 = interface(ICoreWebView2Settings4)
    ['{183E7052-1D03-43A0-AB99-98E043B66B39}']
    function Get_IsPinchZoomEnabled(out enabled: Integer): HResult; stdcall;
    function Set_IsPinchZoomEnabled(enabled: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICoreWebView2Settings6
// Flags:     (0)
// GUID:      {11CB3ACD-9BC8-43B8-83BF-F40753714F87}
// *********************************************************************//
  ICoreWebView2Settings6 = interface(ICoreWebView2Settings5)
    ['{11CB3ACD-9BC8-43B8-83BF-F40753714F87}']
    function Get_IsSwipeNavigationEnabled(out enabled: Integer): HResult; stdcall;
    function Set_IsSwipeNavigationEnabled(enabled: Integer): HResult; stdcall;
  end;

implementation

uses
  {$IFDEF FPC}
  ComObj;
  {$ELSE}
  System.Win.ComObj;
  {$ENDIF}


end.

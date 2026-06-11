!include "MUI2.nsh"
!define APP_NAME "HSE Manager"
!define APP_VERSION "1.0.0"

OutFile "HSE-Manager-Setup.exe"
InstallDir "$PROGRAMFILES\HSE Manager"
RequestExecutionLevel admin

!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH
!insertmacro MUI_LANGUAGE "English"

Section "Install"
  SetOutPath "$INSTDIR"
  WriteUninstaller "$INSTDIR\uninstall.exe"
  CreateDirectory "$SMPROGRAMS\${APP_NAME}"
  CreateShortCut "$SMPROGRAMS\${APP_NAME}\${APP_NAME}.lnk" "$INSTDIR\index.html"
  MessageBox MB_OK "${APP_NAME} v${APP_VERSION} installed successfully!"
SectionEnd

Section "Uninstall"
  Delete "$INSTDIR\uninstall.exe"
  RMDir "$INSTDIR"
SectionEnd

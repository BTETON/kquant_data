#AutoIt3Wrapper_Change2CUI=y
;#RequireAdmin,��ᵼ������ģʽû��
; ���Ʒ�����������ʱ��Զ������رջᵼ��autoit3�����ͼ��̲���ʧЧ�������RealVNC
#Include <GuiTab.au3>
#include <GuiButton.au3>
#include <GuiComboBox.au3>

Func RunMain()
   ; ������ͨ���������������
   Local $iPID = Run("D:\new_hbzq\TdxW.exe", "")
   ; ������ͨ��������ı���
   Local $title = "[TITLE:����֤ȯ������V7.72; CLASS:#32770]"
   WinActivate($title)
   Local $hLoginWnd = WinWaitActive($title)

   ; ��¼
   Sleep(500)
   ControlClick($hLoginWnd, "", "[CLASS:AfxWnd42; INSTANCE:3]")

   ; �ҵ�������
   Local $title = "[CLASS:TdxW_MainFrame_Class]"
   WinActivate($title)
   Local $hMainWnd = WinWaitActive($title)
   SendKeepActive($hMainWnd)
   WinMove($hMainWnd, "", 0, 0, 300, 400)
   Return $hMainWnd
EndFunc

Func PopOptionDlg($hMainWnd)
   Sleep(2000)
   ControlClick($hMainWnd, "", 1004)
   Send('{DOWN 1}{ENTER}')
EndFunc

Func PopDownloadDlg($hMainWnd)

   ;�ڱ��ؾ�Ȼ�����ã���Ȼ�����
   ;Sleep(2000)
   ;WinClose("[TITLE:��ʱ����; CLASS:#32770]")

   ; ������̺���������
   ; ���ʹ��Mouse without Borders���������ж�̨���Ի����
   Sleep(2000)
   ControlClick($hMainWnd, "", 1000)
   Send('{DOWN 11}{ENTER}')
EndFunc

Func WaitOptionDlg()
   ; ����Ҫ��һ�ȣ���Ϊ���ݻᱻˢ��
   Local $title = "[TITLE:����Ʒ����; CLASS:#32770]"
   WinActivate($title)
   Local $hDlgWnd = WinWaitActive($title)
   Local $idBtn1 = ControlGetHandle($hDlgWnd,"","[TEXT:������վ]")
   _GUICtrlButton_Click($idBtn1)
   WinWaitClose($hDlgWnd)
EndFunc

Func SetCheckDownloadDlg()
   ; �����������
   Local $title = "[TITLE:�̺���������; CLASS:#32770]"
   WinActivate($title)
   Local $hDlgWnd = WinWaitActive($title)


   Sleep(500)
   Local $idRdo1 = ControlGetHandle($hDlgWnd,"","[TEXT:���ߺ�ʵʱ��������]")
   Local $idRdo2 = ControlGetHandle($hDlgWnd,"","[TEXT:5����������]")
   Local $idRdo3 = ControlGetHandle($hDlgWnd,"","[TEXT:1����������]")
   Local $idRdo4 = ControlGetHandle($hDlgWnd,"","[TEXT:��������]")

   If False Then
	  ; ����һҳ����������ѡ��
	  ;_GUICtrlButton_SetCheck($idRdo1)
	  ; ���ڶ�ҳ��5��������ѡ��
	  ;_GUICtrlButton_SetCheck($idRdo2)
   EndIf

   ; ������ҳ������ѡ��
   _GUICtrlButton_SetCheck($idRdo4)

   ; �����ҳ����Ҫ���õ�ʱ������л�
   Local $idTab = ControlGetHandle($hDlgWnd,"","[CLASS:SysTabControl32; INSTANCE:1]")
   _GUICtrlTab_SetCurFocus($idTab, 3)

   Sleep(1000)

   _GUICtrlTab_SetCurFocus($idTab, 1)
   _GUICtrlTab_SetCurFocus($idTab, 0)
   _GUICtrlTab_SetCurFocus($idTab, 3)

   Sleep(1000)

   Local $hDate = ControlGetHandle($hDlgWnd,"","[ID:1237]")
   ;$sTime = GUICtrlRead($hDate)
   ;ConsoleWrite($sTime)
   ;Local $sText = WinGetText($hDate)
   ;ConsoleWrite($sText)
   ;GUICtrlSetData($hDate, "2018-01-01 00:00:00")

   ; ������ҳ������ѡ��
   Local $idRdo5 = ControlGetHandle($hDlgWnd,"","[TEXT:�������й����ڻ���������]")
   ; ֻ��ѡ�У������ᵼ�³���������
   _GUICtrlButton_Click($idRdo5)
   _GUICtrlButton_SetCheck($idRdo5)
   ; ���ID�᲻��䣿
   Local $idRdo6 = ControlGetHandle($hDlgWnd,"","[ID:2087]")

   _GUICtrlComboBox_ShowDropDown($idRdo6, True)
   _GUICtrlComboBox_SelectString($idRdo6,"��Ȩ")

EndFunc

Func ClickDownloadDlg()
   Local $title = "[TITLE:�̺���������; CLASS:#32770]"
   WinActivate($title)
   Local $hDlgWnd = WinWaitActive($title)

   ; ��ʼ��������
   Sleep(500)
   ControlClick($hDlgWnd, "", "[TEXT:��ʼ����]")
EndFunc


Func WaitDownloadDlg()
   ; ��ʼ��������
   Local $title = "[TITLE:�̺���������; CLASS:#32770]"
   WinActivate($title)
   Local $hDlgWnd = WinWaitActive($title)

   Local $idtext = ''
   Do
	  Sleep(2000)
	  $idtext = ControlGetText($hDlgWnd,"","[CLASS:Static; INSTANCE:2]")
   Until '�������.' = $idtext
   ;Until '���ر�ȡ��.' = $idtext
   ; �ҵ��������.
   MsgBox($MB_SYSTEMMODAL, "Title", "����Ϣ��5�뵹��ʱ���Զ��ر�", 5)
EndFunc

Func ExitMain()
   ; ��Ҫ�˳����ضԻ��򣬷������û����ȫ�˳�
   Local $title = "[TITLE:�̺���������; CLASS:#32770]"
   WinActivate($title)
   Local $hDlgWnd = WinWaitActive($title)
   WinClose($hDlgWnd)
   WinWaitClose($hDlgWnd)

   ; �ر�������
   Local $title = "[CLASS:TdxW_MainFrame_Class]"
   WinActivate($title)
   Local $hMainWnd = WinWaitActive($title)
   WinClose($hMainWnd)

   ; ȷ���˳�
   Local $hMainWnd = WinWaitActive("[TITLE:�˳�ȷ��; CLASS:#32770]")
   ControlClick($hMainWnd, "", "[TEXT:�˳�]")
EndFunc

Func ExitPop()
   ; ��Ҫ�˳����ضԻ��򣬷������û����ȫ�˳�
   Local $title = "[TITLE:����֤ȯ; CLASS:#32770]"
   WinActivate($title)
   Local $hDlgWnd = WinWaitActive($title)
   WinClose($hDlgWnd)
   WinWaitClose($hDlgWnd)
EndFunc


$hMainWnd = RunMain()
ExitPop()
PopOptionDlg($hMainWnd)
WaitOptionDlg()
PopDownloadDlg($hMainWnd)
SetCheckDownloadDlg()

;ClickDownloadDlg()
;WaitDownloadDlg()
;ExitMain()

Exit(1)



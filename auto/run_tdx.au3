;#RequireAdmin,��ᵼ������ģʽû��
; ���Ʒ�����������ʱ��Զ������رջᵼ��autoit3�����ͼ��̲���ʧЧ�������RealVNC
#Include <GuiTab.au3>
#include <GuiButton.au3>

Func RunMain()
   ; ������ͨ���������������
   Local $iPID = Run("D:\new_hbzq\TdxW.exe", "")
   ; ������ͨ��������ı���
   Local $title = "[TITLE:����֤ȯ������V7.61; CLASS:#32770]"
   WinActivate($title)
   Local $hLoginWnd = WinWaitActive($title)

   ; ��ʼ��������
   Sleep(500)
   ControlClick($hLoginWnd, "", "[CLASS:AfxWnd42; INSTANCE:3]")
EndFunc

Func PopDownloadDlg()
   ; �ҵ������ڣ����������ضԻ���
   Local $title = "[CLASS:TdxW_MainFrame_Class]"
   WinActivate($title)
   Local $hMainWnd = WinWaitActive($title)
   SendKeepActive($hMainWnd)
   WinMove($hMainWnd, "", 0, 0, 300, 400)

   ;�ڱ��ؾ�Ȼ�����ã���Ȼ�����
   ;Sleep(2000)
   ;WinClose("[TITLE:��ʱ����; CLASS:#32770]")

   ; ������̺���������
   ; ���ʹ��Mouse without Borders���������ж�̨���Ի����
   Sleep(2000)
   ControlClick($hMainWnd, "", 1000)
   Send('{DOWN 11}{ENTER}')
EndFunc

Func SetCheckDownloadDlg()
   ; �����������
   Local $title = "[TITLE:�̺���������; CLASS:#32770]"
   WinActivate($title)
   Local $hDlgWnd = WinWaitActive($title)


   ; ����һҳ����������ѡ��
   Sleep(500)
   Local $idRdo1 = ControlGetHandle($hDlgWnd,"","[TEXT:���ߺ�ʵʱ��������]")
   Local $idRdo2 = ControlGetHandle($hDlgWnd,"","[TEXT:5����������]")
   Local $idRdo3 = ControlGetHandle($hDlgWnd,"","[TEXT:1����������]")
   _GUICtrlButton_SetCheck($idRdo1)
   ; ���ڶ�ҳ��5��������ѡ��
   _GUICtrlButton_SetCheck($idRdo2)

   ; �����ҳ����Ҫ���õ�ʱ������л�
   Local $idTab = ControlGetHandle($hDlgWnd,"","[CLASS:SysTabControl32; INSTANCE:1]")
   _GUICtrlTab_SetCurFocus($idTab, 1)
   _GUICtrlTab_SetCurFocus($idTab, 0)
   _GUICtrlTab_SetCurFocus($idTab, 1)
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
   Sleep(500)
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
   Sleep(500)

   ; �ر�������
   Local $title = "[CLASS:TdxW_MainFrame_Class]"
   WinActivate($title)
   Local $hMainWnd = WinWaitActive($title)
   WinClose($hMainWnd)

   ; ȷ���˳�
   Local $hMainWnd = WinWaitActive("[TITLE:�˳�ȷ��; CLASS:#32770]")
   ControlClick($hMainWnd, "", "[TEXT:�˳�]")
EndFunc


RunMain()
PopDownloadDlg()
SetCheckDownloadDlg()
ClickDownloadDlg()
WaitDownloadDlg()
ExitMain()

Exit(1)



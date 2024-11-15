import time
import win32com.client

# Zugriff auf die offene SAP GUI-Instanz
SapGuiAuto = win32com.client.GetObject("SAPGUI")
objGui = SapGuiAuto.GetScriptingEngine
objConn = objGui.Children(0)
session = objConn.Children(0)

# Anpassung der Fenstergröße
session.FindById("wnd[0]").ResizeWorkingPane(164, 29, False)

# Eingabe der Transaktion "/nZLRSS"
session.FindById("wnd[0]/tbar[0]/okcd").Text = "/nZLRSS"
session.FindById("wnd[0]").SendVKey(0)

# Eingabefelder ausfüllen (Beispiel für die Daten aus deinem Blatt SAPdata)
selectedStart = "01.01.2024"  # Beispielwert, ersetze durch den Wert aus deinem Sheet
selectedEnd = "31.12.2024"    # Beispielwert, ersetze durch den Wert aus deinem Sheet

session.FindById("wnd[0]/usr/ctxtS_VSTEL-LOW").Text = "Raz*"
session.FindById("wnd[0]/usr/ctxtS_PDATE-LOW").Text = selectedStart
session.FindById("wnd[0]/usr/ctxtS_PDATE-HIGH").Text = selectedEnd
session.FindById("wnd[0]/usr/ctxtS_WERKS-LOW").Text = "PRAZ"
session.FindById("wnd[0]/usr/ctxtP_VAR").Text = "/cp prod"

# Fokus auf das Eingabefeld setzen und CaretPosition einstellen
session.FindById("wnd[0]/usr/ctxtP_VAR").SetFocus
session.FindById("wnd[0]/usr/ctxtP_VAR").CaretPosition = 8

# Klicken auf den Button
session.FindById("wnd[0]/tbar[1]/btn[8]").Press()

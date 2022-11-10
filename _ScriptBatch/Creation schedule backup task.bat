schtasks /create /tn "saveDocuments_old_weeks" /tr "c:\#saveDocumentsFolder" /sc weekly /d TUE /MO 2 /st 02:00 /sd 04/09/2022


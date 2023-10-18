# -*- coding: utf-8 -*-
import os
import shutil

folder_wejsciowy = "AbdomenCT"  # Zast¹p to w³aœciw¹ œcie¿k¹ do folderu wejœciowego
folder_wyjsciowy = "New_Abdomen"  # Zast¹p to w³aœciw¹ œcie¿k¹ do folderu wyjœciowego

if not os.path.exists(folder_wyjsciowy):
    os.makedirs(folder_wyjsciowy)

for nazwa_pliku in os.listdir(folder_wejsciowy):
    if nazwa_pliku.endswith(".jpeg"):
        stara_nazwa = os.path.join(folder_wejsciowy, nazwa_pliku)
        nowa_nazwa = os.path.join(folder_wyjsciowy, nazwa_pliku.replace(".jpeg", ".jpg"))
        shutil.copy(stara_nazwa, nowa_nazwa)
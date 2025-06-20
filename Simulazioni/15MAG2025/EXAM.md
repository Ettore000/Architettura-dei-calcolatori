# 📄 Traccia – Prova di Laboratorio ADC (16 Maggio 2025)

**Calcolatori Elettronici - Architettura dei Calcolatori**  
**Prova di Laboratorio - Assembly RISC-V: maxmin_array**  
**Data:** 16 Maggio 2025

## 📝 Specifiche

Dovete scrivere un programma assembly che allochi un array `arr` di **5 interi**.  
Una funzione `riempi_array` riceve il puntatore all’array come parametro e riempie ogni singola componente `arr[i]` con un valore ricevuto in input dall’utente.  
La funzione non ritorna alcun valore al `main`.

Una seconda funzione `trova_maxmin` riceve come parametro l’indirizzo dell’array, esegue un `loop` per individuare il **max** ed il **min** valore e li ritorna al `main`, che li stampa.

### ⚠️ Requisiti

- Devono essere usate **funzioni** (con parametri e `ret`)
- Il max/min deve essere calcolato mediante **loop**
- Tutti i **registri** devono essere gestiti correttamente
- Si usano le **system call di RARS**

### 🖨️ Output atteso


# Assembly RISC-V – Esercitazioni ADC

Questo repository contiene esercitazioni pratiche in **Assembly RISC-V** per prepararsi all’esame di **Architettura dei Calcolatori** (ADC), con particolare attenzione alla prova pratica su RARS.

## Contenuto

- `maxmin_array.asm`  
  Inserisce 5 interi in un array, poi trova e stampa il massimo e il minimo.  
  Include:
  - Input/output da tastiera
  - Uso corretto di funzioni (`call`, `ret`)
  - Calcolo indirizzi via offset
  - Uso dei registri temporanei e di ritorno (`t0`–`t6`, `a0`–`a3`)
  - Allineamento corretto della memoria (`.align 2`)

## 🛠 Requisiti

- [RARS](https://github.com/TheThirdOne/rars) – RISC-V Assembler and Runtime Simulator  
  Scarica ed esegui `RARS.jar`.

## ▶Esecuzione

Apri `maxmin_array.asm` in RARS e premi **F5** per eseguire il programma.  
Inserisci i 5 valori richiesti e osserva l'output di massimo e minimo.

## Obiettivi didattici

- Familiarizzare con la sintassi e le convenzioni di chiamata in RISC-V
- Capire l’uso degli indirizzi e dei registri
- Prepararsi alla prova pratica scritta/orale di Architettura dei Calcolatori

## Esame di riferimento

- Appello del **16 maggio 2025** – Università degli Studi del Sannio  
  Simulazione e struttura identica alla prova ufficiale.

## Licenza

Distribuito per scopi didattici.  
Usalo per studiare, non per copiare a occhi chiusi.  
Ogni copia priva di comprensione ti condannerà a loop infiniti.

---

**Simulazione Esame - Architettura dei Calcolatori**
**Data: 20 Giugno 2025**
**Ambiente: RARS - Assembly RISC-V**

---

**Traccia**

Scrivere un programma Assembly in RISC-V che:

1. Allochi un array di **5 interi** in memoria.
2. Una funzione `carica_array_pari` riceve il puntatore all'array e:

   * chiede all'utente 5 numeri interi,
   * **accetta solo i numeri pari**: se un numero inserito è dispari, richiede nuovamente lo stesso indice,
   * salva i 5 numeri pari consecutivi all'interno dell'array.
3. Una funzione `somma_array` riceve il puntatore all'array e:

   * calcola la **somma totale dei 5 numeri** presenti,
   * ritorna la somma nel registro `a2`.
4. Il `main` deve:

   * stampare la somma su terminale seguendo l'esempio d'output.

---

**Requisiti obbligatori**

* Usare **funzioni separate** con passaggio di parametri e ritorno dei risultati secondo convenzioni RISC-V.
* Usare **loop e controllo condizionale** per filtrare i numeri pari.
* Ogni valore deve essere scritto in memoria solo **dopo validazione**.
* Utilizzare correttamente aritmetica degli indirizzi.
* Il file deve contenere commenti iniziali con `Title`, `Author`, `Description`, `Input`, `Output`, e data aggiornata.

---

**Esempio di output atteso:**

```
Inserisci un numero pari per arr[0]: 3
Non è pari. Riprova.
Inserisci un numero pari per arr[0]: 8
Inserisci un numero pari per arr[1]: 4
Inserisci un numero pari per arr[2]: 12
Inserisci un numero pari per arr[3]: 0
Inserisci un numero pari per arr[4]: -6

La somma è: 18

-- program is finished running --
```

---

**Note**

> "Controlla i dati. Controlla i registri. Controlla la tua vita. Ma soprattutto: controlla se è pari."

**Fine traccia.**


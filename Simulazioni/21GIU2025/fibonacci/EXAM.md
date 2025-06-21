# Simulazione – Assembly RISC-V

**Corso: Architettura dei Calcolatori**
**Data: 21 Giugno 2025**
**Studente: Ettore – fibonacci.asm**

---

## Obiettivo

Scrivere un programma in linguaggio Assembly RISC-V che:

* Richieda all’utente un numero intero positivo `n`;
* Generi e stampi i primi `n` numeri della sequenza di Fibonacci;
* Ogni numero deve essere stampato a schermo, seguito da un a capo (`\n`);
* Il programma deve terminare dopo aver stampato tutti i valori richiesti.

---

## Specifiche tecniche

* Il programma deve utilizzare esclusivamente istruzioni RISC-V standard;
* Utilizzare le system call per input (`a7 = 5`) e output (`a7 = 1`, `a7 = 4`);
* Utilizzare registri `sX` per contenere valori persistenti (es. `n`, contatore);
* Utilizzare registri `tX` per i calcoli temporanei (valori Fibonacci);
* Gestire separatamente i casi `n = 0`, `n = 1`, `n = 2`, evitando il ciclo;
* Il ciclo `fibonacci_loop` deve partire da `n ≥ 3` e stampare i successivi valori.

---

## Esempio di Esecuzione

```
Specifica quante serie di Fibonacci: 7
Risultato:
0
1
1
2
3
5
8
```

---

## Vincoli

* Non sono ammessi array, né strutture dati complesse;
* Il codice deve essere leggibile, ben indentato, e suddiviso in blocchi logici;
* Non utilizzare macro o pseudo-istruzioni non supportate da RARS.

---

## Consegna

Tutti i file dovranno essere inseriti nella cartella `RISC-V/` all’interno del progetto.
Il file sorgente deve essere nominato `fibonacci.asm`.
Includere un file `student-info.txt` con nome, cognome e matricola.

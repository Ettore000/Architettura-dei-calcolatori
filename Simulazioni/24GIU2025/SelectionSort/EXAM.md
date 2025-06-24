## Esercizio d'esame: Ordinamento con Selection Sort (RISC-V Assembly)

**Titolo:** Selection Sort su array statico
**Data consegna:** 24 giugno 2025
**Autore:** Ettore

### Obiettivo

Scrivere un programma in linguaggio assembly RISC-V che implementi l'algoritmo di ordinamento Selection Sort su un array statico di 10 numeri interi.

### Descrizione dettagliata

Il programma deve:

1. Dichiarare un array statico di 10 numeri interi nel segmento `.data`.
2. Stampare tutti i numeri contenuti nell'array, uno per riga.
3. Stampare un messaggio a video che indichi l'inizio dell'ordinamento.
4. Ordinare l'array utilizzando l'algoritmo di Selection Sort.
5. Stampare nuovamente tutti i numeri dell'array (ora ordinati), uno per riga.
6. Terminare il programma.

### Requisiti

* Utilizzare registri temporanei (`t0`-`t6`) per il calcolo degli indirizzi e per i valori temporanei.
* Utilizzare registri salvati (`s0`-`s2`) per contenere:

  * Il puntatore all'array (`s0`)
  * La lunghezza dell'array (`s1`)
  * Il contatore di ciclo esterno (`s2`)
* Implementare correttamente i due cicli annidati dell'algoritmo di Selection Sort.
* Lo swap deve essere fatto usando registri temporanei, dopo aver calcolato gli indirizzi.

### Suggerimenti

* Ogni elemento dell'array occupa 4 byte (una word): ricordati di moltiplicare gli indici per 4 per ottenere gli offset corretti.
* La stampa dei numeri deve avvenire con `ecall` di tipo 1 (stampa intero).
* La stampa delle stringhe deve avvenire con `ecall` di tipo 4 (stampa stringa).
* Alla fine del programma, usa `ecall` di tipo 10 per terminare correttamente.

### Bonus

* Evitare swap inutili quando `i == min_index`.
* Inserire commenti chiari e ordinati nel codice.

### Esempio di output

```
5
3
8
4
2
7
1
9
6
0
(ordinamento in corso...)
0
1
2
3
4
5
6
7
8
9
```

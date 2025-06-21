**Simulazione Esame - Architettura dei Calcolatori**
**Data: 21 Giugno 2025**
**Ambiente: RARS - Assembly RISC-V**

---

**Traccia ufficiale**

Scrivere un programma Assembly in RISC-V che:

1. Chieda all'utente di inserire una **stringa alfanumerica di massimo 30 caratteri** (incluso lo spazio finale per il terminatore NULL).
2. Salvi la stringa in memoria, usando una variabile riservata con `.space`.
3. Scorra ogni carattere e:

   * se il carattere è una **lettera minuscola tra 'a' e 'z'**, lo converta in maiuscolo sottraendo **32** (in ASCII, 'A' - 'a' = -32);
   * altrimenti lasci il carattere invariato.
4. Stampi a video la stringa risultante in **maiuscolo**.

---

**Requisiti obbligatori**

* Usare le **system call** standard per input (`li a7, 8`) e output (`li a7, 4`).
* Usare **istruzioni byte-oriented** (`lbu`, `sb`) per gestire i singoli caratteri.
* La variabile per la stringa deve essere definita con `.space 31` e, per sicurezza, **allineata** con `.align 0` o superiore.
* Il codice deve contenere commenti iniziali con `Title`, `Author`, `Description`, `Input`, `Output`, e la data aggiornata.

---

**Esempio di output atteso:**

```
Inserisci una stringa: guaglioooooo

Stringa in maiuscolo: GUAGLIOOOOOO

-- program is finished running --
```

---

**Note**

> "Il maiuscolo non è solo un caso. È una scelta di carattere."

---

* Non usare nomi di file a caso.
* Non dimenticare i commenti iniziali.
* Non esagerare con le minuscole.

**Fine traccia.**

# INTAKE

Scopo: classificare richieste grezze prima che diventino lavoro.

## Quando usare intake
Usa intake quando una richiesta:
- cambia scope, priorita o convenzioni
- tocca piu file o superfici
- puo richiedere piano, backlog, ADR o analisi
- e ancora vaga o esplorativa

Non usare intake per micro-task locali, chiari e reversibili.

## Routing rapido
### 1. Esegui subito
Usa questo esito se la richiesta e:
- piccola
- locale
- chiara
- reversibile

### 2. Crea un piano
Usa questo esito se la richiesta e:
- multi-step
- cross-surface
- con rischio di regressione o drift

Destinazione: `plans/PLAN-YYYY-MM-DD-<slug>.md`

### 3. Metti in backlog
Usa questo esito se il lavoro e valido ma non immediato.

Destinazione: `BACKLOG.md`

### 4. Parcheggia come idea
Usa questo esito per spunti utili ma non maturi.

Destinazione: `BACKLOG.md` sezione idee o equivalente.

### 5. Apri brainstorming
Usa questo esito quando serve esplorazione prima di decidere.

Destinazione: `docs/BRAINSTORM.md` o nota equivalente.

### 6. Tratta come candidato ADR
Usa questo esito quando cambia architettura, policy, confini o convenzioni stabili.

Destinazione: `adr/` oppure nota ADR candidate.

### 7. Chiedi analisi prima
Usa questo esito quando non e chiaro l'impatto o quando serve inventory/compatibility check.

Destinazione: analisi dedicata o `ai-project-scan`.

### 8. Rimanda
Usa questo esito quando la richiesta e valida ma non prioritaria adesso.

Destinazione: backlog o idea bank.

### 9. Blocca/scarta
Usa questo esito quando la richiesta e incoerente, dannosa o fuori scopo.

## Nota pratica
L'intake non sostituisce backlog, piani, ADR o docs.
Serve solo a instradare correttamente le richieste verso l'artefatto giusto.

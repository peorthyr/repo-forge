# INTAKE

Scopo: classificare richieste grezze e nuove idee prima che diventino lavoro immediato.

## Regola base
Se la richiesta e piccola, locale, chiara e reversibile, si puo eseguire subito.
Altrimenti va classificata.

## Esiti possibili
- `do-now`: lavoro immediato e locale
- `plan`: richiede `plans/`
- `backlog`: va fatto, ma non ora
- `idea`: spunto non ancora maturo
- `brainstorm`: serve esplorazione
- `adr-candidate`: decisione architetturale o di policy
- `analysis-first`: impatto o compatibilita non chiari
- `defer`: valido ma non prioritario
- `reject`: fuori scope, incoerente o dannoso

## Destinazioni tipiche
- `plan` -> `plans/`
- `backlog` -> `BACKLOG.md`
- `idea` -> sezione idee o equivalente
- `brainstorm` -> `docs/BRAINSTORM.md`
- `adr-candidate` -> `adr/` o nota candidata
- `analysis-first` -> analisi dedicata o `ai-project-scan`

## Nota pratica
L'intake deve restare leggero.
Non e un sistema di ticketing.
Serve a evitare che ogni idea detta in chat diventi subito modifica del repo.

# Notes + TODOs

- [ ] CDS Editor syntax highlights needs 2b fixed 
- [ ] Fiori app bauen → app/fiori.html, webapp, ...
- [ ] Funktioniert das alles in BAS? → insbesondere... 
  - [ ] das clonen 
  - [ ] das arbeiten workspaces
  - [ ] das öffnen mehrerer Terminals
- [ ] Einfacher Extensions Guide als Vue.js app? 
  - [ ] embedded in FLP?
- [ ] Wäre gut wenn wir `cds extend` hätten?
- [ ] `cds push` -> bad error message:
    ```js
    [ERROR] ENOENT: no such file or directory, open '/Users/daniel/cap/demos/incidents-allin1/ext-solar/gen/extension.tgz'
        at Object.openSync (node:fs:599:3)
        at Object.readFileSync (node:fs:467:35)
        at Push.run (/Users/daniel/cap/dev/cds-dk/lib/client/push.js:22:24)
        at process.processTicksAndRejections (node:internal/process/task_queues:95:5)
        at async Object.push (/Users/daniel/cap/dev/cds-dk/bin/push.js:55:5)
    ```
- [ ] `cds push` -> call `cds build` automatically 
- [ ] `cds push ... --to <marketplace>` -> if we had one
- [ ] `cds push <archive> --to ...` -> required for reuse

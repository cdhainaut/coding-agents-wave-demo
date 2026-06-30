# Projet : ressource houlomotrice FEM

## Contexte

Ce dossier est une démo synthétique pour montrer un coding agent sur une mini-chaîne scientifique :

```text
extrait scientifique → hypothèses → formule → code → tests → rapport
```

Le cas d'étude est l'estimation rapide du flux d'énergie houlomotrice en eau profonde à partir d'une série temporelle de bouée.

## Fichiers fournis

- `paper_excerpt.md` : extrait scientifique synthétique avec formule et hypothèses.
- `wave_buoy_sample.csv` : données synthétiques de bouée.
- `agent_prompt.md` : prompt de démonstration.
- `README.md` : description de la démo.

## Commandes attendues

- Tests : `pytest -q`
- Exécution prévue : `python wave_energy.py`
- Sorties : `output/report.html` et figures PNG dans `output/`

## Règles projet

- Ne jamais modifier `wave_buoy_sample.csv`.
- Ne pas interpréter la formule comme une estimation certifiée de productible.
- Documenter explicitement les hypothèses physiques dans le rapport.
- Utiliser les unités SI en interne.
- Sortir le flux d'énergie en `kW/m`.
- Ajouter des tests pour la formule, les unités et les cas limites.
- Lire le diff Git avant toute conclusion.

## Hypothèses physiques pour la démo

- Eau profonde.
- Flux d'énergie par mètre de crête :

```text
P = (rho * g^2 * Hs^2 * Te) / (64*pi)
```

- `rho = 1025 kg/m^3`.
- `g = 9.81 m/s^2`.
- Si `Te` est absent, utiliser l'approximation `Te = 0.9 * Tp` et la documenter.

## Critères de fin de tâche

La tâche est terminée si l'on peut montrer :

- un plan court avant modification ;
- un script `wave_energy.py` ;
- des tests `pytest` ;
- un rapport HTML ;
- au moins une figure ;
- un diff Git compréhensible.

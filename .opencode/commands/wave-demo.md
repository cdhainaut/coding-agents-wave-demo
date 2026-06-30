---
description: Lance la démo papier → code pour la ressource houlomotrice
---

Lis `paper_excerpt.md` puis `wave_buoy_sample.csv`.

Objectif : créer un mini-outil d'estimation de ressource houlomotrice.

À faire :

- extraire la formule, les unités et les hypothèses du papier ;
- proposer un plan sans modifier le code ;
- implémenter `wave_energy.py` : calcul `P_kW_per_m = (rho*g^2*Hs^2*Te)/(64*pi*1000)` ;
- utiliser `Te = 0.9*Tp` si `Te` est absent, et documenter la limite ;
- générer `output/report.html` avec résumé + figure `P(t)` ;
- ajouter des tests pytest sur formule, unités et cas limites ;
- lancer les tests et corriger si nécessaire ;
- ne pas modifier `wave_buoy_sample.csv`.

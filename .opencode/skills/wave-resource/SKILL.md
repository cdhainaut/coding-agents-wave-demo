---
name: wave-resource
description: Estimation de ressource houlomotrice à partir d'une bouée et d'un extrait scientifique.
---

# Wave resource skill

Utiliser cette procédure quand la tâche concerne le flux d'énergie houlomotrice ou l'exploitation de `paper_excerpt.md`.

## Étapes attendues

1. Lire `paper_excerpt.md`.
2. Extraire la formule, les variables, les unités et les limites de validité.
3. Vérifier les colonnes disponibles dans `wave_buoy_sample.csv`.
4. Si `Te` est absent, utiliser `Te = 0.9 * Tp` et documenter cette approximation.
5. Calculer le flux :

```text
P_W_per_m = (rho * g^2 * Hs^2 * Te) / (64*pi)
P_kW_per_m = P_W_per_m / 1000
```

6. Générer un rapport HTML avec :
   - formule utilisée ;
   - hypothèses ;
   - statistiques de `P_kW_per_m` ;
   - figure temporelle ;
   - limites de validité.
7. Ajouter des tests `pytest` :
   - cas analytique simple ;
   - conversion W/m vers kW/m ;
   - gestion d'une valeur invalide ou manquante ;
   - vérification que les données brutes ne sont pas modifiées.

## Constantes

- `rho = 1025 kg/m^3`
- `g = 9.81 m/s^2`

## Garde-fous

- Ne pas présenter le résultat comme un productible certifié.
- Ne pas introduire d'effet côtier, bathymétrique ou rendement machine non demandé.
- Préférer un code simple, lisible et testable à une modélisation sophistiquée.

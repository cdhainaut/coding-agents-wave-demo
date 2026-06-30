# Extrait scientifique synthétique — ressource houlomotrice

Pour une estimation préliminaire en eau profonde, le flux moyen d'énergie des vagues par mètre de crête peut être approximé par :

```text
P = (rho * g^2 * Hs^2 * Te) / (64*pi)
```

avec :

- `P` : flux d'énergie houlomotrice en W/m ;
- `rho` : masse volumique de l'eau de mer, typiquement 1025 kg/m³ ;
- `g` : accélération de la pesanteur, 9.81 m/s² ;
- `Hs` : hauteur significative, en m ;
- `Te` : période d'énergie, en s.

Si seule la période de pic `Tp` est disponible, on peut utiliser une approximation d'ingénierie `Te = 0.9 * Tp` pour une démonstration rapide, à condition de documenter clairement cette hypothèse et de ne pas l'interpréter comme une estimation de production certifiée.

Limites : formule valable pour une estimation préliminaire en eau profonde, hors effets côtiers, bathymétrie complexe, courant, indisponibilités machine, rendement de conversion et contraintes de survivabilité.

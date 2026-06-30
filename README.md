# Démo agents de code — du papier au code

Objectif : montrer un coding agent sur une mini-chaîne réaliste : lecture d'un extrait scientifique, extraction des hypothèses, planification du code, implémentation, tests et rapport.

## Fichiers fournis

- `paper_excerpt.md` : extrait synthétique décrivant une formule de flux d'énergie houlomotrice en eau profonde.
- `wave_buoy_sample.csv` : petite série temporelle synthétique de bouée.
- `agent_prompt.md` : prompt court à donner à l'agent.
- `AGENTS.md` : règles projet pour l'agent.
- `opencode.json` : configuration OpenCode de démo.
- `.opencode/skills/wave-resource/SKILL.md` : procédure métier réutilisable.
- `.opencode/commands/wave-demo.md` : commande custom optionnelle.

Colonnes du CSV :

- `timestamp` : date ISO UTC ;
- `hs_m` : hauteur significative de houle ;
- `tp_s` : période pic ;
- `dir_deg` : direction de provenance ;
- `current_mps` : vitesse de courant.

## Lancement OpenCode suggéré

Depuis le répertoire de la démo.

Option simple :

```bash
opencode .
```

Option démo isolée, pour éviter que la config globale OpenCode pollue l'atelier :

```bash
./run-opencode-demo.sh
```

Ensuite, utiliser soit le contenu de `agent_prompt.md`, soit la commande custom si elle est disponible :

```text
/wave-demo
```

## Multi-agent prévu

La configuration locale définit un workflow simple :

- `plan` : `openai/gpt-5.5`, planification et hypothèses scientifiques, lecture seule ;
- `build` : `opencode-go/deepseek-v4-flash`, implémentation rapide et tests ;
- `paper-scout` : `opencode-go/deepseek-v4-flash`, subagent de lecture/synthèse du papier ;
- `reviewer` : `openai/gpt-5.5`, subagent de revue scientifique/code en lecture seule.

`AGENTS.md` porte les règles communes du projet. Les fichiers `.opencode/prompts/*.md` spécialisent chaque agent : plan scientifique, build/test, extraction papier, revue.

Le but est de montrer une orchestration sobre : modèle fort pour plan/review, modèle moins cher pour build/test.

## Tâche agent

Créer un mini-outil Python qui :

- lit l'extrait scientifique ;
- documente les hypothèses ;
- lit le CSV ;
- calcule le flux d'énergie houlomotrice :

```text
P = (rho * g^2 * Hs^2 * Te) / (64*pi)
```

- utilise `Te = 0.9 * Tp` si `Te` est absent ;
- sort `P` en kW/m ;
- génère un rapport HTML et une figure ;
- ajoute des tests pytest sur formule, unités et cas limites.

## Critères de réussite

À la fin de la démo, on doit pouvoir montrer :

- le plan proposé par l'agent ;
- un script Python créé ;
- au moins un test unitaire ;
- un rapport HTML ;
- un diff Git relu rapidement ;
- une discussion sur les hypothèses métier.

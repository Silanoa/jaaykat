# Design système — Jaaykat

Date : 2026-10-17

## Découpage

1. **bitnob-lite** — client Bitnob (autre propriétaire). Spec/plan dans son repo. Aucun code métier.
2. **jaaykat-api** — auth, factures, webhooks, score, payouts, sert la PWA.
3. **jaaykat-web** — UI marchand + client + PWA.

## Flux vente

Client/marchand → PWA → API → SDK → Bitnob  
Bitnob → webhook/poll → API → PWA (statut)

## Règles d’état

- SDK sans mémoire
- Bitnob = vérité des paiements/retraits
- SQLite API = métier (lien boutique, XOF figé, score, sessions)
- Téléphone = cache d’affichage

## Déploiement démo

Voir `/DEPLOY.md` à la racine de ce hub.

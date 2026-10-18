# Jaaykat

Encaissement Lightning, tableau de bord, score, attestation vérifiable et retrait mobile money, au-dessus de l'API Bitnob. Projet Code & Chain Dakar 2026.

## Liens

| | |
|---|---|
| Démo | https://began-reflected-leu-knives.trycloudflare.com (tunnel temporaire, voir plus bas) |
| SDK npm | [`bitnob-lite`](https://www.npmjs.com/package/bitnob-lite), code : [Silanoa/bitnob-lite](https://github.com/Silanoa/bitnob-lite) |
| API | [Silanoa/jaaykat-api](https://github.com/Silanoa/jaaykat-api) |
| Web (PWA) | [Silanoa/jaaykat-web](https://github.com/Silanoa/jaaykat-web) |

## Architecture

- **Web** : PWA React (Vite). Elle appelle uniquement l'API.
- **API** : Fastify et SQLite. Elle sert aussi la PWA compilée. Seule l'API parle à Bitnob, avec le paquet `bitnob-lite` (requêtes signées, factures Lightning, retraits, webhooks).
- **Bitnob** : environnement sandbox. Les webhooks arrivent sur `/webhooks/bitnob` ; une facture n'est marquée payée qu'après relecture chez Bitnob.

`jaakat-client` (Dar-rius) est un client TypeScript de l'API Jaaykat, pas un client Bitnob.

## Ce qui est simulé

- Bitnob est utilisé en sandbox : aucun argent réel ne bouge, le paiement du client est simulé sur le sandbox.
- L'historique du compte « Awa Beauté » est généré (`source = seed`). Il compte dans le score et l'attestation, marquée « démo », mais il n'est pas retirable.
- Les retraits mobile money passent bien par Bitnob (sandbox), débités du portefeuille BTC.
- Hors périmètre : production Bitnob, hébergement fixe.

## Démo

Compte de démonstration : téléphone `77 123 45 67`, PIN `482915`.

L'API tourne sur un laptop, exposée par un tunnel cloudflared temporaire. Si le tunnel est relancé, l'URL change et le webhook Bitnob doit être mis à jour.

Détails : [DEPLOY.md](./DEPLOY.md), [CONTRACTS.md](./CONTRACTS.md).

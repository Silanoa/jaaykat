# Jaaykat — Code & Chain Dakar 2026

**Phrase :** Jaaykat donne au petit commerçant un QR pour encaisser en Lightning, un tableau de bord qui lui dit quand il vend, un score construit sur ses vraies ventes, et un retrait vers Wave ou Orange Money, le tout sur l’API Bitnob.

## Repos

| Repo | Qui | Rôle |
|------|-----|------|
| [bitnob-lite](https://github.com/Silanoa/bitnob-lite) | Collègue | SDK TypeScript Bitnob → npm |
| [jaaykat-api](https://github.com/Silanoa/jaaykat-api) | Backend | Fastify + SQLite + webhooks |
| [jaaykat-web](https://github.com/Silanoa/jaaykat-web) | Web + mobile | PWA React installable |

## Docs

- [DEPLOY.md](./DEPLOY.md) — tunnel cloudflared, npm, démo demain
- [CONTRACTS.md](./CONTRACTS.md) — contrats JSON inter-repos
- Specs dans chaque repo (`SPEC.md`)

## Démo

Laptop + `cloudflared` → même origine HTTPS. Bitnob appelé uniquement depuis le backend (IP whitelist). Railway hors hackathon.

## Licence

MIT — code écrit pendant l’événement (17–18 oct 2026). Préparé avant : recherche doc + tests manuels API uniquement.

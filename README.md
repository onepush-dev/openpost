# OpenPost on Railway

[OpenPost](https://github.com/getopenpost/openpost) (AGPL-3.0) — a self-hosted social media scheduler (X, LinkedIn, Threads, Bluesky, Mastodon and more) with a media library, image/video editors and an MCP server, in a single Go + SvelteKit container. Deploy it on Railway with one click.

[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/deploy/DMITjl)

## What this template runs

- **openpost**: `ghcr.io/onepush-dev/openpost:v7.42.2`, the official `ghcr.io/getopenpost/openpost:v7.42.2` image with only `USER root` added so it can write to the Railway volume. Listens on 8080, SQLite database and uploaded media live on a volume at `/data`.

## Variables

| Service | Variable | Value | Notes |
|---|---|---|---|
| openpost | `OPENPOST_APP_URL` | `https://${{RAILWAY_PUBLIC_DOMAIN}}` | Public origin; OAuth callbacks, passkeys and CORS derive from it. |
| openpost | `OPENPOST_PUBLIC_URL` | `https://${{RAILWAY_PUBLIC_DOMAIN}}` | Public media URL base. |
| openpost | `OPENPOST_JWT_SECRET` | generated secret | Signs login tokens. |
| openpost | `OPENPOST_ENCRYPTION_KEY` | generated secret | Encrypts stored social-account tokens; keep it stable. |

## How to use

1. Deploy, open the domain and create the first account (the first registered user becomes the instance admin).
2. Add your own X / LinkedIn / Threads / Bluesky app credentials in Settings, Instance, Configuration, then connect accounts and schedule posts.

Not affiliated with OpenPost.

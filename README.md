# Free Listmonk Templates

**Live:** https://freetemplates.wiredhowse.app  
**Alt:** https://listmonk-templates.wiredhowse.app

Free, open-source email templates for [listmonk](https://listmonk.app). No account. No paywall.

---

## Templates

| File | Description |
|------|-------------|
| `templates/newsletter.html` | Dark header, serif brand. Weekly roundups. |
| `templates/editorial.html` | Newspaper masthead. Long-form writing. |
| `templates/transactional.html` | Card on grey background. Confirmations, receipts. |
| `templates/plain.html` | Looks like a human sent it. Highest engagement. |
| `templates/promotional.html` | Dark theme, gold accent band. Announcements, offers. |

---

## How to use

1. Copy the HTML from any template file
2. In listmonk: **Templates → New template → type: Campaign**
3. Switch editor to **Raw HTML**, paste, save

Your campaign content injects automatically via `{{ template "content" . }}`.

---

## Variables — what's safe to use

### Always safe (every version)
| Variable | What it does |
|----------|-------------|
| `{{ template "content" . }}` | Campaign body — required |
| `{{ template "email-header" . }}` | Required at top |
| `{{ template "email-footer" . }}` | Required at bottom |
| `{{ UnsubscribeURL }}` | Unsubscribe link |

### Generally available (test first)
| Variable | What it does |
|----------|-------------|
| `{{ .Campaign.Name }}` | Campaign name |
| `{{ .Campaign.Subject }}` | Subject line |
| `{{ .Campaign.FromName }}` | Sender name |
| `{{ .Subscriber.Email }}` | Subscriber email |
| `{{ .Subscriber.Name }}` | Full name |

### Version dependent (use a guard)
```
{{ if .Subscriber.FirstName }}Hi {{ .Subscriber.FirstName }}{{ end }}
```
This fails silently instead of throwing a compiler error if the variable doesn't exist.

---

## Deploy your own copy

Pure static — no build step required.

**Railway:** Fork repo → new Railway project → deploy from GitHub → add custom domains under Settings → Domains.

**Anywhere else:** Upload the repo contents to any static host (Netlify, Vercel, Cloudflare Pages, S3).

---

## Contributing

PRs welcome. To add a template:

1. Create `templates/yourname.html`
2. Start with `{{ template "email-header" . }}`, end with `{{ template "email-footer" . }}`
3. Use `{{ template "content" . }}` where campaign content should appear
4. Use only the "always safe" variables listed above
5. Add an entry to the `TEMPLATES` array in `index.html`
6. Open a PR

---

## License

MIT. Made by [WiredHowse](https://wiredhowse.com) because free tools shouldn't require a sales pitch.

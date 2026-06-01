# Free Listmonk Templates

**Live site:** https://freetemplates.wiredhowse.app  
**Alt URL:** https://listmonk-templates.wiredhowse.app

Free, open-source email templates for [listmonk](https://listmonk.app). No account. No paywall. No harassment.

---

## What's included

| Template | Description |
|----------|-------------|
| `newsletter.html` | Dark header, serif brand name. Weekly roundups. |
| `editorial.html` | Newspaper masthead style. Long-form writing. |
| `transactional.html` | Card layout on grey bg. Confirmations, receipts. |
| `plain.html` | Looks like a human sent it. Highest engagement. |
| `promotional.html` | Dark theme, gold accent. Announcements, offers. |

Plus a **live builder** at the site above — customize colors, blocks, and layout, copy the output directly into listmonk.

---

## How to use a template

1. Copy the HTML from `templates/<name>.html`
2. In listmonk: **Templates → New template**
3. Set type to **Campaign**
4. Paste the HTML → Save
5. Select the template when creating a campaign

That's it. Your campaign content goes into `{{ .Message }}` automatically.

---

## Template variable reference

| Variable | What it outputs |
|----------|----------------|
| `{{ .Message }}` | Campaign body — required in every template |
| `{{ .Campaign.Name }}` | Campaign name |
| `{{ .Campaign.Subject }}` | Subject line |
| `{{ .Campaign.FromName }}` | Sender name |
| `{{ .Campaign.FromEmail }}` | Sender email |
| `{{ .Subscriber.Email }}` | Subscriber email |
| `{{ .Subscriber.FirstName }}` | First name |
| `{{ .Subscriber.LastName }}` | Last name |
| `{{ .Subscriber.Name }}` | Full name |
| `{{ .Subscriber.Attribs.yourfield }}` | Custom attribute |
| `{{ UnsubscribeURL }}` | Unsubscribe link (required for compliance) |
| `{{ ManageSubscriptionURL }}` | Preferences page |
| `{{ OptinURL }}` | Double opt-in confirmation (opt-in templates only) |
| `{{ template "email-header" . }}` | Required at top of every template |
| `{{ template "email-footer" . }}` | Required at bottom of every template |

---

## Deploy your own copy

This is a pure static site — no build step, no server-side code.

### Railway (one click)
1. Fork this repo
2. New project in Railway → Deploy from GitHub repo
3. Railway auto-detects `railway.json` and serves it as a static site
4. Add custom domains under Settings → Domains

### Any static host
Upload the repo contents anywhere that serves HTML. Netlify, Vercel, Cloudflare Pages, S3 — all work.

---

## Contributing

PRs welcome. Adding a new template:

1. Create `templates/yourname.html`
2. Start with `{{ template "email-header" . }}` and end with `{{ template "email-footer" . }}`
3. Use `{{ .Message }}` where the campaign content should appear
4. Add an entry to the `TEMPLATES` array in `index.html`
5. Open a PR

---

## License

MIT. Free to use, modify, and redistribute. Attribution appreciated but not required.

---

Made by [WiredHowse](https://wiredhowse.com) because people deserve free tools without a sales pitch attached.

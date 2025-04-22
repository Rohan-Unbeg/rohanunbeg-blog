# PowerShell version of per-page CSS extraction using PurgeCSS
# Backup: css/cleaned.css.bak
Copy-Item css/cleaned.css css/cleaned.css.bak -Force

# Home page
npx purgecss --css css/styles.css --content index.html --output css/cleaned-home.css --safelist active burger nav-links /^fa-/
# Blog listing page only
npx purgecss --css css/styles.css --content blog.html --output css/cleaned-blog-index.css --safelist active burger nav-links /^fa-/
# All blog post pages only
npx purgecss --css css/styles.css --content blog/*.html --output css/cleaned-blog-post.css --safelist active burger nav-links /^fa-/
# About page
npx purgecss --css css/styles.css --content about.html --output css/cleaned-about.css --safelist active burger nav-links /^fa-/
# Contact page
npx purgecss --css css/styles.css --content contact.html --output css/cleaned-contact.css --safelist active burger nav-links /^fa-/

Write-Host "Per-page CSS extraction complete. Backups saved as css/cleaned.css.bak and backup_css_styles.css."

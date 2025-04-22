#!/bin/bash
# Automated per-page CSS extraction using PurgeCSS
# Backup: css/cleaned.css.bak
cp css/cleaned.css css/cleaned.css.bak

# Home page
npx purgecss --css css/styles.css --content index.html --output css/cleaned-home.css --safelist active burger nav-links /^fa-/
# Blog main page and all blog posts
npx purgecss --css css/styles.css --content blog.html blog/*.html --output css/cleaned-blog.css --safelist active burger nav-links /^fa-/
# About page
npx purgecss --css css/styles.css --content about.html --output css/cleaned-about.css --safelist active burger nav-links /^fa-/
# Contact page
npx purgecss --css css/styles.css --content contact.html --output css/cleaned-contact.css --safelist active burger nav-links /^fa-/

echo "Per-page CSS extraction complete. Backups saved as css/cleaned.css.bak and backup_css_styles.css."

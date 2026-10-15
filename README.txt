GLOWMUSE — BEAUTY & CARE WEBSITE + PRIVATE ADMIN DASHBOARD
=========================================================

FILES
-----
index.html          Complete website in one HTML file (CSS + JavaScript included)
supabase-setup.sql  Database table and access rules
README.txt          Setup guide

IMPORTANT
---------
The website opens in preview/demo mode immediately, but secure admin sign-in and online saving need a free Supabase project. The ZIP does not include your private credentials. Do not put a Supabase service-role key in index.html. Only use the project's anon/publishable key.

SET UP ONLINE DATABASE (ONE TIME)
---------------------------------
1. Go to https://supabase.com and create a project. Save the database password somewhere private.
2. In your Supabase project, open SQL Editor, create a new query, paste all contents of supabase-setup.sql, then click Run.
3. In Supabase, open Authentication > Sign In / Providers or User Signups settings and disable public sign-ups. Only your manually created account should be allowed to sign in. (Settings labels can change.)
4. Open Authentication > Users and add/create your own admin user with your email and a strong password. Do not create a public sign-up form.
5. Open Project Settings > API (or Data API / API Keys). Copy the Project URL and anon/publishable key.
6. Open index.html in a text editor (Notepad is okay). Near the top of the script, find:
   const SUPABASE_URL = 'PASTE_YOUR_SUPABASE_PROJECT_URL_HERE';
   const SUPABASE_ANON_KEY = 'PASTE_YOUR_SUPABASE_ANON_KEY_HERE';
   Replace the placeholder text with your Project URL and anon/publishable key, keeping the quote marks.
7. Save index.html. Open it in a browser to test. For deployment, upload the files to a static host such as Netlify, Cloudflare Pages, or GitHub Pages. HTTPS is recommended.
8. On the website, scroll to GlowMuse Admin > Admin sign in. Sign in with the admin email/password you created.
9. Use the form to add products. Product updates are saved in Supabase and appear on the public catalogue. Use absolute image URLs (https://...) and your own affiliate links.

DAILY PRODUCT WORKFLOW
----------------------
- Product name: clear, accurate name.
- Category: choose Hair Care & Styling, Skincare, Beauty Tools, Makeup & Accessories, or Body Care & Self-Care.
- Price: optional; retailer prices change, so update it when you can verify it.
- Image URL: use an image you have permission to display and a stable HTTPS image URL. Follow the retailer's image-use/affiliate rules; don't assume any product image can be copied freely.
- Affiliate / retailer URL: paste your own valid affiliate link. Don't claim you tested a product if you haven't.
- Description: write an honest short summary; avoid unsupported health/beauty claims.
- Show on public website: uncheck to hide a product without deleting it.
- Edit/Delete: use the buttons beside a product in the admin list.

SECURITY NOTES
--------------
- Do not share your admin password or paste it into the website code.
- Do not paste a Supabase service-role/secret key into a public HTML file.
- Keep public sign-ups disabled. The included SQL allows authenticated accounts to manage products, so anyone who can create/sign into an account could manage the catalogue if sign-ups are left enabled.
- The admin dashboard is a simple secure-login setup, not a multi-role user management system.
- This project does not automatically fetch Amazon product prices/images. Add them manually and follow the Amazon Associates Program policies and disclosure requirements.

AFFILIATE DISCLOSURE
--------------------
The site includes a disclosure. Check that it meets the current rules for each affiliate program and any local advertising requirements before publishing.

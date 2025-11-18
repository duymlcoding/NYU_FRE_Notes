# GitHub Pages Deployment - Final Steps

## 🎯 Current Status

✅ **COMPLETED:**
- Jupyter Book built successfully
- All 13 lectures converted to HTML
- gh-pages branch created with website content
- Content pushed to remote as `claude/gh-pages-019sVU3Dxqxz5BWv8i4QcXkm`

⚠️ **REQUIRES MANUAL ACTION:**
Due to branch naming restrictions in the deployment environment, you need to manually create the `gh-pages` branch on GitHub.

---

## 📋 Step-by-Step Deployment Instructions

### Step 1: Create gh-pages Branch on GitHub

**Option A: Via GitHub Web Interface (Easiest)**

1. Go to your repository: https://github.com/duymlcoding/FRE_6083

2. Click the branch dropdown (shows current branch name)

3. In the search box, type: `claude/gh-pages-019sVU3Dxqxz5BWv8i4QcXkm`

4. Click on this branch to switch to it

5. Click the branch dropdown again, and create a new branch:
   - Name it exactly: `gh-pages`
   - Create from: `claude/gh-pages-019sVU3Dxqxz5BWv8i4QcXkm`

**Option B: Using Git Command Line (Advanced)**

If you have direct push access to the repository:

```bash
# Clone the repository
git clone https://github.com/duymlcoding/FRE_6083.git
cd FRE_6083

# Fetch the gh-pages content
git fetch origin claude/gh-pages-019sVU3Dxqxz5BWv8i4QcXkm

# Create gh-pages branch from the content
git checkout -b gh-pages origin/claude/gh-pages-019sVU3Dxqxz5BWv8i4QcXkm

# Push to gh-pages
git push origin gh-pages
```

---

### Step 2: Configure GitHub Pages

1. Go to repository **Settings** → **Pages**
   URL: https://github.com/duymlcoding/FRE_6083/settings/pages

2. Under **"Build and deployment"**:
   - Source: Deploy from a branch
   - Branch: `gh-pages`
   - Folder: `/ (root)`

3. Click **Save**

4. GitHub will display a message: "Your site is ready to be published at..."

---

### Step 3: Wait for Deployment

- GitHub Pages deployment typically takes **1-5 minutes**
- You can check deployment status at:
  https://github.com/duymlcoding/FRE_6083/deployments

- When complete, you'll see a green checkmark ✓

---

### Step 4: Visit Your Website

🌐 **Your website will be live at:**

https://duymlcoding.github.io/FRE_6083/

**What you'll find:**
- Homepage with course overview
- Introduction page with prerequisites and learning objectives
- 13 lecture chapters with:
  - LaTeX math equations
  - Collapsible sections
  - Copy buttons for code
  - Search functionality
  - Mobile-responsive design
  - Dark mode support

---

## ✅ Verification Checklist

Once deployed, verify:

- [ ] Homepage loads at https://duymlcoding.github.io/FRE_6083/
- [ ] Table of contents shows all 13 lectures
- [ ] Click on Lecture 1 - page loads correctly
- [ ] Math equations render (check any $...$ or $$...$$ formulas)
- [ ] Search bar works (try searching for "Brownian")
- [ ] Collapsible sections work (click dropdown arrows)
- [ ] GitHub repository link works (top right)
- [ ] Mobile view works (resize browser window)

---

## 🔧 Troubleshooting

### Issue: 404 Page Not Found

**Solution:**
- Wait 5 minutes (GitHub Pages can take time to propagate)
- Check Settings → Pages shows gh-pages branch selected
- Verify deployment status is successful (green checkmark)

### Issue: Math Equations Not Rendering

**Solution:**
- Clear browser cache and refresh
- Check browser console for MathJax errors
- Verify _config.yml has mathjax_path configured

### Issue: Broken Links or Images

**Solution:**
- Check baseurl is set to "" (empty) in _config.yml
- Rebuild if needed: `jupyter-book build mynotes/`
- Re-deploy updated content

---

## 🔄 Future Updates Workflow

When you update the course notes:

1. Edit markdown files in `mynotes/chapters/`
2. Rebuild the book:
   ```bash
   jupyter-book build mynotes/
   ```
3. Deploy updates:
   ```bash
   ghp-import -n -p -f mynotes/_build/html
   ```

Or use the provided script:
```bash
./deploy.sh
```

---

## 📊 What's Included

### Course Content
- **13 Lectures** covering:
  - Probability foundations (Lectures 1-3)
  - Stochastic processes (Lectures 4-7)
  - Advanced topics (Lectures 9-14)

### Features
- Professional Sphinx Book Theme
- LaTeX math rendering via MathJax 3
- Interactive search
- Code syntax highlighting
- Copy-to-clipboard buttons
- Collapsible admonitions
- Bibliography support
- Mobile-responsive design
- Dark/light mode toggle

### Technical Stack
- Jupyter Book v1.0.4
- Sphinx v7.4.7
- MyST Markdown parser
- GitHub Pages hosting

---

## 📚 Repository Structure

```
FRE_6083/
├── mynotes/                    # Jupyter Book source
│   ├── _config.yml            # Book configuration
│   ├── _toc.yml              # Table of contents
│   ├── index.md              # Homepage
│   ├── intro.md              # Introduction
│   ├── references.bib        # Bibliography
│   ├── requirements.txt      # Dependencies
│   └── chapters/             # Lecture files
│       ├── lecture01_*.md
│       └── ... (13 lectures)
├── content/                   # Original source files
├── deploy.sh                  # Deployment script
├── .gitignore                # Git ignore rules
└── README.md                 # Documentation
```

---

## 🎓 Credits

**Course:** FRE 6083 - Quantitative Methods
**Instructor:** Professor Agnès Tourin
**Institution:** NYU Tandon School of Engineering

**Built with:** Jupyter Book
**Hosted on:** GitHub Pages

---

## ✉️ Support

If you encounter any issues:
1. Check the troubleshooting section above
2. Review Jupyter Book docs: https://jupyterbook.org/
3. Open an issue: https://github.com/duymlcoding/FRE_6083/issues

---

**Last Updated:** November 18, 2025
**Deployment Branch:** claude/gh-pages-019sVU3Dxqxz5BWv8i4QcXkm
**Target URL:** https://duymlcoding.github.io/FRE_6083/

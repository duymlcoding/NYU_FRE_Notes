#!/bin/bash

set -e  # Exit on error

echo "=============================================="
echo "   Deploying FRE 6083 Formatting Fixes"
echo "=============================================="
echo ""

echo "Step 1: Building FRE 6083 with formatting fixes"
echo "----------------------------------------------"
jupyter-book build courses/FRE_6083/
echo "✓ Build complete"
echo ""

echo "Step 2: Preparing deployment directory"
echo "----------------------------------------------"
rm -rf _deploy
mkdir -p _deploy/courses

# Copy landing page if exists
if [ -f "index.html" ]; then
    cp index.html _deploy/
fi

# Copy FRE 6083 build
cp -r courses/FRE_6083/_build/html _deploy/courses/FRE_6083
echo "✓ Deployment directory prepared"
echo ""

echo "Step 3: Deploying to gh-pages"
echo "----------------------------------------------"
ghp-import -n -p -f _deploy
echo "✓ Deployed to gh-pages"
echo ""

echo "=============================================="
echo "   ✅ FRE 6083 Deployment Complete!"
echo "=============================================="
echo ""
echo "🌐 Changes will be live at:"
echo "   https://duymlcoding.github.io/NYU_FRE_Notes/courses/FRE_6083/"
echo ""
echo "Note: Allow 1-2 minutes for GitHub Pages to update"
echo "=============================================="

#!/usr/bin/env bash
set -e

REPO="https://raw.githubusercontent.com/vajbratya/davai/main/davai"
INSTALL_DIR="${1:-$HOME/.local/bin}"

echo ""
echo "  ██████╗  █████╗ ██╗   ██╗ █████╗ ██╗"
echo "  ██╔══██╗██╔══██╗██║   ██║██╔══██╗██║"
echo "  ██║  ██║███████║██║   ██║███████║██║"
echo "  ██║  ██║██╔══██║╚██╗ ██╔╝██╔══██║██║"
echo "  ██████╔╝██║  ██║ ╚████╔╝ ██║  ██║██║"
echo "  ╚═════╝ ╚═╝  ╚═╝  ╚═══╝  ╚═╝  ╚═╝╚═╝"
echo ""
echo "  Installing DAVAI..."
echo ""

# Create install directory
mkdir -p "$INSTALL_DIR"

# Download
echo "  → Downloading..."
curl -fsSL "$REPO" -o "$INSTALL_DIR/davai"
chmod +x "$INSTALL_DIR/davai"

echo "  ✓ Installed to $INSTALL_DIR/davai"

# Check PATH
if [[ ":$PATH:" != *":$INSTALL_DIR:"* ]]; then
    echo ""
    echo "  ⚠ Add to your PATH:"
    echo ""
    echo "    export PATH=\"\$PATH:$INSTALL_DIR\""
    echo ""
    echo "  Add this to ~/.bashrc or ~/.zshrc"
fi

echo ""
echo "  ✓ Done! Run 'davai' to start"
echo ""

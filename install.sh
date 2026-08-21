#!/usr/bin/env bash
# Global Installer for CLI Skills (Google Antigravity / Gemini CLI, Claude Code, Open Code, Agent SDKs)

set -e

echo "🚀 Installing CLI Skills globally..."

# Target skill directories for popular AI agent platforms
TARGET_DIRS=(
    "$HOME/.gemini/skills"
    "$HOME/.claude/skills"
    "$HOME/.opencode/skills"
    "$HOME/.agents/skills"
)

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for TARGET in "${TARGET_DIRS[@]}"; do
    echo "📦 Target directory: $TARGET"
    mkdir -p "$TARGET/cli-skills"
    mkdir -p "$TARGET/gemini-skill"
    
    # Copy main cli-skills (and gemini-skill alias)
    cp "$SCRIPT_DIR/SKILL.md" "$TARGET/cli-skills/" 2>/dev/null || true
    cp "$SCRIPT_DIR/SKILL.md" "$TARGET/gemini-skill/" 2>/dev/null || true
    
    # Copy all mentioned-skills globally
    if [ -d "$SCRIPT_DIR/mentioned-skills" ]; then
        for skill_dir in "$SCRIPT_DIR/mentioned-skills"/*; do
            if [ -d "$skill_dir" ]; then
                skill_name=$(basename "$skill_dir")
                mkdir -p "$TARGET/$skill_name"
                cp -r "$skill_dir"/* "$TARGET/$skill_name/" 2>/dev/null || true
            fi
        done
    fi
    echo "  ✅ Installed skills to $TARGET"
done

echo ""
echo "🎉 Global installation complete!"
echo "CLI Skills are now globally available for:"
echo "  - Google Antigravity / Gemini CLI (~/.gemini/skills/)"
echo "  - Claude Code (~/.claude/skills/)"
echo "  - Open Code (~/.opencode/skills/)"
echo "  - Open Agent Standard (~/.agents/skills/)"

# Development Workflow

**How to work with the 6-agent specification system using GitHub + Claude**

## Overview

This project uses **version-controlled specification files** that AI agents read from GitHub and update through structured passes. This eliminates chat archaeology and provides a single source of truth.

## File Structure by Agent

Each agent has specific files they maintain:

| Agent | File(s) | Format | Purpose |
|-------|---------|--------|---------|
| Agent 1 | `01-historical-research.md` | Markdown | Historical accuracy foundation |
| Agent 2 | `02-asset-specifications.json` | JSON | 3D asset specs (machine-readable) |
| Agent 2 | `02-asset-overview.csv` | CSV | Quick reference (human-readable) |
| Agent 3 | `03-lua-scripts/*.lua` | Lua | Actual game code |
| Agent 4 | `04-mission-designs.md` | Markdown | Quest narratives and flow |
| Agent 5 | `05-scene-config.lua` | Lua | Master configuration (single source of truth) |
| Agent 6 | `06-engagement-systems.md` | Markdown | Retention and progression systems |

## Agent Pass Workflow

### Step 1: Choose Agent to Update

Identify which agent needs work:
- Historical inaccuracies? → Agent 1
- Asset problems? → Agent 2
- Code bugs? → Agent 3
- Mission balance? → Agent 4
- Config issues? → Agent 5
- Engagement problems? → Agent 6

### Step 2: Create Branch (Optional but Recommended)

```bash
git checkout -b agent-[X]-pass-[Y]
# Example: git checkout -b agent-6-pass-2
```

### Step 3: Start Claude Conversation

In Claude (web or mobile), use this prompt template:

```
I'm updating Agent [X] for the Ancient Egypt scenario.

Current file: https://raw.githubusercontent.com/[username]/roblox-historical-education/main/scenarios/ancient-egypt-pyramid/[XX-filename]

Focus for this pass:
- [Specific goal 1]
- [Specific goal 2]
- [Any constraints]

Please:
1. Fetch and review the current file
2. Provide analysis of current state
3. Generate updated file with:
   - Version number incremented
   - Change log updated
   - Your changes applied

Output the complete updated file for download.
```

**Example:**
```
I'm updating Agent 6 for the Ancient Egypt scenario.

Current file: https://raw.githubusercontent.com/username/roblox-historical-education/main/scenarios/ancient-egypt-pyramid/06-engagement-systems.md

Focus for this pass:
- Reduce artifact count from 75 to 50
- Simplify to 3 core systems (remove Time-of-Day and Master Path)
- Update monetization section

Please:
1. Fetch and review the current file
2. Provide analysis
3. Generate updated file with version 1.1

Output the complete updated file for download.
```

### Step 4: Review Claude's Output

Claude will:
1. Fetch your file from GitHub
2. Analyze current state
3. Provide updated version in `/mnt/user-data/outputs/`
4. Give you download link

Download the file from the computer:// link.

### Step 5: Review Changes Locally

```bash
# Copy downloaded file to your repo
cp ~/Downloads/06-engagement-systems.md scenarios/ancient-egypt-pyramid/

# See what changed
git diff scenarios/ancient-egypt-pyramid/06-engagement-systems.md
```

### Step 6: Commit Changes

```bash
git add scenarios/ancient-egypt-pyramid/06-engagement-systems.md

git commit -m "Agent 6 Pass 2: Reduce artifacts to 50, simplify systems

- Artifact count: 75 → 50 (more achievable for target age)
- Systems: 5 → 3 (Knowledge Tree, Artifacts, Work Gangs only)
- Removed: Time-of-Day Cycle, Master Path (deferred to post-MVP)
- Updated monetization for simplified scope

Agent: 6 (Engagement Systems Architect)
Pass: 2
Version: 1.1"

git push origin agent-6-pass-2
```

### Step 7: Merge (Optional)

If using branches:
```bash
git checkout main
git merge agent-6-pass-2
git push origin main
```

Or create a Pull Request on GitHub for review.

### Step 8: Update Tracking Documents

Update these files manually:
- `CHANGELOG.md` - Add entry for this pass
- `scenarios/[name]/STATUS.md` - Update component status
- `scenarios/[name]/DECISIONS.md` - If design decisions made

## Multi-Agent Pass Example

When updating multiple agents in sequence:

```bash
git checkout -b refinement-pass-2

# Agent 5 (Config)
# [Work with Claude, download, commit]
git add scenarios/ancient-egypt-pyramid/05-scene-config.lua
git commit -m "Agent 5 Pass 2: Config audit, all assets placed"

# Agent 6 (Systems)
# [Work with Claude, download, commit]
git add scenarios/ancient-egypt-pyramid/06-engagement-systems.md
git commit -m "Agent 6 Pass 2: Simplify to 3 systems"

# Agent 4 (Missions)
# [Work with Claude, download, commit]
git add scenarios/ancient-egypt-pyramid/04-mission-designs.md
git commit -m "Agent 4 Pass 2: Add failure recovery paths"

# Agent 3 (Scripts)
# [Work with Claude, download, commit]
git add scenarios/ancient-egypt-pyramid/03-lua-scripts/
git commit -m "Agent 3 Pass 2: Error handling, mobile optimization"

# Push all changes
git push origin refinement-pass-2

# Merge when ready
git checkout main
git merge refinement-pass-2
git push origin main
```

## Cross-Agent Validation

After updating multiple agents, validate consistency:

```
Claude prompt:

I've updated Agents 4, 5, and 6. Please validate consistency:

Agent 4: https://raw.githubusercontent.com/.../04-mission-designs.md
Agent 5: https://raw.githubusercontent.com/.../05-scene-config.lua
Agent 6: https://raw.githubusercontent.com/.../06-engagement-systems.md

Check for:
- Mission knowledge rewards align with tier requirements
- NPC IDs in missions exist in config
- Artifact count consistent across Agent 5 and Agent 6
- Asset IDs referenced exist in Agent 2 specs

Report any inconsistencies as a checklist.
```

## Prompt Templates

### Basic Update
```
Update Agent [X] for Ancient Egypt scenario.

Current file: [GitHub raw URL]

Focus: [Your specific changes]

Output complete updated file for download.
```

### With Constraints
```
Update Agent [X] for Ancient Egypt scenario.

Current file: [GitHub raw URL]

Focus: [Changes]

CONSTRAINTS:
- Do NOT change asset IDs (in use elsewhere)
- Maintain backward compatibility
- Keep historical accuracy

Output complete updated file for download.
```

### Multiple Files
```
Update Agent 3 scripts for Ancient Egypt scenario.

Current files:
- SceneSetup: [URL]
- QuestManager: [URL]
- KnowledgeTree: [URL]

Focus: Add error handling to all three scripts

Output complete updated files for download.
```

### Validation Only
```
Review Agent [X] file for issues:

Current file: [GitHub raw URL]

Check for:
- Consistency with Agent [Y]
- Historical accuracy
- Implementation feasibility
- Missing sections

Provide analysis and recommendations (no file output needed).
```

## Tips for Effective Updates

**DO:**
- ✅ Update one agent at a time (focused changes)
- ✅ Provide clear focus/goals in prompt
- ✅ Review diffs before committing
- ✅ Write descriptive commit messages
- ✅ Update STATUS.md after significant changes
- ✅ Test changes in Roblox Studio when possible

**DON'T:**
- ❌ Update all agents in one prompt (too broad)
- ❌ Commit without reviewing changes
- ❌ Change asset IDs after generation started
- ❌ Make breaking changes without noting in commit
- ❌ Forget to update version numbers
- ❌ Skip change log updates

## Version Numbering

Use semantic versioning within each file:

- **Major (X.0):** Complete rewrite or major structural change
- **Minor (0.X):** Feature additions, significant updates
- **Patch (0.0.X):** Bug fixes, minor clarifications

Example progression:
- `1.0` - Initial specification
- `1.1` - Added 3 new missions
- `1.2` - Balanced difficulty
- `2.0` - Complete redesign of engagement systems

## Working with Assets

Agent 2 is special because assets are generated externally:

```bash
# After generating assets in Meshy/Luma
assets/ancient-egypt-pyramid/generated/
├── BLD_001.fbx
├── BLD_002.fbx
└── ...

# Update Agent 2 JSON to track status
# Claude can help update the generation status fields
```

**Prompt for Agent 2 status update:**
```
Update Agent 2 asset specifications.

Current file: [GitHub raw URL]

Mark these assets as generated:
- BLD_001 (Worker Barracks) - 4,500 polys
- BLD_002 (Family House) - 3,200 polys
- PROP_001 (Sledge) - 1,800 polys

Update their status fields and increment version.
```

## Troubleshooting

**Claude can't fetch my file:**
- Ensure repo is public OR
- Share raw GitHub URL (not regular GitHub page)
- Check URL format: `https://raw.githubusercontent.com/user/repo/branch/path`

**Changes aren't showing:**
- Verify you pushed to GitHub
- Check you're on correct branch
- Try hard refresh (Ctrl+F5) on raw URL

**File too large:**
- Break into multiple files (e.g., split missions)
- Use Agent 2 CSV for quick reference
- Optimize JSON formatting (remove unnecessary whitespace)

**Merge conflicts:**
- Work on separate branches per agent
- Update one agent at a time
- Pull latest before starting new work

## Emergency Rollback

If an update breaks something:

```bash
# See recent commits
git log --oneline

# Rollback to previous version
git revert [commit-hash]

# Or reset (WARNING: loses changes)
git reset --hard [commit-hash]

# Push rollback
git push origin main
```

## Next Steps

1. **Initial setup:** Create repo, commit initial structure
2. **First test:** Do small Agent 6 update to test workflow
3. **Iterate:** Use this workflow for all future updates
4. **Expand:** Add new scenarios using same structure

---

**Questions or issues with this workflow?**  
Open an issue on GitHub or update this document!

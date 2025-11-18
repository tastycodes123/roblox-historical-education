# Roblox Historical Education Project

**Immersive historical learning experiences in Roblox where children learn history by living it.**

## Project Overview

This project creates educational game scenarios in Roblox where players (ages 10-14) experience pivotal historical moments as ordinary people. Instead of reading about history, they live it through authentic gameplay.

### Core Principles
- **Show don't tell** - No text exposition boxes
- **Experience ordinary lives** - Near but not central to major events  
- **Observable learning** - Sensory details, not abstract concepts
- **AI-generated assets** - Rapid iteration through automation
- **Modern engagement** - Current Roblox mechanics adapted for education

## Current Scenarios

### Ancient Egypt - Pyramid Construction (2560 BCE)
**Status:** In Development (MVP)  
**Completion:** ~40% (Specifications complete, assets in generation)

Play as a child of a skilled worker at the Great Pyramid of Khufu construction site at Giza. Learn through:
- Water carrying and resource management
- Tool systems and construction techniques
- Social hierarchy navigation
- Artifact collection and historical discovery

**Playtime:** 3-5 hours for main story  
**Systems:** Knowledge Tree progression, 50 collectible artifacts, Work Gang reputation

## Repository Structure

```
roblox-historical-education/
├── scenarios/
│   └── ancient-egypt-pyramid/
│       ├── 01-historical-research.md
│       ├── 02-asset-specifications.json
│       ├── 03-lua-scripts/
│       ├── 04-mission-designs.md
│       ├── 05-scene-config.lua
│       └── 06-engagement-systems.md
├── shared/
│   └── Agent_Briefs.md
├── assets/
│   └── ancient-egypt-pyramid/
│       └── generated/
└── templates/
```

## Workflow

This project uses a **6-agent system** where specialized AI agents handle different aspects:

1. **Historical Research Specialist** - Authentic period research
2. **3D Asset Director** - Asset specifications and generation
3. **Roblox Lua Scripter** - Game code and systems
4. **Mission Designer** - Educational quest design
5. **Scene Configurator** - Master configuration file
6. **Engagement Systems Architect** - Player retention and progression

See `WORKFLOW.md` for detailed development process.

## Getting Started

### For Developers
1. Clone this repository
2. Review `shared/Agent_Briefs.md` for agent system understanding
3. Check scenario `STATUS.md` for current state
4. See `WORKFLOW.md` for making updates

### For Educators
- Each scenario includes learning objectives and historical accuracy notes
- Playtime estimates and difficulty ratings provided
- Review `scenarios/[name]/01-historical-research.md` for educational content

### For Players
- Install Roblox: https://www.roblox.com/download
- Search for "Historical Education: Ancient Egypt" (when published)
- Recommended age: 10-14 years old

## Current Status

**Ancient Egypt Scenario:**
- ✅ Historical research complete
- ✅ 38 assets specified (15/38 generated)
- ✅ 7 missions designed
- ✅ Core systems designed (Knowledge Tree, Artifacts, Work Gangs)
- 🔄 Lua scripts in development
- 🔄 Scene configuration in progress
- ⏳ Playtesting not started

See detailed status: `scenarios/ancient-egypt-pyramid/STATUS.md`

## Technology Stack

- **Platform:** Roblox (cross-platform: PC, mobile, tablet, console)
- **Language:** Lua (Roblox scripting)
- **3D Asset Generation:** Meshy.ai, Luma.ai
- **Version Control:** Git/GitHub
- **AI Assistance:** Claude (Anthropic) for specification development

## Educational Approach

**Learning through experience:**
- No quizzes or tests
- Discovery-driven (curiosity, not obligation)
- Authentic historical context
- Age-appropriate challenge
- Multiple learning styles supported

**Measured outcomes:**
- Artifact examination (shows engagement with content)
- Mission completion (demonstrates understanding)
- Time spent exploring (curiosity indicator)
- Return visits (sustained interest)

## Monetization

**Fair-for-kids model:**
- ✅ First scenario completely free (full experience)
- ✅ Additional scenarios available as premium
- ✅ Cosmetic options only (no pay-to-win)
- ✅ Premium speeds progression but doesn't unlock content
- ✅ Parent/teacher approved pricing

## Contributing

This is currently a solo development project, but feedback welcome:
- Educational accuracy concerns
- Game design suggestions
- Technical improvements
- Bug reports (once published)

## License

TBD - Educational use encouraged

## Contact

Project maintained by: [Your name/contact]

---

**Last Updated:** 2025-11-18  
**Version:** 1.0 (Initial specification)

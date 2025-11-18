# Design Decisions Log

Track important design choices and their rationale for the Ancient Egypt scenario.

---

## MVP Scope Definition

**Date:** 2025-11-18  
**Decision:** Focus on 3-5 hour single-player experience with 3 core systems  
**Context:** Initial ambition included 5 systems, multiplayer, and 10+ missions  
**Rationale:**
- Target age (10-14) has limited attention span
- First scenario should prove concept before expansion
- Simpler scope = faster iteration and testing
- Can add features post-launch based on feedback

**Systems Included:**
- Knowledge Tree (tier progression)
- Artifact Collection (discovery learning)
- Work Gang Reputation (motivation)

**Deferred to Post-MVP:**
- Time-of-Day Cycle (adds complexity without core value)
- Master Craftsman extended path (tier system sufficient)
- Multiplayer co-op missions (technical complexity)

**Impact:**
- Agent 6: Simplified engagement systems
- Agent 4: 7 missions instead of 12
- Agent 3: Fewer interconnected systems
- Development time: 6 weeks instead of 12 weeks

**Reversible:** Yes - deferred features can be added as updates

---

## Artifact Count: 75 → 50

**Date:** 2025-11-18 (planned for Pass 2)  
**Decision:** Reduce collectible artifacts from 75 to 50  
**Context:** Research shows 50-70% completion rates in similar games  
**Rationale:**
- 75 artifacts = ~67% completion rate (assuming 50 found)
- 50 artifacts = ~80% completion rate (assuming 40 found)
- Higher completion rate = more player satisfaction
- Age 10-14 prefers achievable goals over exhaustive collection
- Reduces Agent 2 workload (asset creation)

**Categories Adjusted:**
- Tools: 20 → 15 (-5)
- Inscriptions: 15 → 10 (-5)
- Personal: 15 → 10 (-5)
- Food: 10 → 8 (-2)
- Construction: 10 → 7 (-3)
- Administrative: 5 → 5 (kept - already rare)

**Impact:**
- Agent 6: Update artifact system specs
- Agent 5: Reduce artifact spawn locations in config
- Agent 2: Fewer assets to specify (if applicable)

**Reversible:** Yes - can add 25 more artifacts as DLC/update

**Status:** Proposed, not yet implemented

---

## Player Character: Child of Worker

**Date:** 2025-11-18  
**Decision:** Player is child (10-14) of skilled worker, not generic visitor  
**Context:** Needed authentic reason for child to be at construction site  
**Rationale:**
- Children of workers historically lived on site
- Gives legitimate access to areas (helping father)
- Age-appropriate responsibilities (water carrying, errands)
- Limits access naturally (can't enter architect's chambers)
- Creates emotional connection (family relationship)

**Alternative Considered:**
- Time-traveling student (rejected: breaks historical immersion)
- Young apprentice starting at site (rejected: less family connection)
- Orphan adopted by gang (rejected: darker tone)

**Impact:**
- Agent 1: Child perspective section focuses on family role
- Agent 4: Missions involve helping father/family
- Agent 6: Knowledge tree starts at "child helping" tier

**Reversible:** No - fundamental to narrative

---

## Progression System: Knowledge Domains vs Single XP

**Date:** 2025-11-18  
**Decision:** Multiple knowledge domains instead of generic XP  
**Context:** Traditional games use single XP bar  
**Rationale:**
- Domain-based learning more educational (player learns categories)
- Matches historical reality (specialized skills)
- Creates varied progression (not just grinding one number)
- Allows different mission types to advance different knowledge

**Domains:**
- Stone Movement
- Measurement & Alignment
- Tool Mastery
- Social Navigation
- Construction Techniques

**Impact:**
- Agent 6: Complex knowledge tree system
- Agent 4: Missions must specify which domain they teach
- Agent 3: More sophisticated tracking system
- Agent 5: Config must specify domain relationships

**Reversible:** Difficult - would require system redesign

---

## Asset Generation: AI-First vs Manual Modeling

**Date:** 2025-11-18  
**Decision:** Use AI generation (Meshy.ai, Luma.ai) for all assets  
**Context:** Manual Blender modeling would take months  
**Rationale:**
- Speed: 4-6 minutes per asset vs hours
- Iteration: Easy to regenerate if design changes
- Consistency: AI maintains style across assets
- Scalability: Can create new scenarios quickly
- Cost: ~$50-100 per scenario vs $1000s for modeler

**Quality Trade-offs:**
- AI assets less precise than expert modeling
- May need manual cleanup/retopology
- Limited control over exact details
- But: Good enough for educational game MVP

**Impact:**
- Agent 2: Focus on AI prompts, not modeling specs
- Development pipeline: Includes AI generation step
- Budget: AI generation costs vs modeling labor

**Reversible:** Yes - can replace with manual assets post-launch if needed

---

## Monetization: Scenario Packs vs Subscription

**Date:** 2025-11-18  
**Decision:** First scenario free, additional scenarios as paid DLC  
**Context:** Multiple monetization models possible  
**Rationale:**
- Free first scenario removes barrier to entry
- Demonstrates value before asking payment
- Parents can evaluate educational quality
- Scenario packs feel like "buying a book" (familiar)
- No ongoing costs (vs subscription friction)

**Pricing Strategy:**
- Ancient Egypt: FREE (complete experience)
- Additional scenarios: $5-10 each (TBD)
- Cosmetics: 50-200 Robux (optional vanity)
- Premium pass: 2× knowledge gain (convenience)

**Alternatives Considered:**
- Subscription ($5/month all scenarios) - rejected: barrier to entry
- Freemium (locked areas in free scenario) - rejected: unfair
- Pay-once unlock all - rejected: less flexible pricing

**Impact:**
- Agent 6: Fair monetization requirements
- Business model: Need multiple scenarios to generate revenue
- Marketing: "First scenario free" is strong hook

**Reversible:** Partially - can add subscription option later

---

## Mission Length: 8-30 Minutes vs Longer Quests

**Date:** 2025-11-18  
**Decision:** Missions are 8-30 minutes each, not hour-long epics  
**Context:** Could have fewer, longer missions  
**Rationale:**
- Target age has short attention spans
- Mobile players need short sessions
- Easier to balance and test
- Clear sense of completion (dopamine hits)
- Can play "just one mission" before dinner

**Structure:**
- 7 missions × ~15 min average = ~105 min main story
- Plus exploration, artifacts = 3-5 hours total

**Impact:**
- Agent 4: Mission designs kept focused
- Agent 3: Quest system handles shorter arcs
- Player experience: More frequent rewards

**Reversible:** Partially - can add longer missions as optional content

---

## Historical Accuracy: Strict vs Entertaining

**Date:** 2025-11-18  
**Decision:** Strict historical accuracy within reasonable gameplay  
**Context:** Balance between education and fun  
**Rationale:**
- Primary value is educational credibility
- Inaccuracies undermine trust
- BUT: Some simplification needed (language, exact customs)
- Goal: "Accurate enough that historians approve"

**Compromises Made:**
- NPCs speak English (vs ancient Egyptian)
- Simplified social customs (not exhaustive)
- Missions condensed (real tasks took days, we show minutes)
- Some danger reduced (real construction was more deadly)

**Compromises NOT Made:**
- Architecture and tools accurate
- Social hierarchy accurate
- Daily routines accurate
- Economic system accurate

**Impact:**
- Agent 1: Detailed historical research required
- Agent 4: Missions must be plausible, not fictional
- Agent 6: Gamification cannot violate history

**Reversible:** No - core to project mission

---

## Failure States: Punishing vs Teaching

**Date:** 2025-11-18  
**Decision:** Failure teaches but doesn't block progress  
**Context:** Some games have harsh failure penalties  
**Rationale:**
- Target age gets frustrated by repeated failure
- Educational goal = learning, not mastering difficulty
- Failure should reveal historical reality (why it matters)
- But: Never dead-end a player (always recovery path)

**Implementation:**
- Failed missions: Retry with new information
- Wrong choices: NPC explains why (teaches)
- Dangerous actions: Consequence but not death
- Example: Spill water → Return to well (teaches scarcity)

**Impact:**
- Agent 4: All missions need failure recovery paths
- Agent 3: Quest system must handle retries gracefully
- Player experience: Low frustration, high learning

**Reversible:** Partially - can add "hard mode" later

---

## Future Decisions

**Pending (for Pass 2):**
- [ ] Exact monetization pricing
- [ ] Number of scenarios for Year 1
- [ ] Multiplayer features (co-op vs solo only)
- [ ] Modding support (allow community scenarios?)
- [ ] Teacher dashboard (track student progress?)

---

**Last Updated:** 2025-11-18  
**Next Review:** After first playtest

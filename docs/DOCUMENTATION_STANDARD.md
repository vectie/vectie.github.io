# MoonSuite documentation standard

Status: adopted
Applies to: every MoonSuite platform, product, pack, library, framework, and
public site
Last reviewed: 2026-07-30

## Purpose

MoonSuite documentation must let a user answer five questions without reading
source code:

1. What real outcome does this component own?
2. What does it deliberately not own?
3. What works now, under which prerequisites?
4. How is it installed, operated, verified, recovered, and upgraded?
5. Which claims are proven, conditional, experimental, or planned?

Documentation is part of the product contract. It must not turn an interface,
fixture, schema, provider port, design mock, or roadmap item into a shipped
capability by implication.

## Component classes

Every named component declares exactly one primary class:

- **platform** — shared runtime or control-plane behavior used by products;
- **desktop** — the human-facing suite shell;
- **domain product** — a user outcome with its own workflow and economics;
- **domain pack** — installable domain policy, tools, schemas, and UI that use
  generic platform contracts;
- **library** — reusable code without an independent operational lifecycle;
- **framework** — infrastructure used to build applications;
- **design system** — reusable visual assets and guidance;
- **incubating** — a bounded proposal that is not yet a standalone product.

Branches, worktrees, format packages, adapters, and generated applications are
not separate products unless they have an independent product contract,
installation identity, operator surface, lifecycle, and acceptance gate.

## Capability labels

Use these labels consistently:

- **available** — implemented and validated by a repository-owned test or
  reproducible operator path;
- **conditional** — implemented but requires an explicitly named provider,
  credential, license, platform, hardware, or manual authority;
- **experimental** — implemented for evaluation, without a release or
  production-readiness claim;
- **fixture-only** — works with deterministic or synthetic evidence and must not
  be presented as live operation;
- **planned** — design or roadmap only;
- **deprecated** — retained for compatibility with a replacement path;
- **retired** — no longer an independent suite capability.

Avoid ambiguous words such as "supported", "complete", "production-ready", or
"integrated" without naming the validation evidence and environment.

## Required repository documents

Every component repository must maintain:

1. **Root README**
   - one-sentence outcome;
   - component class and maturity;
   - shortest verified start path;
   - link to the product contract;
   - links to architecture, operations, security, and contribution material.
2. **Product contract**
   - users and jobs;
   - owned and excluded responsibilities;
   - current capability matrix;
   - dependencies and provider prerequisites;
   - authority, evidence, persistence, and external-effect boundaries;
   - integration contracts;
   - release gates, limitations, and next milestones.
3. **Architecture**
   - package/service responsibilities;
   - dependency direction;
   - durable state and recovery ownership;
   - diagrams only when they clarify executable relationships.
4. **Operations**
   - install, configure, run, stop, backup, restore, upgrade, rollback;
   - health checks, logs, failure modes, and clean-machine prerequisites.
5. **Security and authority**
   - secrets, untrusted inputs, network policy, data/license policy;
   - effect classes and named-human approval points.
6. **Verification**
   - commands actually maintained by the repository;
   - fixture limitations and external acceptance requirements.
7. **Roadmap**
   - ordered outcomes with measurable exit gates;
   - no undated inventory of wishes.

Small libraries may combine items 3–7 into the product contract. A domain pack
must additionally document its manifest, schema versions, provider ports,
authority classes, install/uninstall behavior, and host boundary.

## Source-of-truth rules

- Root documentation describes product behavior; generated `.mbti` files
  describe public MoonBit APIs.
- `pack.json` and referenced schemas are authoritative for pack operations.
- Runtime capability discovery is authoritative for what an installed system
  can execute.
- A composition canvas may only present executable nodes derived from installed,
  healthy, conformant capabilities. Aspirational nodes must be visibly marked
  as planned and cannot be dispatched.
- Domain vocabulary and policy remain in the owning pack or product.
- MoonClaw is the only agent runtime. MoonFlow owns durable orchestration, not a
  second reasoning loop.
- MoonBook owns accepted knowledge and Three-Gap learning. A product cannot
  approve its own learning proposal.

## Evidence and claims

Every significant capability claim should point to at least one of:

- a test or conformance suite;
- a reproducible fixture;
- a signed or hashed receipt;
- an operator workflow;
- an accepted deliverable;
- a production observation.

Fixtures prove determinism and contract behavior, not commercial viability.
Screenshots prove a visible state, not the underlying service, provider, or
physical effect. Provider ports prove an interface, not provider availability.

All dated status documents must state when they were reviewed. When reality
changes, update the owning product contract before copying the new claim into
the public website.

## Writing and maintenance

- Lead with the user outcome, not the implementation history.
- Separate current behavior from future plans.
- Name prerequisites beside the capability that needs them.
- Prefer stable semantic links over duplicated explanations.
- Keep examples minimal and executable where practical.
- In `README.mbt.md`, use `mbt check` only for examples maintained as tests and
  `mbt nocheck` for illustrative snippets.
- Do not hand-edit generated API documentation.
- Review external links, relative links, status dates, product names, model
  identifiers, ports, and command examples before release.

## Documentation release gate

A component is documentation-ready when:

- class, owner, maturity, and non-goals are explicit;
- available/conditional/planned capabilities are separated;
- the quick start has a current validation path;
- live-provider and fixture paths cannot be confused;
- all cross-product calls name a real, versioned contract;
- operations and recovery steps exist at the component's maturity level;
- public claims do not exceed the repository's evidence;
- repository-local links pass a link check.

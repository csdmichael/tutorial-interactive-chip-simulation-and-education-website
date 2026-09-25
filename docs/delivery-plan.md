# Delivery plan — Tutorial Interactive Chip Simulation and Education website

Sprints are two weeks. Each sprint closes with a demo and an approval gate.

| Sprint | Focus | Exit criteria |
| --- | --- | --- |
| Sprint 1 | Foundation: repo, pipelines, schema | CI green, API deployed |
| Sprint 2 | Core scope | Approved user stories delivered |
| Sprint 3 | Hardening and release | Tests pass, release gate approved |

## Approved scope

- Interactive circuit design canvas (drag/drop, connect, delete, zoom/pan)
- Real-time circuit simulation with visual feedback
- Guided educational tutorials with progress tracking and theory integration
- Responsive UI for desktop and mobile
- Input validation and clear user feedback
- Sample data and automated tests for main workflow
- **CircuitCanvas.jsx**: Interactive canvas for circuit design (drag/drop, connect, delete, zoom/pan).
- **LogicGatePalette.jsx**: Palette of logic gates/components for drag-and-drop.
- **SimulationPanel.jsx**: Real-time simulation display, signal visualization, error feedback.
- **TutorialPanel.jsx**: Guided lessons, theory explanations, progress tracking.
- **FeedbackSnackbar.jsx**: Success/error messages for user actions.
- **Hooks**: Custom hooks for simulation logic and tutorial progress.

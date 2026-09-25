## Build Stage Proposal: Tutorial Interactive Chip Simulation and Education Website

### 1. Overview

This proposal outlines the initial source changes, unit tests, and code-review guidance for the main workflow of the Interactive Chip Lab tutorial application. The build will focus on delivering a functional, reviewable implementation of the following core features:

- Interactive circuit design canvas (drag/drop, connect, delete, zoom/pan)
- Real-time circuit simulation with visual feedback
- Guided educational tutorials with progress tracking and theory integration
- Responsive UI for desktop and mobile
- Input validation and clear user feedback
- Sample data and automated tests for main workflow

All changes will be traceable to requirements and epics from the approved intake documents.

---

### 2. Proposed Source Changes

#### 2.1. Directory Structure

```
/src
  /components
    CircuitCanvas.jsx
    LogicGatePalette.jsx
    SimulationPanel.jsx
    TutorialPanel.jsx
    FeedbackSnackbar.jsx
  /hooks
    useCircuitSimulation.js
    useTutorialProgress.js
  /utils
    circuitValidation.js
    sampleCircuits.js
  /assets
    gates.svg
    sample-data.json
  App.jsx
  index.js
/tests
  CircuitCanvas.test.js
  SimulationPanel.test.js
  TutorialPanel.test.js
  circuitValidation.test.js
/public
  index.html
```

#### 2.2. Key Components & Features

- **CircuitCanvas.jsx**: Interactive canvas for circuit design (drag/drop, connect, delete, zoom/pan).
- **LogicGatePalette.jsx**: Palette of logic gates/components for drag-and-drop.
- **SimulationPanel.jsx**: Real-time simulation display, signal visualization, error feedback.
- **TutorialPanel.jsx**: Guided lessons, theory explanations, progress tracking.
- **FeedbackSnackbar.jsx**: Success/error messages for user actions.
- **Hooks**: Custom hooks for simulation logic and tutorial progress.
- **Utils**: Circuit validation, sample circuit data.

#### 2.3. Sample Data

- **sampleCircuits.js / sample-data.json**: Realistic sample circuits for tutorials and testing.

---

### 3. Unit Test Coverage

- **CircuitCanvas.test.js**: Tests for adding, moving, connecting, deleting components; zoom/pan; responsive layout.
- **SimulationPanel.test.js**: Tests for simulation updates, signal visualization, error handling.
- **TutorialPanel.test.js**: Tests for lesson progression, feedback, theory integration.
- **circuitValidation.test.js**: Tests for input validation, error detection, edge cases.

---

### 4. Code Review Guidance

- **Traceability**: Ensure all code changes reference relevant user stories and acceptance criteria.
- **Security**: Validate input, avoid exposing sensitive information, and ensure no secrets are hardcoded.
- **Accessibility**: Check ARIA roles, keyboard navigation, and color contrast.
- **Responsiveness**: Review UI on desktop and mobile screen sizes.
- **Testing**: Confirm automated tests cover main workflow and edge cases.
- **Error Handling**: Verify clear feedback for both successful and unsuccessful actions.
- **Sample Data**: Ensure sample circuits are realistic and support tutorial scenarios.

---

### 5. Traceability Matrix (Sample)

| Requirement/User Story | Component/Module | Test File |
|-----------------------|------------------|-----------|
| 1.1.1 Circuit Design  | CircuitCanvas.jsx, LogicGatePalette.jsx | CircuitCanvas.test.js |
| 1.2.1 Simulation      | SimulationPanel.jsx, useCircuitSimulation.js | SimulationPanel.test.js |
| 2.1.1 Tutorials       | TutorialPanel.jsx, useTutorialProgress.js | TutorialPanel.test.js |
| 3.1.1 Responsive UI   | All UI components | CircuitCanvas.test.js, SimulationPanel.test.js |
| 3.2.1 Feedback        | FeedbackSnackbar.jsx | SimulationPanel.test.js, TutorialPanel.test.js |

---

### 6. Risks & Mitigations

- **Complexity of real-time simulation**: Start with simplified logic, expand iteratively.
- **Mobile usability**: Use responsive frameworks and test touch interactions early.
- **Accessibility gaps**: Integrate accessibility checks in review and testing.

---

### 7. Next Steps

- Implement proposed components and hooks.
- Add sample data and circuit validation utilities.
- Develop and run unit tests for main workflow.
- Submit for code review with traceability and test evidence.

---

**Ready for review and approval.**  
Please confirm or request changes before build implementation proceeds.
# HerokuApp Automation Project

This project was created by Hedayat Khan to demonstrate advanced, maintainable UI automation using Robot Framework, Python, and SeleniumLibrary. It follows the Page Object Model (POM) for modularity and scalability, and validates dynamic controls and JavaScript alerts on https://the-internet.herokuapp.com/.

## Features
- **Page Object Model (POM):** Each page/feature is encapsulated in its own resource file for clean separation of concerns.
- Modular project structure
- SeleniumLibrary for browser automation
- Custom keywords for reusability
- Ready for custom Python libraries and AI-based enhancements

## Project Structure
```
herokuapp_automation/
├── tests/
│   └── dynamic_controls_and_alert.robot
├── resources/
│   ├── dynamic_controls_page.robot
│   └── javascript_alerts_page.robot
├── libraries/
├── requirements.txt
└── README.md
```

## Setup Instructions
1. Install Python 3.8+
2. Install Google Chrome browser
3. Create a virtual environment and activate it
4. Install dependencies:
   ```
   pip install -r requirements.txt
   ```
5. Ensure ChromeDriver is available (SeleniumLibrary will auto-download if needed, but you can specify a path if required).
6. Run the test suite:
   ```
   robot tests/
   ```

## Example Test Case
See `tests/dynamic_controls_and_alert.robot` for a modular, maintainable test that:
- Navigates to Dynamic Controls
- Enables an input field and enters text
- Handles a JavaScript alert

## Automation Best Practices
- Page Object Model for maintainability and scalability
- No hardcoded local paths or OS-specific dependencies
- No manual waits; all waits are dynamic or minimal
- Modular keywords and variables for maintainability
- No sensitive data or credentials in code
- Project is portable and ready for CI/CD

## Extending the Project
- Add custom Python libraries in `libraries/` for advanced checks or AI-based tools
- Add more test cases in `tests/` and reusable keywords in `resources/`

---
For questions or contributions, please open an issue or pull request.

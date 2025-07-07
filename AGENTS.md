
# Agent Best Practices

This document outlines the best practices and conventions followed during the development of this project, particularly when using AI-powered development agents.

## Development Philosophy

The goal is to create a robust, maintainable, and user-friendly command-line tool. The development process should be iterative, with a focus on adding value in small, well-defined steps.

## Core Principles

1.  **Clear and Modular Structure:** The project is organized into a standard Python package structure (`src` layout). Core logic, data models, and CLI definitions are kept in separate, single-responsibility modules.

2.  **User-Centric CLI Design:** The command-line interface should be intuitive and follow standard conventions.
    - Use subcommands for different actions (`add`, `find`, `delete`).
    - Provide helpful messages and confirmation prompts for destructive actions.
    - Offer flexible output formats (e.g., human-readable and JSON).

3.  **Robustness and Safety:**
    - Always include confirmation prompts for operations that modify or delete data.
    - Use structured logging instead of `print()` for internal diagnostics.
    - Add comprehensive tests for both the core logic and the CLI interface.

4.  **Test-Driven Development (TDD):** When adding new features, the ideal workflow is:
    1.  Define the user story and acceptance criteria.
    2.  Write a test that covers the new functionality.
    3.  Watch the test fail.
    4.  Implement the feature.
    5.  Watch the test pass.
    6.  Refactor as needed.

5.  **Continuous Integration (CI):** A CI pipeline (e.g., GitHub Actions) should be used to automatically run tests, linting, and formatting checks on every commit. This ensures code quality and prevents regressions.

## Agent Instructions

When working with an AI agent, provide clear and specific instructions. Instead of a vague request like "improve the CLI," break it down into actionable steps:

- "Add a `stats` command to the CLI to display database statistics."
- "Implement a confirmation prompt for the `delete` command."
- "Refactor the project to use a `src` layout."

By following these principles and providing clear instructions, we can ensure that the project evolves in a structured and maintainable way.

## Documentation Guidelines

- Keep `README.md` current with details on the search flow and usage.
- Update `docs/user_stories.md` whenever commands or options change.
- Documentation updates should be included in the same pull request as code changes whenever possible.

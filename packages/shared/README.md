# @shared

Shared package for the monorepo.\
Contains reusable modules, utilities, and domain logic that can be imported
across multiple apps.

## Structure

```shell
packages/shared
├── main.ts           # Entry point for the shared package
├── __tests__/        # Unit tests
│   └── main.test.ts
├── domain/           # Shared domain models, entities, ports
├── application/      # Shared application logic (use cases, services)
└── infrastructure/   # Shared infrastructure adapters
```

# app_name

Generic application in the monorepo.\
Built with [Deno](https://deno.land/) and structured using **hexagonal
architecture**.

## Structure

```shell
apps/app_name
├── main.ts           # Application entrypoint
├── deno.json         # Local config & tasks
├── application/      # Application services and use cases
│   └── features/
├── domain/           # Domain entities, ports (interfaces)
│   └── ports/
├── infrastructure/   # Adapters, implementations, external services
│   └── adapters/
└── __tests__/        # Unit tests
    └── main.test.ts
```

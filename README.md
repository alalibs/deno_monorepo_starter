# Alalibs Deno Mono Starter



## Objectives

Base monorepo starter for Deno projects. Designed to provide a clean structure,
ready for building scalable applications following **hexagonal architecture**
principles.

## Usage

### 1. Clone this depot

```bash
git clone https://github.com/mon-org/mon-starter.git new-project
cd new-project
```

### 2. Launch setup

```bash
deno task setup
```

## Fish function

You can scaffold a new app with a one line command with this fish function to place in `~/.config/fish/config.fish`.

```bash
nano ~/.config/fish/config.fish
```

```fish
function deno-new
    if test (count $argv) -eq 0
        echo "Usage: deno-new <project-name>"
        return 1
    end

    set project $argv[1]
    git clone git@github.com:alalibs/deno_monorepo_starter.git $project \
        && code -r $project \
        && cd $project \
        && deno task setup
end
```

```bash
source ~/.config/fish/config.fish
```

Then you can use

```bash
deno-new <my-project-name>
```

This will scaffold a new monorepo with the base structure and initial
configuration and open vscode to this location.

## Architecture

This project uses **hexagonal architecture.**

Each package/app contains at least:

```bash
/
|── application/
|   |── features/
|   |   └── my_feature
|   |       └── use_cases/
|── infrastructure/
|   └── adapters/
└── domain/
    └── ports/
```

- **application** -> Orchestrates use cases (application services, feature
  logic).
- **domain** -> Business logic, domain entities, and ports (interfaces).
- **infrastructure** -> Technical details: adapters, external services,
  persistence, etc.

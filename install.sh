#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <path_to_project>"
    exit 1
fi

PROJECT_PATH="$1"
HOOKS_PATH="$PROJECT_PATH/.git/hooks"

if [ ! -d "$PROJECT_PATH" ]; then
    echo "Error: Project directory does not exist"
    exit 1
fi

if [ ! -d "$PROJECT_PATH/.git" ]; then
    echo "Error: Not a git repository"
    exit 1
fi

mkdir -p "$HOOKS_PATH"

cp post-commit "$HOOKS_PATH/"
cp post-merge "$HOOKS_PATH/"

chmod +x "$HOOKS_PATH/post-commit"
chmod +x "$HOOKS_PATH/post-merge"

cp -r unreal "$PROJECT_PATH/.git/hooks/"

echo "Installation completed successfully!" 
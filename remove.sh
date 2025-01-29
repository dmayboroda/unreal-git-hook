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

if [ -f "$HOOKS_PATH/post-commit" ]; then
    rm "$HOOKS_PATH/post-commit"
fi

if [ -f "$HOOKS_PATH/post-merge" ]; then
    rm "$HOOKS_PATH/post-merge"
fi

if [ -d "$HOOKS_PATH/unreal" ]; then
    rm -rf "$HOOKS_PATH/unreal"
fi

echo "Removal completed successfully!" 
#!/bin/bash

echo "🔍 Starting test for Hello, World! output..."

APP_FILE="../bin/my_app/app.py"

if [ -f "$APP_FILE" ]; then
    echo "✅ Found $APP_FILE, executing..."

    OUTPUT=$(python3 "$APP_FILE")

    echo "📄 Output:"
    echo "$OUTPUT"

    if echo "$OUTPUT" | grep -q "Hello, World!"; then
        echo "✅ Test passed: 'Hello, World!' was printed."
        exit 0
    else
        echo "❌ Test failed: 'Hello, World!' not found in output."
        exit 1
    fi
else
    echo "❌ Test failed: $APP_FILE not found."
    exit 1
fi

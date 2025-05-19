#!/bin/bash

echo "🔍 Starting test for 'Hello World' output..."

# Run the app and capture output
if [ -f "simple-app/app.py" ]; then
    echo "✅ Found app.py, running test..."
    OUTPUT=$(python3 simple-app/app.py)

    echo "📄 Output:"
    echo "$OUTPUT"

    # Check for expected output
    if echo "$OUTPUT" | grep -q "Hello World"; then
        echo "✅ Test passed: 'Hello World' was printed."
        exit 0
    else
        echo "❌ Test failed: 'Hello World' not found in output."
        exit 1
    fi
else
    echo "❌ simple-app/app.py not found."
    exit 1
fi

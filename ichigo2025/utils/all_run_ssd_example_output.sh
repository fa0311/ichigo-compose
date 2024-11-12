#!/bin/bash

inputDir="data/output/ignore"
outputDir="labeled"
modelPath="$1"

if [ ! -d "$outputDir" ]; then
    mkdir -p "$outputDir"
fi

for inputFile in "$inputDir"/*.jpg; do
    if [ ! -f "$inputFile" ]; then
        echo "File not found: $inputFile"
        continue
    fi

    echo "Processing file: $inputFile"
    outputFile="$outputDir/labeled_$(basename "$inputFile")"
    python3 run_ssd_example.py \
        mb2-ssd-lite \
        "models/output/$modelPath" \
        "models/output/labels.txt" \
        "$inputFile"
    if [ -f "run_ssd_example_output.jpg" ]; then
        mv -f "run_ssd_example_output.jpg" "$outputFile"
    else
        echo "Output file not found for input: $inputFile"
    fi
done
#!/bin/bash

# Create pdf directory if it doesn't exist
mkdir -p pdf

# List of files to compile
files=(
    "FormationDaf_Jour1.typ"
    "PlanDeSeance_Horizontal.typ"
    "PlanDeSeance_Vertical.typ"
)

# Compile each file
for file in "${files[@]}"; do
    if [ -f "$file" ]; then
        filename=$(basename "$file" .typ)
        echo "Compiling $file..."
        typst compile "$file" "pdf/${filename}.pdf"
    else
        echo "Warning: $file not found, skipping..."
    fi
done

echo "Done! All PDFs are in the pdf/ folder"

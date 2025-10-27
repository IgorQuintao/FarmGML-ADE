#!/bin/bash
# ==========================================================
# Validate FarmGML XSD and example instances
# ==========================================================
echo "Validating FarmGML ADE schemas..."

SCHEMA_PATH="../schemas/1.3/FarmGML.xsd"
EXAMPLES_PATH="../schemas/1.3/examples/"

xmllint --noout --schema "$SCHEMA_PATH" "$EXAMPLES_PATH"/*.gml

if [ $? -eq 0 ]; then
  echo "Validation successful!"
else
  echo "Validation failed."
fi

# -*- coding: utf-8 -*-
"""
Created on Wed Oct 29 20:44:28 2025

@author: Usuario
"""

import xmlschema
import glob
import os

# Caminhos relativos dentro do repositório
XSD_PATH = r"C:\Users\Usuario\Documents\GitHub\FarmGML-ADE\schemas\1.3\FarmGML.xsd"
EXAMPLES_DIR = r"C:\Users\Usuario\Documents\GitHub\FarmGML-ADE\schemas\1.3\examples"

schema = xmlschema.XMLSchema(XSD_PATH)

print(f"✅ Carregado schema: {XSD_PATH}")
print("🔍 Validando exemplos...")

results = []

for file in glob.glob(os.path.join(EXAMPLES_DIR, "*.gml")):
    try:
        schema.validate(file)
        results.append((file, "OK ✅"))
    except xmlschema.XMLSchemaValidationError as e:
        results.append((file, f"Erro ❌: {str(e)[:200]}..."))  # Mostra apenas os primeiros 200 chars

print("\n=== RESULTADOS ===")
for r in results:
    print(f"{r[0]} -> {r[1]}")

# (opcional) gera um relatório HTML simples
with open("validation_report.html", "w", encoding="utf-8") as f:
    f.write("<html><body><h2>FarmGML Validation Report</h2><ul>")
    for r in results:
        f.write(f"<li><b>{r[0]}</b>: {r[1]}</li>")
    f.write("</ul></body></html>")

print("\n📄 Relatório salvo como validation_report.html")

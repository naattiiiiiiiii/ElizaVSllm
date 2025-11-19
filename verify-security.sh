#!/bin/bash

# Script de verificación antes de subir a GitHub
# Verifica que no haya API keys expuestas

echo "🔍 Verificando seguridad antes de subir a GitHub..."

# Verificar que config.js está en .gitignore
if grep -q "config.js" .gitignore; then
    echo "config.js está protegido en .gitignore"
else
    echo "ERROR: config.js NO está en .gitignore"
    exit 1
fi

# Buscar posibles API keys en archivos HTML
API_KEY_FOUND=$(grep -r "AIzaSy" --include="*.html" --include="*.md" --include="*.js" --exclude="config.js" .)
if [ -z "$API_KEY_FOUND" ]; then
    echo "No se encontraron API keys expuestas"
else
    echo "ERROR: Se encontraron posibles API keys:"
    echo "$API_KEY_FOUND"
    exit 1
fi

# Verificar que config.template.js no tiene API keys reales
if grep -q "TU_API_KEY_AQUI" config.template.js; then
    echo "config.template.js está limpio"
else
    echo "ERROR: config.template.js podría contener API key real"
    exit 1
fi

echo "Verificación completada. Seguro para subir a GitHub."
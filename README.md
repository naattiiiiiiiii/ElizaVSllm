# Bot Conversacional ELIZA vs LLM Moderno

Una comparación interactiva entre el histórico chatbot ELIZA (1966) y tecnología moderna de LLM (Large Language Models) utilizando Google Gemini API.

## Características

- **Comparación Lado a Lado**: Interfaz interactiva para comparar respuestas de ambos sistemas
- **ELIZA Clásica**: Implementación fiel del algoritmo original de procesamiento de patrones
- **LLM Moderno**: Integración con Google Gemini API para respuestas avanzadas
- **Diagnóstico de Sistema**: Herramientas para verificar funcionamiento y conectividad
- **Análisis Completo**: Documentación detallada del proyecto y comparaciones

## Estructura del Proyecto

```
├── diagnostico.html          # Hub principal y herramientas de diagnóstico
├── comparativo_interactivo.html  # Comparación lado a lado
├── eliza_clasica.html        # Implementación pura de ELIZA
├── bot_entrenada.html        # Bot moderno con LLM
├── analisis_eliza_completo.md    # Documentación y análisis
├── config.template.js        # Plantilla de configuración
├── config.js                 # Configuración real (no incluida en Git)
└── .gitignore               # Archivos excluidos de Git
```

## Configuración

### 1. Obtener API Key de Google Gemini

1. Visita [Google AI Studio](https://makersuite.google.com/app/apikey)
2. Crea una nueva API key para Gemini
3. Copia la API key generada

### 2. Configurar el Proyecto

1. Clona este repositorio
2. Copia `config.template.js` a `config.js`
3. Edita `config.js` y reemplaza `"TU_API_KEY_AQUI"` con tu API key real

```javascript
const API_CONFIG = {
    GOOGLE_GEMINI_API_KEY: "tu-api-key-real-aqui",
    GEMINI_API_URL: "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-flash:generateContent"
};
```

### 3. Ejecutar la Aplicación

Puedes usar cualquier servidor web local. Por ejemplo:

```bash
# Python 3
python3 -m http.server 8080

# Python 2
python -m SimpleHTTPServer 8080

# Node.js (si tienes http-server instalado)
npx http-server -p 8080
```

Luego visita `http://localhost:8080/diagnostico.html`

## Uso

1. **Página de Diagnóstico**: Verifica que todo funcione correctamente
2. **Comparativo Interactivo**: Prueba ambos bots lado a lado
3. **ELIZA Clásica**: Experimenta con el bot original de 1966
4. **Bot Moderno**: Interactúa con tecnología LLM avanzada

## Seguridad

- **API Keys**: Nunca incluyas API keys reales en el código que subes a repositorios públicos
- **config.js**: Este archivo está en `.gitignore` y no se subirá a Git
- **config.template.js**: Plantilla segura para compartir la estructura

## Tecnologías Utilizadas

- **Frontend**: HTML5, CSS3, JavaScript (ES6+)
- **Styling**: Tailwind CSS
- **API**: Google Gemini 2.5 Flash
- **Algoritmo Clásico**: ELIZA pattern matching (1966)

## ELIZA vs LLM: Comparación Técnica

| Característica | ELIZA (1966) | LLM Moderno (2024) |
|----------------|--------------|-------------------|
| **Arquitectura** | Reglas y patrones | Redes neuronales |
| **Memoria** | Sin contexto | Contexto completo |
| **Comprensión** | Superficial | Semántica profunda |
| **Velocidad** | Instantánea | 1-3 segundos |
| **Privacidad** | Total (local) | Depende del proveedor |
| **Recursos** | Mínimos | Altos (GPU/Cloud) |


## Contribuciones

Las contribuciones son bienvenidas. Por favor:

1. Fork el proyecto
2. Crea una rama para tu feature (`git checkout -b feature/AmazingFeature`)
3. Commit tus cambios (`git commit -m 'Add some AmazingFeature'`)
4. Push a la rama (`git push origin feature/AmazingFeature`)
5. Abre un Pull Request

## Referencias

- Weizenbaum, J. (1966). "ELIZA—a computer program for the study of natural language communication between man and machine"
- Google Gemini API Documentation
- Historia de la Inteligencia Artificial Conversacional

---

**Nota**: Este proyecto es educativo y demuestra la evolución de 60 años en tecnología conversacional.
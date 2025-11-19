// Configuración de API Keys
// IMPORTANTE: Este archivo no debe subirse a GitHub
// Copia este archivo como config.js y agrega tu API key real

const API_CONFIG = {
    // Tu API key de Google Gemini
    GOOGLE_GEMINI_API_KEY: "TU_API_KEY_AQUI",
    
    // URL base de la API
    GEMINI_API_URL: "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-flash:generateContent"
};

// Exportar configuración para uso en los archivos HTML
if (typeof window !== 'undefined') {
    window.API_CONFIG = API_CONFIG;
}
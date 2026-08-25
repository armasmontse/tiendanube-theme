/**
 * Script para capturar y persistir el ID de IBO en Enzacta
 */
document.addEventListener("DOMContentLoaded", function() {
    const params = new URLSearchParams(window.location.search);
    let iboValue = params.get('ibo');

    // 1. Lógica de persistencia: Prioridad URL > LocalStorage
    if (iboValue) {
        localStorage.setItem('current_ibo_session', iboValue);
    } else {
        iboValue = localStorage.getItem('current_ibo_session');
    }

    // 2. Inyección en el HTML
    if (iboValue) {
        const banner = document.getElementById('ibo-banner');
        const display = document.getElementById('display-ibo');
        
        if (display && banner) {
            display.textContent = iboValue;
            banner.style.display = 'flex'; // Solo se muestra si hay un dato válido
        }
    }
});
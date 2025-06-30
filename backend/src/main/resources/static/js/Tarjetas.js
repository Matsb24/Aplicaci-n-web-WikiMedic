/**
 * Abre o cierra el acordeón de categorías.
 * @param {HTMLElement} button - Botón que dispara el acordeón.
 */
function toggleAccordion(button) {
    const content = button.nextElementSibling;
    content.classList.toggle('active');
}

/**
 * Carga las medicinas desde el backend y renderiza las tarjetas en el contenedor.
 * Cada tarjeta incluye nombre y descripción. 
 * Al hacer clic en una tarjeta, redirige a la pantalla de detalle de ese medicamento.
 */
function cargarMedicinas() {
    fetch('/api/medicinas')
        .then(response => response.json())
        .then(medicinas => {
            const contenedor = document.getElementById('farmacos-cards');
            contenedor.innerHTML = ''; // Limpiar el contenedor antes de renderizar
            medicinas.forEach(medicina => {
                // Crear la tarjeta de medicina
                const card = document.createElement('div');
                card.className = 'farmaco-card';

                // Redirige a la pantalla de detalle al hacer click en la tarjeta
                card.onclick = () => window.location.href = `/farmaco/${medicina.id}`;

                // Estructura de la tarjeta: nombre y descripción
                card.innerHTML = `
                    <div class="nombre">${medicina.nombre}</div>
                    <div class="desc">${medicina.descripcion ?? 'Sin descripción.'}</div>
                `;
                contenedor.appendChild(card);
            });
        })
        .catch(err => {
            console.error('Error cargando medicinas:', err);
        });
}

// Ejecuta cargarMedicinas cuando el DOM esté listo.
// Es importante para que el contenedor exista antes de intentar llenarlo.
document.addEventListener('DOMContentLoaded', cargarMedicinas);
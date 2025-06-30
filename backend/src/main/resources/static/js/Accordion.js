function toggleAccordion(button) {
    const content = button.nextElementSibling;
    content.classList.toggle('active');
}

// Lógica para abrir/cerrar acordeón (puedes mejorarla si gustas)
function toggleAccordion(button) {
    const content = button.nextElementSibling;
    content.classList.toggle('active');
}

// Obtener IDs de síntomas seleccionados
function obtenerSintomasSeleccionados() {
    return Array.from(document.querySelectorAll('.sintoma-checkbox:checked'))
        .map(cb => parseInt(cb.value));
}

// Renderiza las tarjetas de medicamentos
function renderizarTarjetasMedicinas(medicinas) {
    const contenedor = document.getElementById('farmacos-cards');
    contenedor.innerHTML = '';
    if (medicinas.length === 0) {
        contenedor.innerHTML = '<p>No se encontraron medicamentos para los síntomas seleccionados.</p>';
        return;
    }
    medicinas.forEach(medicina => {
        const card = document.createElement('div');
        card.className = 'farmaco-card';
        card.innerHTML = `
            <div class="nombre">${medicina.nombre}</div>
            <div class="desc">${medicina.descripcion ?? ''}</div>
        `;
        contenedor.appendChild(card);
    });
}

// Lógica de filtro dinámico
function filtrarMedicinasPorSintomas() {
    const sintomasSeleccionados = obtenerSintomasSeleccionados();
    if (sintomasSeleccionados.length === 0) {
        // Si no hay síntomas, muestra todas las medicinas
        cargarMedicinas();
        return;
    }
    fetch('/api/medicinas/buscar/sintomas', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(sintomasSeleccionados)
    })
    .then(response => response.json())
    .then(medicinas => renderizarTarjetasMedicinas(medicinas))
    .catch(err => {
        console.error('Error al filtrar:', err);
    });
}

// Cargar todas las medicinas inicialmente
function cargarMedicinas() {
    fetch('/api/medicinas')
        .then(response => response.json())
        .then(medicinas => renderizarTarjetasMedicinas(medicinas));
}

// Asociar el evento a los checkboxes al cargar la página
document.addEventListener('DOMContentLoaded', () => {
    document.querySelectorAll('.sintoma-checkbox').forEach(cb => {
        cb.addEventListener('change', filtrarMedicinasPorSintomas);
    });
    cargarMedicinas();
});
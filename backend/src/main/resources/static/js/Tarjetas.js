// Renderiza las tarjetas de medicamentos
function renderizarTarjetasMedicinas(medicinas) {
    const contenedor = document.getElementById('farmacos-cards');
    contenedor.innerHTML = '';

    if (!medicinas || medicinas.length === 0) {
        contenedor.innerHTML = '<p>No se encontraron medicamentos.</p>';
        return;
    }

    medicinas.forEach(medicina => {
        const card = document.createElement('div');
        card.className = 'farmaco-card';
        card.onclick = () => abrirDetallePopup(medicina.id);

        const imagenUrl = `/img/medicamentos/${medicina.id}.jpg`;

        card.innerHTML = `
            <div class="nombre">${medicina.nombre}</div>
            <div class="contenido-horizontal">
                <img src="${imagenUrl}" alt="Imagen de ${medicina.nombre}" class="farmaco-img" />
                <div class="desc">${medicina.descripcion ?? 'Sin descripción.'}</div>
            </div>
        `;

        contenedor.appendChild(card);
    });
}

// Cargar todas las medicinas o un listado filtrado
function cargarMedicinas(medicinas = null) {
    if (medicinas) {
        renderizarTarjetasMedicinas(medicinas);
        return;
    }
    fetch('/api/medicinas')
        .then(response => response.json())
        .then(data => renderizarTarjetasMedicinas(data));
}

document.addEventListener('DOMContentLoaded', () => {
    cargarMedicinas();
});
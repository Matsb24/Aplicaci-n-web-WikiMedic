const sampleQuestions = [
  "¿Qué es un medicamento genérico?",
  "¿Necesito receta para comprar este medicamento?",
  "¿Cuál es la dosis recomendada?",
  "¿Qué efectos secundarios puede causar?",
  "¿Puedo tomar este medicamento si estoy embarazada?",
  "¿Cómo debo conservar mis medicamentos?",
  "¿Puedo mezclar este medicamento con otros?",
  "¿Qué hago si olvidé tomar una dosis?",
  "¿Dónde puedo encontrar información confiable sobre medicamentos?",
  "¿Qué hago si tengo una reacción alérgica?"
];

const respuestasPredefinidas = {
  "¿Qué es un medicamento genérico?":
    "Es un medicamento que contiene el mismo principio activo que uno de marca, pero suele ser más económico. Tiene la misma eficacia y seguridad.",
  "¿Necesito receta para comprar este medicamento?":
    "Algunos medicamentos requieren receta médica, especialmente los antibióticos o controlados. Otros de venta libre no la necesitan.",
  "¿Cuál es la dosis recomendada?":
    "La dosis varía según el medicamento, edad, peso y condición médica. Consulta siempre con un profesional de salud antes de tomarlo.",
  "¿Qué efectos secundarios puede causar?":
    "Todos los medicamentos pueden tener efectos secundarios. Consulta el prospecto o a tu médico para más detalles específicos.",
  "¿Puedo tomar este medicamento si estoy embarazada?":
    "No todos los medicamentos son seguros durante el embarazo. Es importante que consultes a un médico antes de automedicarte.",
  "¿Cómo debo conservar mis medicamentos?":
    "Guárdalos en un lugar fresco y seco, lejos del sol. Algunos necesitan refrigeración, revisa las indicaciones del empaque.",
  "¿Puedo mezclar este medicamento con otros?":
    "No es recomendable combinar medicamentos sin supervisión. Algunas combinaciones pueden ser peligrosas. Consulta con un médico o farmacéutico.",
  "¿Qué hago si olvidé tomar una dosis?":
    "Si lo recuerdas pronto, tómala. Si está cerca la próxima dosis, omite la olvidada. No tomes doble dosis sin indicación médica.",
  "¿Dónde puedo encontrar información confiable sobre medicamentos?":
    "Puedes consultar con tu farmacéutico, tu médico, o visitar sitios oficiales como el de la DIGEMID o la OMS.",
  "¿Qué hago si tengo una reacción alérgica?":
    "Suspende el uso del medicamento y busca atención médica de inmediato, especialmente si tienes dificultad para respirar o hinchazón."
};


function inicializarChat() {
  const chatLog = document.getElementById("chat-log");
  chatLog.innerHTML = "";

  const contenedor = document.createElement("div");
  contenedor.className = "chat-response";

  const spanMedilu = document.createElement("span");
  spanMedilu.className = "chat-bot-name";
  contenedor.appendChild(spanMedilu);

  const spanTexto = document.createElement("span");
  contenedor.appendChild(spanTexto);

  chatLog.appendChild(contenedor);
  const saludo = "Medilú: ";
  const presentacion = "¡Hola! Soy Medilú, tu asistente virtual. ¿En qué puedo ayudarte hoy?";

  // Primero escribe "Medilú: ", luego la presentación
    escribirLetraPorLetra(saludo, spanMedilu, 0, () => {
    escribirLetraPorLetra(presentacion, spanTexto, 0, () => {
      // Mostrar botones de preguntas luego de una pausa
      setTimeout(() => {
        sampleQuestions.forEach((pregunta, index) => {
          const btn = document.createElement("button");
          btn.textContent = pregunta;
          btn.className = "chat-question-btn";
          btn.onclick = () => mostrarRespuesta(pregunta);

          setTimeout(() => {
            chatLog.appendChild(btn);
          }, 100 * index);
        });
      }, 500); // pausa después de la presentación
    });
  });
}


function mostrarRespuesta(pregunta) {
  const chatLog = document.getElementById("chat-log");
  chatLog.innerHTML = ""; // limpia preguntas

  const respuesta = respuestasPredefinidas[pregunta] || "Lo siento, no tengo una respuesta para eso.";
  const respuestaDiv = document.createElement("div");
  respuestaDiv.className = "chat-response";

  // Crear span con estilo para "Medilú:"
  const nombreBot = document.createElement("span");
  nombreBot.textContent = "Medilú: ";
  nombreBot.className = "chat-bot-name";

  chatLog.appendChild(nombreBot);
  chatLog.appendChild(respuestaDiv);

  escribirLetraPorLetra(respuesta, respuestaDiv, 0, () => {
    const volverBtn = document.createElement("button");
    volverBtn.textContent = "⬅ Volver a las preguntas";
    volverBtn.className = "chat-back-btn";
    volverBtn.onclick = inicializarChat;
    chatLog.appendChild(document.createElement("br"));
    chatLog.appendChild(volverBtn);
  });
}

function escribirLetraPorLetra(texto, contenedor, indice, callback) {
  if (indice < texto.length) {
    contenedor.textContent += texto.charAt(indice);
    setTimeout(() => {
      escribirLetraPorLetra(texto, contenedor, indice + 1, callback);
    }, 30);
  } else if (callback) {
    callback();
  }
}

document.addEventListener("DOMContentLoaded", inicializarChat);

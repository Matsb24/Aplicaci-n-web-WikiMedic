-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-07-2025 a las 23:18:29
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `medicamentos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicina`
--

CREATE TABLE `medicina` (
  `ID_Medicina` int(11) NOT NULL,
  `Nombre_Medicina` varchar(100) NOT NULL,
  `Receta` tinyint(1) DEFAULT 0,
  `descripcion` varchar(255) DEFAULT NULL,
  `Componentes` text DEFAULT NULL,
  `Advertencias` text DEFAULT NULL,
  `Consecuencias` text DEFAULT NULL,
  `Fecha_Registro` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `medicina`
--

INSERT INTO `medicina` (`ID_Medicina`, `Nombre_Medicina`, `Receta`, `descripcion`, `Componentes`, `Advertencias`, `Consecuencias`, `Fecha_Registro`) VALUES
(1, 'Paracetamol', 0, 'Analgésico y antipirético usado para aliviar el dolor y la fiebre.', 'Paracetamol 500mg. Puede presentarse en diferentes formas farmacéuticas dependiendo del laboratorio. Incluye excipientes inactivos como celulosa microcristalina, almidón o estearato de magnesio.', 'No exceder la dosis recomendada. Consulte a un profesional de salud si se encuentra bajo tratamiento con otros medicamentos o si presenta condiciones crónicas. No administrar en menores sin control médico.', 'Daño hepático en caso de sobredosis. Otros efectos secundarios menos frecuentes pueden incluir reacciones cutáneas, mareos, alteraciones gastrointestinales o somnolencia.', '2025-06-29 23:30:29'),
(2, 'Ibuprofeno', 1, 'Antiinflamatorio no esteroideo utilizado para reducir la inflamación y aliviar el dolor.', 'Ibuprofeno 400mg. Puede presentarse en diferentes formas farmacéuticas dependiendo del laboratorio. Incluye excipientes inactivos como celulosa microcristalina, almidón o estearato de magnesio.', 'Evitar en caso de úlceras estomacales. Consulte a un profesional de salud si se encuentra bajo tratamiento con otros medicamentos o si presenta condiciones crónicas. No administrar en menores sin control médico.', 'Puede causar irritación gástrica. Otros efectos secundarios menos frecuentes pueden incluir reacciones cutáneas, mareos, alteraciones gastrointestinales o somnolencia.', '2025-06-29 23:30:29'),
(3, 'Loratadina', 0, 'Antihistamínico para tratar alergias.', 'Loratadina 10mg. Puede presentarse en diferentes formas farmacéuticas dependiendo del laboratorio. Incluye excipientes inactivos como celulosa microcristalina, almidón o estearato de magnesio.', 'Evitar mezclar con alcohol. Consulte a un profesional de salud si se encuentra bajo tratamiento con otros medicamentos o si presenta condiciones crónicas. No administrar en menores sin control médico.', 'Somnolencia leve en algunos casos. Otros efectos secundarios menos frecuentes pueden incluir reacciones cutáneas, mareos, alteraciones gastrointestinales o somnolencia.', '2025-06-29 23:30:29'),
(4, 'Amoxicilina', 1, 'Antibiótico de amplio espectro utilizado para tratar infecciones bacterianas como amigdalitis y bronquitis.', 'Amoxicilina trihidrato 500mg. Puede incluir excipientes como estearato de magnesio, almidón de maíz, dióxido de titanio y colorantes según la presentación. Forma parte de la familia de las penicilinas semisintéticas.', 'No administrar en personas alérgicas a penicilinas u otros antibióticos beta-lactámicos. Puede interferir con pruebas de glucosa en orina. Se recomienda controlar la función renal en tratamientos prolongados.', 'Puede provocar diarrea, náuseas, urticaria, y en casos raros, reacciones anafilácticas graves. También se han reportado alteraciones hepáticas transitorias y colitis pseudomembranosa.', '2025-07-01 15:36:06'),
(5, 'Omeprazol', 0, 'Inhibidor de la bomba de protones que reduce la producción de ácido gástrico, usado en reflujo y úlceras.', 'Omeprazol 20mg. Puede contener excipientes como hipromelosa, óxido de hierro, manitol y dióxido de titanio. Cápsulas entéricas diseñadas para liberar el principio activo en el intestino.', 'No se recomienda su uso continuo por más de 14 días sin supervisión médica. Puede enmascarar síntomas de enfermedades más graves como cáncer gástrico. Precaución en pacientes con osteoporosis.', 'Dolor de cabeza, diarrea, estreñimiento o molestias abdominales. El uso prolongado puede generar deficiencia de vitamina B12 o hipomagnesemia en casos severos.', '2025-07-01 15:36:06'),
(6, 'Salbutamol', 1, 'Broncodilatador que alivia el asma y otras enfermedades pulmonares obstruidas.', 'Salbutamol 100mcg/dosis. Contiene propulsores como HFA-134a, etanol y ácido oleico en presentaciones inhaladas. Disponible también en jarabes y tabletas con excipientes variables.', 'No exceder la dosis recomendada. El uso frecuente puede indicar un mal control del asma y requerir ajuste del tratamiento base. Usar con precaución en pacientes con enfermedades cardiovasculares.', 'Taquicardia, temblores, nerviosismo, cefalea y calambres musculares. En uso prolongado puede haber disminución de la eficacia y necesidad de dosis mayores.', '2025-07-01 15:36:06'),
(7, 'Metformina', 1, 'Medicamento antidiabético que ayuda a controlar los niveles de azúcar en sangre.', 'Metformina 850mg. Comúnmente formulada con excipientes como povidona, estearato de magnesio y celulosa. Forma parte de la clase de biguanidas utilizadas en el manejo de la diabetes tipo 2.', 'Contraindicado en pacientes con insuficiencia renal moderada o severa. Debe suspenderse antes de estudios con contraste yodado. Puede generar acidosis láctica en condiciones desfavorables.', 'Malestar gastrointestinal como náuseas o diarrea, especialmente al inicio del tratamiento. En casos raros, puede producir acidosis láctica, una condición potencialmente mortal.', '2025-07-01 15:36:06'),
(8, 'Loperamida', 0, 'Antidiarreico que reduce la motilidad intestinal.', 'Loperamida 2mg. Contiene también excipientes como lactosa, almidón de maíz y dióxido de silicio. Disponible en tabletas, cápsulas y formas líquidas según el laboratorio fabricante.', 'No administrar en casos de disentería aguda con fiebre o sangre en heces. Contraindicado en niños menores de 6 años y en colitis ulcerosa activa. Usar bajo supervisión médica si hay antecedentes de estreñimiento severo.', 'Estreñimiento, dolor abdominal, náuseas y somnolencia. El uso indebido puede llevar a íleo paralítico o toxicidad sistémica, especialmente en niños.', '2025-07-01 15:36:06'),
(9, 'Cetirizina', 0, 'Antihistamínico para el tratamiento de rinitis alérgica y urticaria.', 'Cetirizina diclorhidrato 10mg. Puede incluir excipientes como lactosa monohidrato, celulosa microcristalina y estearato de magnesio. Se presenta en comprimidos, gotas y jarabes.', 'No administrar en menores de 6 años sin indicación médica. Precaución en pacientes con insuficiencia renal o hepática. Puede potenciar el efecto sedante de alcohol u otros depresores del sistema nervioso central.', 'Somnolencia, sequedad bucal, fatiga o cefalea. Raramente puede producir reacciones alérgicas graves o alteraciones gastrointestinales.', '2025-07-01 15:36:06'),
(10, 'Azitromicina', 1, 'Antibiótico macrólido útil para infecciones respiratorias, cutáneas o genitales.', 'Azitromicina 500mg. Compuesta por azitromicina dihidrato y excipientes como estearato de magnesio, sílice coloidal y almidón pregelatinizado. También disponible en suspensión oral.', 'Evitar en pacientes con historial de prolongación del QT. No tomar con antiácidos que contengan aluminio o magnesio. Usar con precaución en casos de insuficiencia hepática.', 'Dolor abdominal, náuseas, vómitos o diarrea. Puede producir alteraciones en el ritmo cardíaco o hepatitis transitoria.', '2025-07-01 15:36:06'),
(11, 'Diclofenaco', 1, 'Antiinflamatorio no esteroideo utilizado para aliviar dolor muscular y articular.', 'Diclofenaco sódico 50mg. Incluye excipientes como dióxido de silicio, almidón y celulosa. Disponible en tabletas, gel tópico e inyecciones.', 'Evitar su uso en personas con antecedentes de úlceras gástricas, insuficiencia renal o riesgo cardiovascular. No combinar con otros AINEs.', 'Puede provocar molestias gástricas, hipertensión, edema o, en casos severos, insuficiencia renal. También se han reportado casos de hepatotoxicidad.', '2025-07-01 15:36:06'),
(12, 'Ranitidina', 0, 'Medicamento usado para reducir la producción de ácido en el estómago.', 'Ranitidina 150mg. Puede contener excipientes como dióxido de titanio, óxido de hierro y celulosa. Anteriormente usado en tabletas y soluciones inyectables.', 'Retirado del mercado en varios países por presencia de impurezas potencialmente cancerígenas (NDMA). No se recomienda su uso sin evaluación médica.', 'Puede producir cefalea, mareos, fatiga o alteraciones hepáticas. También se ha asociado con reacciones alérgicas severas en raras ocasiones.', '2025-07-01 15:36:06'),
(13, 'Clorfenamina', 0, 'Antihistamínico para el alivio de síntomas alérgicos como picazón o secreción nasal.', 'Clorfenamina maleato 4mg. Se acompaña de excipientes como lactosa, almidón de maíz y estearato de magnesio. Disponible en tabletas, jarabes y combinaciones con descongestionantes.', 'Puede potenciar el efecto sedante del alcohol y otros depresores. Precaución en personas con glaucoma, hipertrofia prostática o enfermedades respiratorias crónicas.', 'Somnolencia intensa, visión borrosa, sequedad de boca o dificultad para orinar. En sobredosis puede causar convulsiones o arritmias.', '2025-07-01 15:36:06'),
(14, 'Clonazepam', 1, 'Benzodiacepina utilizada para tratar la ansiedad, el insomnio y trastornos convulsivos.', 'Clonazepam 0.5mg. Incluye excipientes como lactosa monohidrato, almidón de maíz, estearato de magnesio y dióxido de silicio. Disponible en comprimidos convencionales o de disolución rápida.', 'Puede causar dependencia física y psicológica. Evitar su uso prolongado sin seguimiento médico. No combinar con alcohol ni con otros depresores del sistema nervioso central.', 'Somnolencia excesiva, mareos, dificultad para concentrarse, pérdida de coordinación y, en casos graves, depresión respiratoria o síndrome de abstinencia al suspenderlo bruscamente.', '2025-07-01 15:40:55'),
(15, 'Dexametasona', 1, 'Corticoide utilizado para tratar inflamación severa, alergias y enfermedades autoinmunes.', 'Dexametasona 4mg. Comúnmente formulada con excipientes como almidón, lactosa, estearato de magnesio. Se presenta en tabletas, inyecciones y soluciones orales.', 'Usar con precaución en pacientes con diabetes, hipertensión, infecciones activas o trastornos psiquiátricos. El uso prolongado puede causar supresión del eje hipófiso-adrenal.', 'Insomnio, aumento de peso, hinchazón, aumento del riesgo de infecciones, osteoporosis, y en tratamientos prolongados, síndrome de Cushing.', '2025-07-01 15:40:55'),
(16, 'Acetaminofén', 0, 'Analgésico utilizado para aliviar dolores leves y reducir la fiebre.', 'Acetaminofén 500mg (Paracetamol). Contiene excipientes como almidón pregelatinizado, ácido esteárico y povidona. Presentación habitual en tabletas y jarabes.', 'Evitar consumir junto con bebidas alcohólicas o medicamentos hepatotóxicos. No exceder la dosis máxima diaria recomendada (4g/día en adultos).', 'Hepatotoxicidad severa en caso de sobredosis, náuseas, vómitos y, en casos extremos, falla hepática fulminante que puede requerir trasplante.', '2025-07-01 15:40:55'),
(17, 'Ranitidina', 0, 'Antagonista H2 para tratar reflujo y úlceras gástricas.', 'Ranitidina 150mg. Ver formulación en ID 12. Esta es una segunda entrada del mismo medicamento en el sistema.', 'Producto con historial de retiro en muchos países debido a impurezas NDMA. No debe usarse sin revisión médica previa.', 'Puede causar dolor de cabeza, náuseas, diarrea o, en muy raros casos, hepatotoxicidad. Su seguridad está en revisión en varios mercados.', '2025-07-01 15:40:55'),
(18, 'Diazepam', 1, 'Anxiolítico y relajante muscular para tratar ansiedad, espasmos y convulsiones.', 'Diazepam 5mg. Incluye excipientes como celulosa microcristalina, estearato de magnesio y dióxido de silicio. Se presenta en tabletas, solución oral e inyectables.', 'No debe ser utilizado por periodos prolongados sin control médico. Altamente adictivo. Evitar en personas con depresión respiratoria, miastenia gravis o glaucoma de ángulo cerrado.', 'Somnolencia, mareo, debilidad muscular, amnesia anterógrada, y riesgo de dependencia. Su suspensión brusca puede provocar síntomas de abstinencia severos.', '2025-07-01 15:40:55'),
(19, 'Loratadina-D', 0, 'Antihistamínico combinado con descongestionante para tratar síntomas de alergia nasal.', 'Loratadina 5mg + Pseudoefedrina 120mg. Tabletas de liberación prolongada. Puede contener excipientes como celulosa, dióxido de titanio y estearato de magnesio.', 'Evitar en personas con hipertensión, enfermedades cardíacas o hipertiroidismo. No combinar con otros estimulantes o medicamentos para el resfriado.', 'Palpitaciones, nerviosismo, insomnio, boca seca, y en casos raros, aumento de la presión arterial o ansiedad.', '2025-07-01 15:40:55'),
(20, 'Domperidona', 0, 'Antiemético que estimula el vaciado gástrico y alivia náuseas y vómitos.', 'Domperidona 10mg. Contiene excipientes como almidón de maíz, lactosa y estearato de magnesio. Se presenta en tabletas, suspensión oral y supositorios.', 'No usar en personas con problemas cardíacos graves o hemorragias gastrointestinales. Riesgo de arritmias ventriculares si se supera la dosis recomendada.', 'Palpitaciones, sequedad bucal, somnolencia y, en algunos casos, alteraciones hormonales como galactorrea o ginecomastia.', '2025-07-01 15:40:55'),
(21, 'Metamizol', 1, 'Analgésico y antipirético potente, usado para fiebre alta o dolor agudo.', 'Metamizol sódico 500mg. Disponible en tabletas, gotas o inyecciones. Puede contener excipientes como povidona y almidón.', 'Debe usarse bajo prescripción médica debido al riesgo de agranulocitosis. Evitar en personas con alergia a AINEs o historial de reacciones hematológicas.', 'Reacciones alérgicas graves, hipotensión, mareos, y en casos graves, supresión de la médula ósea con riesgo vital.', '2025-07-01 15:40:55'),
(22, 'Lansoprazol', 0, 'Inhibidor de bomba de protones que reduce el ácido estomacal.', 'Lansoprazol 30mg. Cápsulas con microgránulos entéricos. Incluye excipientes como manitol, hipromelosa y dióxido de titanio.', 'Evitar tratamientos prolongados sin control médico. Puede enmascarar síntomas de cáncer gástrico. Riesgo de hipomagnesemia con uso continuo.', 'Dolor abdominal, náuseas, fatiga, diarrea. En tratamientos largos: deficiencia de vitamina B12 y fracturas óseas en adultos mayores.', '2025-07-01 15:40:55'),
(23, 'Cefalexina', 1, 'Antibiótico cefalosporínico para infecciones bacterianas de piel y vías respiratorias.', 'Cefalexina 500mg. Cápsulas que pueden contener estearato de magnesio, celulosa microcristalina y almidón. Forma parte del grupo de las cefalosporinas de primera generación.', 'Evitar en personas alérgicas a penicilinas o cefalosporinas. Precaución en insuficiencia renal. Puede alterar resultados de pruebas de laboratorio.', 'Diarrea, náuseas, erupciones cutáneas. En casos poco frecuentes: colitis pseudomembranosa o nefritis intersticial.', '2025-07-01 15:40:55'),
(24, 'Meclizina', 0, 'Antivertiginoso utilizado para aliviar mareos, vértigo y náuseas.', 'Meclizina 25mg. Tabletas masticables o deglutibles. Contiene lactosa, almidón de maíz, estearato de magnesio y dióxido de silicio.', 'Evitar operar maquinaria pesada o conducir durante su uso. Precaución en adultos mayores por riesgo de confusión o caídas.', 'Somnolencia, sequedad bucal, visión borrosa, y ocasionalmente, estreñimiento o dificultad para orinar.', '2025-07-01 15:40:55'),
(25, 'Betametasona', 1, 'Corticoide antiinflamatorio para afecciones alérgicas, cutáneas o reumáticas.', 'Betametasona 1mg. Se presenta en tabletas, cremas y soluciones inyectables. Incluye excipientes como vaselina, propilenglicol o celulosa.', 'Evitar uso prolongado en la piel o sin indicación médica. Puede suprimir la función adrenal. No usar en heridas abiertas o infecciones sin tratamiento.', 'Irritación dérmica, atrofia cutánea, aumento de la glucosa en sangre y riesgo de infecciones oportunistas.', '2025-07-01 15:40:55'),
(26, 'Codeína', 1, 'Analgésico opioide y antitusígeno, útil para dolor y tos seca persistente.', 'Codeína fosfato 30mg. Comúnmente asociada con paracetamol en fórmulas combinadas. Contiene excipientes como almidón de maíz, talco y lactosa.', 'Potencial altamente adictivo. No usar en menores de edad sin prescripción. Riesgo elevado en combinación con depresores del sistema nervioso central.', 'Somnolencia, náuseas, estreñimiento, depresión respiratoria y desarrollo de tolerancia o dependencia física.', '2025-07-01 15:40:55'),
(27, 'Furosemida', 1, 'Diurético potente utilizado para tratar edemas e hipertensión.', 'Furosemida 40mg. Diurético de asa formulado en tabletas o solución inyectable. Contiene almidón, lactosa y estearato de magnesio.', 'Controlar electrolitos y función renal durante el tratamiento. No administrar junto a aminoglucósidos por riesgo de toxicidad auditiva.', 'Deshidratación, hipotensión, hipopotasemia, hiponatremia y, en casos graves, insuficiencia renal aguda.', '2025-07-01 15:40:55'),
(28, 'Albendazol', 0, 'Antiparasitario utilizado para tratar infecciones por lombrices y otros parásitos intestinales.', 'Albendazol 400mg. Se presenta en tabletas masticables o suspensión oral. Contiene almidón de maíz, sacarosa y dióxido de silicio.', 'Evitar su uso durante el primer trimestre de embarazo. Precaución en pacientes con enfermedades hepáticas.', 'Dolor abdominal, náuseas, mareos, y en casos raros, elevación de enzimas hepáticas o pancitopenia.', '2025-07-01 15:40:55'),
(29, 'Ciclopirox', 0, 'Antifúngico tópico para infecciones cutáneas como tiña o candidiasis.', 'Ciclopirox olamina 1%. Presentación en crema, loción y esmalte para uñas. Contiene excipientes como alcohol bencílico, agua purificada y propilenglicol.', 'Uso exclusivamente tópico. No aplicar en ojos ni mucosas. Interrumpir si hay irritación severa.', 'Enrojecimiento, ardor, descamación local o prurito. Reacciones alérgicas raras.', '2025-07-01 15:40:55'),
(30, 'Ketotifeno', 0, 'Antihistamínico para prevención de crisis asmáticas y alergias crónicas.', 'Ketotifeno 1mg. Tabletas o jarabe. Puede contener lactosa, almidón y dióxido de titanio. Pertenece a la clase de antihistamínicos estabilizadores de mastocitos.', 'Puede causar somnolencia. No suspender bruscamente en tratamientos prolongados. Precaución en personas con epilepsia.', 'Somnolencia, aumento de apetito, irritabilidad o mareos.', '2025-07-01 15:40:55'),
(31, 'Tramadol', 1, 'Analgésico opioide de acción central para dolor moderado a severo.', 'Tramadol 50mg. Analgésico opioide formulado en cápsulas, gotas o ampollas. Puede contener excipientes como celulosa, sílice y estearato de magnesio.', 'Evitar en pacientes con antecedentes de epilepsia o uso de antidepresivos. Riesgo de dependencia. No combinar con alcohol.', 'Náuseas, vómitos, somnolencia, sudoración, dependencia física o síndrome serotoninérgico.', '2025-07-01 15:40:55'),
(32, 'Ciprofloxacino', 1, 'Antibiótico de amplio espectro útil contra infecciones urinarias y gastrointestinales.', 'Ciprofloxacino 500mg. Antibiótico fluoroquinolona. Incluye excipientes como hipromelosa, almidón de maíz y magnesio estearato.', 'Evitar exposición solar durante el tratamiento. No administrar junto a antiácidos, suplementos de hierro o productos lácteos.', 'Fotosensibilidad, diarrea, alteración del gusto, tendinitis, rotura de tendones en casos raros.', '2025-07-01 15:40:55'),
(33, 'Hidrocortisona', 1, 'Corticoide usado para tratar inflamaciones, alergias y afecciones autoinmunes.', 'Hidrocortisona 10mg. Disponible en crema, comprimidos y soluciones inyectables. Puede incluir alcoholes, lanolina y propilenglicol.', 'Evitar uso prolongado sin control médico. No aplicar en heridas abiertas o infecciones sin tratamiento. Controlar presión arterial y glucosa en tratamientos sistémicos.', 'Supresión del sistema inmune, adelgazamiento de la piel, hiperglucemia, retención de líquidos o hipertensión.', '2025-07-01 15:40:55'),
(34, 'Naproxeno', 1, 'Antiinflamatorio no esteroideo utilizado para tratar dolor muscular y articular.', 'Naproxeno sódico 550mg. AINE con formulación en tabletas y cápsulas. Contiene lactosa, celulosa microcristalina y estearato de magnesio.', 'Evitar uso prolongado sin control médico. No usar en personas con antecedentes de úlceras, sangrado gastrointestinal o enfermedad renal.', 'Dolor estomacal, gastritis, hipertensión, retención de líquidos y riesgo de eventos cardiovasculares en uso crónico.', '2025-07-01 15:43:28'),
(35, 'Miconazol', 0, 'Antifúngico tópico para infecciones de piel como pie de atleta y candidiasis.', 'Miconazol 2%. Antifúngico azólico de uso tópico en forma de crema, gel o spray. Contiene alcohol bencílico, propilenglicol y agua purificada.', 'Uso exclusivo en piel. Evitar contacto con los ojos y mucosas. No aplicar sobre heridas abiertas.', 'Irritación, ardor, descamación o picazón en el área aplicada. Raramente, reacciones alérgicas cutáneas.', '2025-07-01 15:43:28'),
(36, 'Fenilefrina', 0, 'Descongestionante nasal que reduce la hinchazón de las vías respiratorias.', 'Fenilefrina 10mg. Común en descongestionantes nasales y antigripales. Puede combinarse con antihistamínicos o analgésicos.', 'No usar más de 5 días seguidos. Riesgo de efecto rebote. Precaución en hipertensos y personas con enfermedades cardíacas.', 'Palpitaciones, nerviosismo, insomnio, aumento de la presión arterial o ansiedad.', '2025-07-01 15:43:28'),
(37, 'Levocetirizina', 0, 'Antihistamínico para rinitis alérgica y urticaria crónica.', 'Levocetirizina 5mg. Antihistamínico de segunda generación. Puede contener lactosa, almidón y celulosa microcristalina.', 'Evitar consumo de alcohol. Precaución en insuficiencia renal grave. Menor incidencia de somnolencia que otros antihistamínicos.', 'Somnolencia leve, sequedad bucal, fatiga, dolor de cabeza o mareo.', '2025-07-01 15:43:28'),
(38, 'Prednisona', 1, 'Corticoide oral para inflamación y enfermedades autoinmunes.', 'Prednisona 20mg. Corticoide oral en tabletas. Incluye excipientes como almidón, lactosa y estearato de magnesio.', 'No suspender de forma abrupta tras uso prolongado. Riesgo de inmunosupresión, hiperglucemia y retención de líquidos.', 'Aumento de peso, insomnio, hipertensión, fragilidad ósea, alteraciones del estado de ánimo.', '2025-07-01 15:43:28'),
(39, 'Oxolamina', 0, 'Antitusivo y antiinflamatorio para aliviar tos seca.', 'Oxolamina citrato 100mg. Antitusivo y antiinflamatorio de las vías respiratorias. Se presenta en jarabe o cápsulas. Contiene sacarosa, alcohol y esencias aromáticas.', 'Evitar conducir o manejar maquinaria pesada durante el tratamiento. No combinar con otros depresores del sistema nervioso.', 'Somnolencia, molestias gástricas, boca seca o náuseas leves.', '2025-07-01 15:43:28'),
(40, 'Aciclovir', 1, 'Antiviral para tratar infecciones por herpes simple y zóster.', 'Aciclovir 400mg. Antiviral análogo de nucleósido activo contra virus del herpes. Formulación en tabletas, cremas o solución inyectable.', 'Tomar con abundante agua para evitar cristaluria. Precaución en pacientes con insuficiencia renal.', 'Náuseas, dolor abdominal, diarrea, fatiga o erupciones cutáneas leves.', '2025-07-01 15:43:28'),
(41, 'Carbamazepina', 1, 'Anticonvulsivo usado para epilepsia, neuralgia y trastornos bipolares.', 'Carbamazepina 200mg. Anticonvulsivo y estabilizador del ánimo. Comprimidos de liberación inmediata o controlada. Contiene almidón de maíz, talco y celulosa.', 'Monitorear función hepática y niveles plasmáticos. Puede interactuar con numerosos medicamentos. No suspender abruptamente.', 'Somnolencia, mareos, visión borrosa, alteraciones del equilibrio, erupciones cutáneas o disminución de sodio en sangre.', '2025-07-01 15:43:28'),
(42, 'Risperidona', 1, 'Antipsicótico para trastornos como esquizofrenia o bipolaridad.', 'Risperidona 2mg. Antipsicótico atípico. Se presenta en tabletas y solución oral. Contiene lactosa, dióxido de titanio y celulosa microcristalina.', 'Supervisión médica continua. Ajustar dosis en ancianos y pacientes con insuficiencia renal o hepática.', 'Sedación, rigidez muscular, aumento de peso, ansiedad, galactorrea o disfunción sexual.', '2025-07-01 15:43:28'),
(43, 'Losartán', 1, 'Antihipertensivo utilizado para controlar la presión arterial alta.', 'Losartán potásico 50mg. Antagonista del receptor de angiotensina II (ARA-II). Comprimidos recubiertos con excipientes como lactosa, celulosa y dióxido de silicio.', 'Control regular de la presión arterial y niveles de potasio. No administrar durante el embarazo.', 'Mareos, fatiga, hiperpotasemia, disfunción renal en pacientes susceptibles.', '2025-07-01 15:43:28'),
(44, 'Clorfeniramina', 0, 'Antihistamínico para rinitis, picazón ocular o cutánea.', 'Clorfeniramina maleato 4mg. Antihistamínico clásico. Se encuentra en tabletas o jarabes. Puede contener sacarosa, colorantes y saborizantes.', 'Puede causar somnolencia significativa. Evitar el uso en combinación con alcohol o sedantes.', 'Somnolencia, sequedad de boca, visión borrosa, mareos o retención urinaria.', '2025-07-01 15:43:28'),
(45, 'Omeprazol + Domperidona', 0, 'Combinación para reflujo y problemas digestivos.', 'Omeprazol 20mg + Domperidona 10mg. Combinación gastroprotectora y proquinética. Presentación en cápsulas. Contiene gelatina, talco y dióxido de titanio.', 'Precaución en pacientes con antecedentes cardíacos o hepáticos. Evitar el uso prolongado sin supervisión.', 'Palpitaciones, mareos, náuseas, cefalea o alteraciones menstruales.', '2025-07-01 15:43:28'),
(46, 'Buscapina', 0, 'Antiespasmódico para dolor abdominal y cólicos.', 'Butilhioscina 10mg. Antiespasmódico en presentación de tabletas o inyectables. Puede contener lactosa y almidón de maíz.', 'Evitar en personas con glaucoma, miastenia gravis o hipertrofia prostática. No superar la dosis recomendada.', 'Sequedad bucal, visión borrosa, aumento de la frecuencia cardíaca, dificultad para orinar.', '2025-07-01 15:43:28'),
(47, 'Tiamina', 0, 'Vitamina B1 para deficiencias nutricionales o fatiga.', 'Tiamina 300mg. Vitamina B1 esencial. Suplemento oral o inyectable. Contiene excipientes como almidón y estearato de magnesio.', 'Seguir la dosis recomendada. Precaución en personas con insuficiencia hepática o renal.', 'Reacciones alérgicas leves, molestias gastrointestinales, fatiga o irritabilidad.', '2025-07-01 15:43:28'),
(48, 'Fluconazol', 1, 'Antifúngico oral para infecciones por cándida.', 'Fluconazol 150mg. Antifúngico triazólico oral o intravenoso. Contiene almidón pregelatinizado, sílice coloidal y dióxido de titanio.', 'Controlar función hepática en tratamientos prolongados. Interacciones con anticoagulantes y anticonvulsivos.', 'Toxicidad hepática, erupciones cutáneas, náuseas, dolor abdominal o diarrea.', '2025-07-01 15:43:28'),
(49, 'Sertralina', 1, 'Antidepresivo inhibidor selectivo de la recaptación de serotonina.', 'Sertralina 50mg. Inhibidor selectivo de la recaptación de serotonina (ISRS). Disponible en tabletas recubiertas. Incluye celulosa microcristalina, fosfato cálcico y dióxido de titanio.', 'Evitar suspender bruscamente. Riesgo de síndrome serotoninérgico si se combina con otros antidepresivos. Supervisión médica estricta.', 'Náuseas, insomnio, agitación, disfunción sexual, aumento de ansiedad al inicio del tratamiento.', '2025-07-01 15:43:28'),
(50, 'Clindamicina', 1, 'Antibiótico para infecciones cutáneas, dentales y del tracto respiratorio.', 'Clindamicina 300mg. Antibiótico lincosamida en cápsulas o soluciones inyectables. Contiene estearato de magnesio y almidón de maíz.', 'Puede causar colitis pseudomembranosa. Usar con precaución en pacientes con antecedentes de enfermedades gastrointestinales.', 'Diarrea severa, dolor abdominal, náuseas, alteración de la microbiota intestinal.', '2025-07-01 15:43:28'),
(51, 'Bromhexina', 0, 'Mucolítico que fluidifica las secreciones respiratorias.', 'Bromhexina 8mg. Mucolítico que facilita la expulsión de secreciones bronquiales. Presentación en jarabe o tabletas. Contiene edulcorantes y saborizantes artificiales.', 'No combinar con antitusivos. Precaución en pacientes con úlceras gástricas.', 'Náuseas, aumento temporal de la tos, molestias digestivas.', '2025-07-01 15:43:28'),
(52, 'Desloratadina', 0, 'Antihistamínico de segunda generación para rinitis y urticaria.', 'Desloratadina 5mg. Antihistamínico de segunda generación. Se presenta en tabletas o jarabe. Libre de sedantes en la mayoría de pacientes.', 'Evitar en combinación con alcohol. Precaución en pacientes con insuficiencia renal o hepática.', 'Dolor de cabeza, sequedad bucal, fatiga, somnolencia ocasional.', '2025-07-01 15:43:28'),
(53, 'Meloxicam', 1, 'AINE para dolor articular, muscular y artritis.', 'Meloxicam 15mg. Antiinflamatorio no esteroideo (AINE) con efecto selectivo sobre COX-2. Disponible en tabletas o suspensión oral.', 'Evitar en pacientes con riesgo cardiovascular, úlceras gástricas o insuficiencia renal. Supervisión médica recomendada en tratamientos prolongados.', 'Gastritis, hipertensión, retención de líquidos, somnolencia leve.', '2025-07-01 15:43:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicina_sintoma`
--

CREATE TABLE `medicina_sintoma` (
  `ID_Medicina` int(11) NOT NULL,
  `ID_Sintomas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `medicina_sintoma`
--

INSERT INTO `medicina_sintoma` (`ID_Medicina`, `ID_Sintomas`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 4),
(3, 6),
(3, 9),
(14, 3),
(14, 17),
(14, 30),
(14, 44),
(15, 14),
(15, 15),
(15, 22),
(15, 24),
(16, 1),
(16, 2),
(16, 43),
(17, 13),
(17, 20),
(17, 28),
(18, 17),
(18, 30),
(18, 44),
(19, 6),
(19, 9),
(19, 14),
(19, 32),
(20, 3),
(20, 12),
(20, 27),
(21, 2),
(21, 4),
(21, 19),
(21, 43),
(22, 13),
(22, 20),
(22, 28),
(23, 11),
(23, 14),
(23, 22),
(23, 36),
(24, 8),
(24, 27),
(24, 30),
(25, 14),
(25, 22),
(25, 24),
(25, 40),
(26, 2),
(26, 5),
(26, 30),
(26, 44),
(27, 16),
(27, 29),
(27, 39),
(28, 12),
(28, 19),
(28, 28),
(29, 14),
(29, 22),
(29, 40),
(30, 6),
(30, 14),
(30, 32),
(31, 4),
(31, 16),
(31, 30),
(32, 11),
(32, 12),
(32, 19),
(32, 28),
(33, 14),
(33, 15),
(33, 24),
(33, 40),
(34, 4),
(34, 15),
(34, 21),
(35, 14),
(35, 22),
(35, 40),
(36, 6),
(36, 26),
(36, 29),
(37, 9),
(37, 14),
(37, 32),
(38, 15),
(38, 22),
(38, 24),
(38, 43),
(39, 5),
(39, 14),
(39, 26),
(40, 14),
(40, 22),
(40, 36),
(41, 17),
(41, 30),
(41, 31),
(41, 44),
(42, 3),
(42, 17),
(42, 31),
(42, 44),
(43, 16),
(43, 29),
(43, 42),
(44, 9),
(44, 14),
(44, 32),
(45, 3),
(45, 13),
(45, 20),
(45, 28),
(46, 19),
(46, 28),
(46, 43),
(47, 10),
(47, 16),
(47, 31),
(48, 22),
(48, 33),
(48, 40),
(49, 3),
(49, 17),
(49, 31),
(49, 44),
(50, 11),
(50, 12),
(50, 19),
(50, 43),
(51, 5),
(51, 6),
(51, 26),
(51, 39),
(52, 9),
(52, 14),
(52, 32),
(53, 4),
(53, 15),
(53, 21),
(53, 29);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sintomas`
--

CREATE TABLE `sintomas` (
  `ID_Sintomas` int(11) NOT NULL,
  `Sintomas` varchar(100) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sintomas`
--

INSERT INTO `sintomas` (`ID_Sintomas`, `Sintomas`, `descripcion`) VALUES
(1, 'Dolor de cabeza', 'Sensación de dolor o presión en la cabeza o el cuello.'),
(2, 'Fiebre', 'Elevación temporal de la temperatura corporal.'),
(3, 'Náuseas', 'Sensación de querer vomitar.'),
(4, 'Dolor muscular', 'Molestia o dolor en los músculos.'),
(5, 'Tos', 'Expulsión repentina de aire para despejar vías respiratorias.'),
(6, 'Congestión nasal', 'Obstrucción de los conductos nasales.'),
(7, 'Dolor de garganta', 'Irritación o dolor al tragar.'),
(8, 'Mareos', 'Sensación de inestabilidad o vértigo.'),
(9, 'Estornudos', 'Expulsión repentina de aire por la nariz y boca.'),
(10, 'Falta de apetito', 'Disminución del deseo de comer.'),
(11, 'Diarrea', 'Evacuaciones frecuentes y líquidas del intestino.'),
(12, 'Inflamación', 'Hinchazón o enrojecimiento en una parte del cuerpo.'),
(13, 'Acidez estomacal', 'Sensación de ardor en el pecho causada por el reflujo ácido.'),
(14, 'Alergia cutánea', 'Erupciones o picazón en la piel debido a una reacción alérgica.'),
(15, 'Infección respiratoria', 'Inflamación del tracto respiratorio por bacterias o virus.'),
(16, 'Tensión alta', 'Elevación anormal de la presión arterial.'),
(17, 'Fatiga', 'Sensación de cansancio extremo o falta de energía.'),
(18, 'Dificultad para respirar', 'Sensación de no poder llenar bien los pulmones.'),
(19, 'Dolor abdominal', 'Molestia localizada en la región del abdomen.'),
(20, 'Irritación gástrica', 'Sensación de ardor o malestar en el estómago.'),
(21, 'Dolor en las articulaciones', 'Molestia o rigidez en zonas como rodillas, codos o muñecas.'),
(22, 'Erupción cutánea', 'Manchas, granos o enrojecimiento en la piel.'),
(23, 'Ansiedad', 'Sensación de nerviosismo, preocupación o inquietud.'),
(24, 'Sudoración excesiva', 'Producción anormalmente alta de sudor, incluso en reposo.'),
(25, 'Fiebre alta', 'Elevación de temperatura corporal por encima de 39°C.'),
(26, 'Presión en el pecho', 'Sensación de opresión en la zona torácica.'),
(27, 'Insomnio', 'Dificultad persistente para conciliar o mantener el sueño.'),
(28, 'Dolor de oídos', 'Sensación punzante o ardor dentro del oído.'),
(29, 'Hinchazón en extremidades', 'Inflamación visible en manos, pies o piernas.'),
(30, 'Palpitaciones', 'Percepción acelerada o irregular del ritmo cardíaco.'),
(31, 'Dificultad para concentrarse', 'Problemas para mantener la atención o pensar con claridad.'),
(32, 'Picazón en los ojos', 'Sensación molesta de escozor o irritación ocular.'),
(33, 'Inflamación de garganta', 'Hinchazón y dolor en la zona de la faringe.'),
(34, 'Pérdida del gusto', 'Disminución o ausencia temporal de la capacidad para saborear.'),
(35, 'Pérdida del olfato', 'Disminución o ausencia temporal de la capacidad para oler.'),
(36, 'Ruidos estomacales', 'Sonidos audibles provenientes del sistema digestivo.'),
(37, 'Sensibilidad a la luz', 'Incomodidad o dolor ocular al exponerse a luz brillante.'),
(38, 'Opresión abdominal', 'Sensación de presión o incomodidad en la parte baja del abdomen.'),
(39, 'Temblores', 'Movimientos involuntarios rítmicos en alguna parte del cuerpo.'),
(40, 'Inflamación ocular', 'Hinchazón y enrojecimiento en uno o ambos ojos.'),
(41, 'Vómitos', 'Expulsión forzada del contenido estomacal por la boca.'),
(42, 'Dolor en el pecho', 'Molestia o presión en el área torácica, puede ser síntoma de varias condiciones.'),
(43, 'Lengua blanca', 'Aparición de una capa blanquecina en la superficie de la lengua, asociada a infecciones u hongos.'),
(44, 'Sangrado nasal', 'Pérdida de sangre por las fosas nasales, usualmente por irritación o presión.'),
(45, 'Sensación de cuerpo cortado', 'Sensación general de malestar corporal, típica en estados gripales.'),
(46, 'Vómitos', 'Expulsión forzada del contenido estomacal por la boca.'),
(47, 'Dolor en el pecho', 'Molestia o presión en el área torácica, puede ser síntoma de varias condiciones.'),
(48, 'Lengua blanca', 'Aparición de una capa blanquecina en la superficie de la lengua, asociada a infecciones u hongos.'),
(49, 'Sangrado nasal', 'Pérdida de sangre por las fosas nasales, usualmente por irritación o presión.'),
(50, 'Sensación de cuerpo cortado', 'Sensación general de malestar corporal, típica en estados gripales.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ID_Usuario` int(11) NOT NULL,
  `Correo` varchar(60) NOT NULL,
  `Contraseña` varchar(30) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `medicina`
--
ALTER TABLE `medicina`
  ADD PRIMARY KEY (`ID_Medicina`);
ALTER TABLE `medicina` ADD FULLTEXT KEY `Componentes` (`Componentes`);
ALTER TABLE `medicina` ADD FULLTEXT KEY `Advertencias` (`Advertencias`);
ALTER TABLE `medicina` ADD FULLTEXT KEY `Consecuencias` (`Consecuencias`);

--
-- Indices de la tabla `medicina_sintoma`
--
ALTER TABLE `medicina_sintoma`
  ADD PRIMARY KEY (`ID_Medicina`,`ID_Sintomas`),
  ADD KEY `ID_Sintomas` (`ID_Sintomas`);

--
-- Indices de la tabla `sintomas`
--
ALTER TABLE `sintomas`
  ADD PRIMARY KEY (`ID_Sintomas`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID_Usuario`),
  ADD UNIQUE KEY `Correo` (`Correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `medicina`
--
ALTER TABLE `medicina`
  MODIFY `ID_Medicina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `sintomas`
--
ALTER TABLE `sintomas`
  MODIFY `ID_Sintomas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID_Usuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `medicina_sintoma`
--
ALTER TABLE `medicina_sintoma`
  ADD CONSTRAINT `medicina_sintoma_ibfk_1` FOREIGN KEY (`ID_Medicina`) REFERENCES `medicina` (`ID_Medicina`),
  ADD CONSTRAINT `medicina_sintoma_ibfk_2` FOREIGN KEY (`ID_Sintomas`) REFERENCES `sintomas` (`ID_Sintomas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

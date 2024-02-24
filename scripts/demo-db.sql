-- Remove previous data
DELETE FROM public."Books";
DELETE FROM public."Pages";

-- Insert data
INSERT INTO public."Books" (author, title, subtitle, "imgUrl", description, genres, "createdAt", "updatedAt", content)
VALUES 
    (
      'George Orwell', 
      '1984', 
      'Conoce al Gran Hermano', 
      'assets/books/1984/cover.jpg', 
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 
      '{"distopic", "classic"}', 
      NOW(), 
      NOW(), 
      '{{"1", "2"}, {"3", "4"}}'
    ),
    (
      'Bruno Piqué', 
      'Madrid Zombie', 
      '¡Rambo no!', 
      'assets/books/madridzombie/cover.jpg', 
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 
      '{"zombi", "adventure"}', 
      NOW(), 
      NOW(), 
      '{{"1", "2", "3", "4", "5", "6", "7", "8", "9"}}');

INSERT INTO public."Pages" (html, options)
VALUES 
    (
    '<p>- ¿Cómo que no habéis traido nada?</p><p>El puño de Victor golpea la mesa.</p><p>- Ha sido imposible - responde John.</p><p>- ¿Por qué?</p><p>Claudia pestañea con cada grito.</p>',
    '[{"displayText": "estabamos ocupados sobreviviendo", "nextPageId": "2"}, {"displayText": "tranquilizate", "nextPageId": "3"}, {"displayText": "no dices nada", "nextPageId": "4"}]'
    ),
    (
      '<p>- ¿Sabes cómo se sobrevive en este y en cualquier otro mundo, querido Nomad? Con agua y comida...</p><p>- Y yo aquí sin mi libreta para apuntarlo ...</p><p>- Dame la pistola.</p><p>- Tranquilidad, por favor - la voz de Eduardo deselectriza el aire -. Creo que sé otro lugar donde puede haber comida.</p>',
      '[{"displayText": "siguiente", "nextPageId": "5"}]'
    ),
    (
      '<p>Texto opción 2 seleccionado ...</p>',
      '[{"displayText": "siguiente", "nextPageId": "5"}]'
    ),
    (
      '<p>Texto opción 3 seleccionado ...</p>',
      '[{"displayText": "siguiente", "nextPageId": "5"}]'
    ),
    (
      '<p>- ¿Y ahora nos lo dices?¿En dónde?</p><p>- En la iglesia.</p><p>- ¿La que está a unas calles de aquí?</p><p>- La misma.</p><p>- Insisto - dice Víctor conteniendo la respiración -, ¿por qué has esperado hasta ahora para decírnoslo?</p><p>La mirada de Eduardo ni se inmuta.</p><p>- Según nos dijiste, el supermercado era una excursión segura... Lo de la iglesia es solo una posibilidad</p><p>Víctor finje una sonrisa.</p>',
      '[{"displayText": "siguiente", "nextPageId": "6"}]'
    ),
    (
      '<p>- Conozco al padre Manuel - continúa Eduardo -. Semanas antes de perder contacto con el mundo exterior hablé con él. Me dijo que estaba aprovisionando la iglesia y que cualquier feligrés que no tuviese donde ir podía refugiarse allí. No he vuelto a saber nada de él desde entonces. Puede que haya gente y comida allí, o no. No lo sé.</p><p>- "No lo sé" es nuestra mejor opción ahora mismo, ¿no? - pregunta María.</p><p>- Eso parece ...</p><p>- Muy bien - dice John mirándote -, a la iglesia.</p><p>- No, esta vez iré yo - Eduardo se dirige al inglés y pone una mano en su hombro -. Tú descansa.</p>',
      '[{"displayText": "siguiente", "nextPageId": "7"}]'
    ),
    (
      '<p>- Tienes razón, Eduardo, actuemos con calma. Repasaré el plan hoy por la noche y mañana organizo la misión. Ya han sido suficientes decepciones por hoy. ¿Cristina?</p><p>La joven se pone de pie y ambos desaparecen tras la puerta.</p><p>Quieres aportar algo al debate pero tus músculos están consumidos. Estar en pie es todo un esfuerzo.</p><p>- Iros a dormir - la voz de María es un somnífero -, mañana lo solucionaremos.</p><p>- Ok.</p><p>- ¿Quieres que me quede con Claudia por esta noche?</p>',
       '[{"displayText": "si", "nextPageId": "8"}, {"displayText": "no", "nextPageId": "9"}]'
    ),
    (
      '<p>- Vale, no hay problema. Dale un beso a tu padre, Claudia.</p><p>Los ojos de la niña recorren tu figura pero su cuerpo no se mueve.</p><p>- Está bien. Adiós, Claudia.</p><p>Cierras la puerta con la palabra "padre" resonando en las paredes de tu mente y con Rambo siguiéndote (y olfateándote) a tus pies.</p><p>- ¿Listo para descansar?</p><p>- Jamás he estado más preparado.</p><p>John asiente, se detiene frente a la puerta como si hubiese llegado a la tierra prometida, y la abre.</p><p>- Si me necesitas estaré en mi cama.</p><p>- Lo mismo.</p><p>John entra en su habitación y un segundo después oyes su cuerpo chocando contra el colchón. A través de la ventana puede verse la Luna y en esa dirección miran tus ojos embobados. Te acuestas. Cierras los ojos y aún puedes ver el satélite; blanco y esférico danza y tilila sobre sus párpados. La imagen te marea y te duermes.</p>',
      '[{"displayText": "siguiente capitulo", "nextPageId": "*"}]'
    ),
    (
      '<p>- No hace falta, gracias.</p><p>- Vale, Claudia, ve con tu padre.</p><p>La niña da un paso hacia ti. Extiendes tu mano. Ella la mira y extiende la suya. Envuelves su mano en tu palma y abandonas el piso de Eduardo con la palabra "padre" resonando en las paredes de tu mente y con Rambo siguiéndote (y olfateándote) a tus pies.</p><p>- ¿Listo para descansar?</p><p>- Jamás he estado más preparado.</p><p>John asiente, se detiene frente a la puerta como si hubiese llegado a la tierra prometida, y la abre.</p><p>- Si me necesitas estaré desmayado en mi cama.</p><p>- Lo mismo.</p><p>John entra en su habitación y un segundo después oyes su cuerpo chocando contra el colchón. A través de la ventana puede verse la Luna y en esa dirección miran los ojos de Claudia cuando la acuestas en la cama.</p><p>- ¿Estas cansada?</p><p>- Sí.</p><p>- ¿Quieres dormir?</p><p>- Sí.</p><p>- ¿Quieres ver la Luna?</p><p>- Sí.</p><p>Una carcajada escapa de tu garganta. Te acuestas en la cama y posas la mejilla de la niña sobre tu pecho, en la dirección de la ventana.</p><p>- Buenas noches, Claudia...</p>',
      '[{"displayText": "siguiente capitulo", "nextPageId": "*"}]'
    );
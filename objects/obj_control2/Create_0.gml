// Inicializar chatterbox e setar variáveis

// Carregar arquivo
ChatterboxLoadFromFile("Cena2.yarn");

ChatterboxAddFunction("bg", background_set_index);      // Add função para mudar background
ChatterboxAddFunction("nextRoom", next_room);           // Add função para mudar de cena
ChatterboxAddFunction("personagem", characterOnScreen); // Add função para desenhar personagem

chatterbox = ChatterboxCreate("Cena2.yarn");       // Criar chatterbox
ChatterboxJump(chatterbox, "Start");               // Ir para o node "Start"
chatterbox_update();                               // Pegar node e texto atual

option_index = 0;                                  // Inicializar option index
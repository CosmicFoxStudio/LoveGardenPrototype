// Inicializar chatterbox e setar variáveis

// Carregar arquivo
ChatterboxLoadFromFile("node1_initial.yarn");

ChatterboxAddFunction("bg", background_set_index);      // Add função para mudar background
ChatterboxAddFunction("nextRoom", next_room);           // Add função para mudar de cena
ChatterboxAddFunction("personagem", characterOnScreen); // Add função para desenhar personagem
ChatterboxAddFunction("hidratacao", hidratacao);        // Add função que retorna hidratacao
ChatterboxAddFunction("nutricao", nutricao);            // Add função que retorna nutricao
ChatterboxAddFunction("parque", parque);                // Add função pra saber se vai pro parque
ChatterboxAddFunction("love", love);                    // Love ending
ChatterboxAddFunction("bad", bad);                      // Bad ending

chatterbox = ChatterboxCreate("node1_initial.yarn");       // Criar chatterbox
ChatterboxJump(chatterbox, "NodeStart");               // Ir para a node inicial
chatterbox_update();                               // Pegar node e texto atual

option_index = 0;                                  // Inicializar option index

// Lógica para o mouse
option_hovered = -1; 

# 🎵 Artistas Pop IA — Agente Text-to-SQL

Este projeto consiste em um Agente de Inteligência Artificial baseado em **Text-to-SQL**, que permite conversar em linguagem natural com um banco de dados SQLite contendo informações sobre artistas da música pop, seus álbuns e desempenho em paradas de sucesso (*charts*). O projeto utiliza o framework **DSPy** e o modelo local **Gemma 3 (4B)** gerenciado via **Ollama**.

---

## 🚀 Como Rodar o Projeto no Google Colab

Siga o passo a passo abaixo para configurar e executar a aplicação diretamente no seu navegador.

### 📌 Passo 1: Subir o Notebook para o Google Colab
1. Acesse o [Google Colab](https://colab.research.google.com/).
2. Clique na aba **Upload** (Fazer upload).
3. Selecione ou arraste o arquivo `Artistas_Pop_IA.ipynb` do seu computador.

> **Nota Importante:** Certifique-se de que o ambiente está configurado para usar GPU (uma **GPU T4** gratuita é suficiente). Você pode verificar isso indo no menu superior: *Runtime* (Ambiente de execução) > *Change runtime type* (Alterar tipo de ambiente de execução) e selecionando **T4 GPU**.

### ⚙️ Passo 2: Executar as Primeiras Seções
Comece a executar as células de código de cima para baixo (clicando no botão de **Play** ▶️ ou pressionando `Shift + Enter` em cada célula):
1. Execute a seção de **Instalação das dependências** (Ollama, dspy, ipywidgets).
2. Execute a seção que inicializa o servidor do Ollama e baixa o modelo `gemma3:4b`.

### 💾 Passo 3: Fazer o Upload do Banco de Dados
Ao chegar na **terceira seção de código** (verificação do banco de dados), o notebook identificará que o arquivo local ainda não existe no ambiente temporário do Colab.
1. Clique no botão **Play** ▶️ da célula.
2. Um botão escrito **"Escolher arquivos"** (ou *Choose Files*) aparecerá logo abaixo dela.
3. Clique nele e selecione o arquivo **`artistas-pop.db`** que está no seu computador.
4. Aguarde o upload terminar até ver a mensagem de confirmação: `✅ 'artistas-pop.db' carregado com sucesso!`.

### 🔄 Passo 4: Continuar a Execução (De Cima para Baixo)
Após o banco de dados estar conectado, continue executando as próximas células sequencialmente para:
* Conectar à estrutura do SQLite e ler as tabelas.
* Configurar o DSPy, as assinaturas e carregar os exemplos de treinamento.
* Criar a estrutura lógica do pipeline do agente (`ArtistaQA`).

### 📊 Passo 5: Testes Automatizados e Interface de Chat
* **Testes Automatizados:** O notebook passará por uma bateria de 12 perguntas de teste pré-definidas para demonstrar o poder da IA em gerar o SQL correto e trazer a resposta estruturada.
* **Interface Interativa:** Na última célula do notebook, após os testes, uma caixa de chat visual azul será gerada. 

Pronto! Agora é só digitar qualquer pergunta na caixa de texto (ex: *"Quais álbuns a Lady Gaga lançou?"*) e clicar em **Enviar** para interagir com a IA.

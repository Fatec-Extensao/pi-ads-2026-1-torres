# FATEC – ADS I

## Engenharia de Software II

### Diagrama de Atividades

08/09

**Integrantes:**

- Geovanna Rocha Martins Ciriaco
- Giulia Komatsu Gentil
- Isabela Erminia Vieira Teixeira
- Poliana da Silva Benedito
- Rafaela da Silva Cavalheiro
- Yara Torres de Souza

---

## Sumário

1. Estudo de caso
2. Requisitos funcionais
3. Requisitos não funcionais
4. Requisitos de segurança
5. Atores
6. User storie
7. Diagramas de casos de uso
8. Fluxos principais e alternativos
9. Diagramas de atividade
10. Considerações Finais
11. Referências

---

## 1. Estudo de caso

O sistema a ser desenvolvido deverá permitir a criação, aplicação e análise de pesquisas institucionais, garantindo anonimato dos participantes e organização das respostas por categorias de respondentes.

---

## 2. Requisitos funcionais

O sistema deverá permitir:

- Manter pesquisas
- Manter categorias de participantes
- Criar questionários por categoria
- Cadastrar perguntas e alternativas
- Gerar códigos anônimos de uso único
- Aplicar questionários com código anônimo e CAPTCHA
- Registrar respostas no banco de dados
- Impedir reutilização dos códigos anônimos
- Monitorar participação em tempo real
- Gerar relatórios estatísticos
- Acessar questionário
- Registrar respostas

---

## 3. Requisitos não-funcionais

O sistema deverá atender aos seguintes requisitos:

- **Usabilidade**
  - Interface web amigável
  - Layout responsivo
- **Segurança**
  - Códigos anônimos protegidos por hash no banco de dados
  - Validação de acesso
  - Proteção contra múltiplas respostas por código anônimo e validação CAPTCHA
- **Performance**
  - Sistema capaz de suportar múltiplos acessos simultâneos
- **Portabilidade**
  - Funcionamento em navegadores modernos

---

## 4. Requisitos de segurança

- Utilizar o protocolo HTTPS com certificado SSL/TLS para criptografar a comunicação entre navegador e servidor;
- Gerar códigos anônimos e de uso único para acesso aos questionários;
- O sistema deverá armazenar somente o hash dos códigos anônimos de acesso, sem guardar os códigos originais no banco de dados;
- Impedir a reutilização dos códigos anônimos após o envio das respostas;
- Validar o código anônimo e o CAPTCHA antes da liberação dos questionários;
- Proteger o sistema contra múltiplas respostas indevidas;
- Realizar backups periódicos do banco de dados para evitar perda de informações;
- Garantir a integridade dos arquivos e dados armazenados no sistema;
- Manter softwares e plugins atualizados para reduzir vulnerabilidades;
- Utilizar CAPTCHA para bloquear bots e tráfegos automatizados que possam comprometer o funcionamento do sistema;
- Proteger o domínio e os registros DNS contra acessos não autorizados;
- Executar verificações periódicas contra malwares;
- Garantir o anonimato dos participantes, sem registrar IPs ou metadados que permitam sua identificação;
- Utilizar senhas fortes e mecanismos de autenticação segura para os gestores da pesquisa.

### Auditoria

O sistema manterá registros automáticos de eventos para monitorar a integridade dos acessos aos questionários. Sempre que um código anônimo e um CAPTCHA forem validados, ou houver uma tentativa com código inválido, reutilizado ou CAPTCHA incorreto, o sistema registrará apenas a data, a hora e o tipo de evento (sucesso ou falha). Para preservar o anonimato do participante, os registros de auditoria não armazenarão endereço IP, dados do dispositivo nem qualquer informação que permita identificar o respondente.

### Autorização

O gestor da pesquisa possui acesso administrativo, protegido por login e senha, às interfaces de cadastro de questões, geração de códigos anônimos por categoria e visualização de resultados com gráficos e tabelas.

O participante acessa a interface inicial com um código anônimo de uso único e conclui a verificação CAPTCHA antes de abrir o questionário de sua categoria.

Por fim, o sistema executa processos internos como validação do código anônimo, verificação do CAPTCHA, direcionamento ao questionário da categoria e processamento dos dados.

### Confiabilidade

O sistema contará com uma estrutura de segurança voltada à proteção e à privacidade, utilizando HTTPS com certificado SSL/TLS para criptografar a comunicação entre navegador e servidor. Os códigos anônimos serão gerados por método criptograficamente seguro e somente seus hashes serão armazenados. Antes de liberar o questionário, o sistema validará o código e o CAPTCHA. Após o envio das respostas, o código será invalidado automaticamente. O sistema não registrará IPs nem metadados capazes de identificar o dispositivo do respondente, preservando o anonimato.

### Disponibilidade

O sistema será hospedado em uma plataforma web em nuvem, permitindo o acesso em qualquer computador mediante código anônimo e validação CAPTCHA. O sistema deverá suportar cerca de 150 acessos simultâneos sem comprometer seu desempenho e permanecer disponível 24 horas por dia até o término da pesquisa. Também serão realizados backups periódicos do banco de dados para evitar a perda de informações em caso de falhas técnicas.

### Autenticidade

O acesso dos participantes será controlado por códigos anônimos, individuais e de uso único, vinculados somente à categoria do questionário, sem associação com nome, CPF, e-mail ou outro dado pessoal. O CAPTCHA confirmará que o acesso não foi automatizado. Apenas gestores autorizados acessarão a área administrativa mediante login e senha. Depois do envio das respostas, o código anônimo será invalidado, reduzindo o risco de respostas duplicadas e preservando a integridade da coleta.

---

## 5. Atores

- Gestor da pesquisa
- Participante

---

## 6. User storie

| Atores | Requisitos | O que espera que aconteça? |
|---|---|---|
| Gestor da pesquisa | Manter pesquisas | Acesse a parte do site onde o gestor deve inserir, respectivamente, o título da pesquisa, o período de duração e as questões. |
| Gestor da pesquisa | Manter categorias de participantes | O gestor define categorias de participantes, permitindo organizar e direcionar questionários específicos para cada grupo. |
| Gestor da pesquisa | Criar questionários por categoria | Gera questionários por categoria, acessíveis com código anônimo de uso único e validação CAPTCHA. |
| Gestor da pesquisa | Cadastrar perguntas e alternativas | Permite o cadastro das perguntas e suas alternativas para que quando o aluno responda o questionário ele possa selecionar uma das opções. |
| Gestor da pesquisa | Gerar códigos anônimos de uso único | O gestor solicita a criação de lotes de códigos anônimos específicos por categoria. |
| Participante | Aplicar questionários com código e CAPTCHA | O participante informa o código recebido e resolve o CAPTCHA para acessar as perguntas da sua categoria. |
| Sistema | Registrar respostas no banco de dados | O sistema salva os dados de forma segura. |
| Sistema | Impedir reutilização dos códigos | O sistema invalida o código depois do envio das respostas. |
| Gestor da Pesquisa | Monitorar participação em tempo real | O gestor verá em tempo real a quantidade de pessoas que acessaram e concluíram a pesquisa. |
| Gestor da pesquisa | Gerar relatórios estatísticos | O sistema processa os dados coletados e apresenta gráficos ou tabelas com os resultados finais. |
| Participante | Acessar questionário | Ao acessar o questionário, o participante responderá as perguntas a ele designadas e as respostas que o serão salvas no banco de dados; |
| Participante | Solicitar novo código anônimo | O participante recebe instruções para contatar o gestor e obter outro código, sem quebrar o anonimato. |

---

## 7. Diagrama de casos de uso

### 7.1 Cadastro de perguntas e alternativas

![Diagrama de casos de uso: Cadastro de perguntas e alternativas](imagens/caso-uso-7-1-cadastro-perguntas.png)

### 7.2 Gerar códigos anônimos de uso único

![Diagrama de casos de uso: Gerar códigos anônimos de uso único](imagens/caso-uso-7-2-gerar-codigos.png)

### 7.3 Acessar questionário

![Diagrama de casos de uso: Acessar questionário](imagens/caso-uso-7-3-acessar-questionario.png)

### 7.4 Monitorar participação em tempo real

![Diagrama de casos de uso: Monitorar participação em tempo real](imagens/caso-uso-7-4-monitorar-participacao.png)

### 7.5 Criar relatórios estatísticos

![Diagrama de casos de uso: Criar relatórios estatísticos](imagens/caso-uso-7-5-relatorios-estatisticos.png)

### 7.6 Manter categoria

![Diagrama de casos de uso: Manter categoria](imagens/caso-uso-7-6-manter-categoria.png)

---

## 8. Fluxos principais e alternativos

### 8.1 Cadastro de perguntas e alternativas

#### Fluxo principal

1. O Gestor da pesquisa acessa a opção "Cadastrar Perguntas" no painel administrativo.
2. O Sistema carrega o formulário de cadastro com os campos de enunciado e tipo de resposta.
3. O Gestor digita a pergunta e escolhe a categoria à qual ela pertence.
4. O Gestor seleciona a opção "Adicionar Alternativa".
5. O Sistema exibe o campo para preenchimento da alternativa.
6. O Gestor digita o texto da alternativa.
7. O Gestor confirma a inclusão da pergunta e suas respectivas alternativas.
8. O Sistema valida se todos os campos obrigatórios estão preenchidos.
9. O Sistema salva os dados no banco de dados.
10. O Sistema exibe a mensagem "Pergunta cadastrada".
11. O Sistema retorna ao menu inicial.

#### Fluxo alternativo

1. O Sistema salva os dados no banco de dados.
2. O Sistema identifica que a pergunta está sem enunciado ou sem alternativas cadastradas.
3. O Sistema exibe a mensagem "Erro: Preencha o enunciado ou no cadastro da alternativa".
4. O Sistema retorna ao passo 3 do Fluxo Principal.

### 8.2 Gerar códigos anônimos de uso único

#### Fluxo principal

1. O gestor acessa a funcionalidade de geração de códigos anônimos.
2. O sistema solicita ou verifica a categoria vinculada ao código.
3. O sistema executa o caso de uso Cadastrar Categoria (caso a categoria ainda não esteja disponível).
4. O sistema gera um código anônimo, aleatório e de uso único.
5. O sistema verifica a unicidade e o formato do código gerado.
6. O sistema verifica se o código gerado atende aos critérios de segurança definidos.
7. O sistema disponibiliza o código válido ao participante sem registrar sua identidade.
8. O caso de uso é encerrado.

#### Fluxo alternativo 1 - Categoria não cadastrada

1. Durante a geração do código, o sistema identifica que a categoria não existe.
2. O sistema solicita o cadastro da categoria.
3. O participante informa os dados da nova categoria.
4. O sistema registra a categoria.
5. O fluxo retorna ao passo de geração do código.

#### Fluxo alternativo 2 – Código inválido ou duplicado

1. Durante a validação, o sistema identifica que o código não atende aos critérios estabelecidos ou já existe.
2. O sistema descarta o código gerado.
3. O sistema gera automaticamente um novo código.
4. O sistema realiza novamente a validação.
5. O fluxo retorna ao passo de validação até que um código válido seja obtido.

### 8.3 Acessar questionário

#### Fluxo principal

1. O Participante acessa a página inicial do sistema de pesquisas.
2. O Sistema solicita o código anônimo de acesso e apresenta o CAPTCHA.
3. O Participante insere o código recebido, resolve o CAPTCHA e confirma.
4. O Sistema valida o hash do código no banco de dados, verifica o CAPTCHA e identifica a categoria vinculada ao código.
5. O Sistema carrega e exibe as perguntas e alternativas vinculadas àquela categoria.
6. O Participante responde às perguntas selecionando as alternativas desejadas.
7. O Participante clica em "Enviar Respostas".
8. O Sistema invalida o código utilizado para que não seja reutilizado e encerra a sessão de resposta.
9. O Sistema salva as respostas de forma totalmente anônima no banco de dados e exibe a mensagem "Respostas enviadas com sucesso!".
10. O Sistema retorna à tela inicial.

#### Fluxo alternativo 1 - Código inválido ou já utilizado

- 4.1. O Sistema identifica que o código digitado não existe ou já foi utilizado.
- 4.2. O Sistema exibe a mensagem: "Erro: código inválido ou já utilizado".
- 4.3. O Sistema registra apenas a data, a hora e o tipo da tentativa malsucedida, sem armazenar IP ou dados do dispositivo.
- 4.4. O Sistema limpa o campo de texto e retorna ao passo 2 do Fluxo Principal.

#### Fluxo alternativo 2 - CAPTCHA inválido ou expirado

- 5.1. O Sistema identifica que o CAPTCHA não foi validado ou expirou.
- 5.2. O Sistema exibe a mensagem: "CAPTCHA inválido. Tente novamente".
- 5.3. O Sistema gera um novo desafio CAPTCHA e retorna ao passo 2 do Fluxo Principal.

### 8.4 Monitorar participação em tempo real

#### Fluxo principal

1. O gestor acessa a opção "Acompanhar participação" no painel administrativo.
2. O sistema consulta os dados de participação da pesquisa.
3. O sistema mostra em tempo real a quantidade de pessoas que acessaram e concluíram a pesquisa.
4. O sistema exibe os dados de participação em tempo real no painel.
5. O gestor acompanha a atualização dos dados enquanto a pesquisa estiver em andamento.

#### Fluxo alternativo – Falha na conexão com o banco de dados

- 2.1. No passo 2 do Fluxo Principal, o Sistema identifica que não foi possível consultar os dados de participação.
- 2.2. O Sistema exibe a mensagem: "Erro: não foi possível atualizar os dados de participação. Tente novamente mais tarde."
- O Gestor confirma a mensagem.
- O Sistema mantém o painel aberto e permite uma nova tentativa de atualização.

### 8.5 Gerar relatórios estatísticos

#### Fluxo principal

1. O Gestor da pesquisa acessa a opção "Relatórios Estatísticos" no menu administrativo.
2. O sistema carrega a lista com todas as pesquisas institucionais cadastradas.
3. O Gestor seleciona a pesquisa desejada.
4. O Gestor relaciona a opção "Gerar Relatório por Categoria".
5. O sistema realiza a busca das respostas no banco de dados de forma totalmente anônima.
6. O sistema valida se a pesquisa possui dados consolidados suficientes.
7. O sistema processa os dados coletados e calcula as estatísticas.
8. O sistema exibe o formulário de visualização com os gráficos e tabelas dos resultados.
9. O Gestor seleciona a opção "Exportar em PDF".
10. O sistema realiza o download do documento para o dispositivo do gestor.
11. O sistema exibe a mensagem "Relatório exportado com sucesso!".

#### Fluxo alternativo 1

- 6.2. Sistema exibe mensagem de "Não há dados para gerar esse relatório".
- 6.3. O Gestor relaciona a opção "Ok".
- 6.4. O sistema retorna ao passo 2 do Fluxo Principal.

#### Fluxo alternativo 2 - Falha de Conectividade com o Banco de Dados

- 5.2. O sistema identifica perda de conexão com o banco de dados e exibe mensagem "Erro: Sistema temporariamente indisponível". Tente novamente mais tarde".
- 5.3. O Gestor relaciona a opção "Ok".
- 5.4. Sistema retorna ao menu inicial (passo 1 do Fluxo Principal).

### 8.6 Manter categorias

#### Fluxo principal

1. O Sistema exibe as categorias cadastradas.
2. O Gestor seleciona a opção "Cadastrar Categoria".
3. O Sistema exibe o formulário de cadastro.
4. O Gestor informa os dados da nova categoria.
5. O Gestor confirma o cadastro.
6. O Sistema verifica os dados inseridos.
7. O Sistema identifica que os dados são válidos.
8. O Sistema salva a nova categoria.
9. O Sistema informa que a categoria foi cadastrada com sucesso.
10. O fluxo é encerrado.

#### Fluxo alternativo – categoria inválidos ou dados inválidos

A partir do passo 7:

1. O Sistema identifica que os dados informados são inválidos.
2. O sistema informa "Categoria não encontrada".
3. O sistema volta para tela inicial para o gestor inserir as informações novamente.
4. O Gestor corrige os dados apontado pelo sistema.
5. O sistema valida em banco de dados se os dados inseridos pelo gestor estão corretos.
6. O Sistema atualiza os dados no banco de dados com a nova categoria selecionada.
7. O fluxo é encerrado.

---

## 9. Diagramas de atividade

### 9.1 Cadastro de perguntas e alternativas

![Diagrama de atividades: Cadastro de perguntas e alternativas](imagens/atividade-9-1-cadastro-perguntas.png)

### 9.2 Gerar códigos anônimos de uso único

![Diagrama de atividades: Gerar códigos anônimos de uso único](imagens/atividade-9-2-gerar-codigos.png)

### 9.3 Acessar questionário

![Diagrama de atividades: Acessar questionário](imagens/atividade-9-3-acessar-questionario.png)

### 9.4 Monitorar participação em tempo real

![Diagrama de atividades: Monitorar participação em tempo real](imagens/atividade-9-4-monitorar-participacao.png)

### 9.5 Criar relatórios estatísticos

![Diagrama de atividades: Criar relatórios estatísticos](imagens/atividade-9-5-relatorios-estatisticos.png)

### 9.6 Manter categorias

![Diagrama de atividades: Manter categorias](imagens/atividade-9-6-manter-categorias.png)

---

## 10. Considerações finais

Com a finalização deste trabalho, o grupo conseguiu compreender e planejar os elementos necessários ao desenvolvimento de um sistema de pesquisas institucionais. O foco principal foi coletar respostas preservando o anonimato e reduzindo respostas duplicadas. A combinação de códigos anônimos de uso único com CAPTCHA permite controlar o acesso sem associar as respostas à identidade do participante: o código limita o envio a uma utilização e o CAPTCHA dificulta acessos automatizados.

Durante o projeto, quando paramos para definir os requisitos e os fluxos, ficou claro como a escolha das tecnologias web (como PHP, MySQL, HTML e JavaScript) se encaixa com a proposta do sistema. Mapear o comportamento do Gestor e do Participante nos diagramas deu um pouquinho de trabalho para ajustar a lógica, mas foi o que ajudou a gente a enxergar como o sistema vai funcionar, desde o banco de dados até a geração dos relatórios com os gráficos.

Por fim, o estudo de caso foi muito positivo para o nosso aprendizado em Engenharia de Software. Conseguimos entregar uma documentação completa, organizada dentro das normas da faculdade e com uma boa base para a futura parte de codificação. Para os próximos passos do projeto, o grupo pretende focar na melhoria das telas do sistema e em pesquisar mais sobre recursos de acessibilidade para os usuários.

---

## 11. Referências

FERNANDES, J. M.; MACHADO, R. J. **Requisitos em projetos de software e de sistemas de informação.** 1. ed. São Paulo: Novatec, 2017.

GUEDES, Gilleanes T. A. **UML 2 - Uma abordagem prática.** 3. ed. São Paulo: Novatec, 2018.

STALLINGS, William. **Segurança de Computadores: Princípios e Práticas.** 6. ed. São Paulo: Pearson Education do Brasil, 2018.

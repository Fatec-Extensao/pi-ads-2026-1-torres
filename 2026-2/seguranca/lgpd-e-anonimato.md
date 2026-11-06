# Diretrizes de Anonimato, Retenção e Exclusão de Dados em Conformidade com a LGPD

## 1. Proteção de Dados Pessoais Identificáveis (PII)

Com base nos princípios da Lei Geral de Proteção de Dados Pessoais (Lei nº 13.709/2018), o Sistema Web de Pesquisas Institucionais foi projetado para preservar o anonimato dos participantes e evitar a coleta de dados pessoais identificáveis (PII). Para isso, foram definidos mecanismos de proteção e anonimato, como códigos anônimos de uso único, armazenamento de hashes e ausência de registros de IP. A tabela a seguir tem como finalidade apresentar esses mecanismos e descrever como serão aplicados no sistema, visando garantir a privacidade, a segurança e a minimização dos dados coletados.

| Mecanismo de proteção | Como será aplicado no sistema? |
|---|---|
| Minimização de dados | O sistema não solicitará nome, CPF, e-mail, telefone ou endereço dos participantes. |
| Códigos anônimos | Cada participante utilizará um código individual de uso único, sem associação à sua identidade. |
| Proteção dos códigos | Somente os hashes dos códigos serão armazenados no banco de dados. |
| Anonimato das respostas | As respostas serão registradas sem associação direta com a identidade dos participantes. |
| Proteção de metadados | A aplicação não armazenará endereços IP ou informações de dispositivos que possam identificar os respondentes. |
| Controle de acesso | O sistema utilizará códigos anônimos e CAPTCHA para validar o acesso aos questionários. |
| Adequação à LGPD | A coleta será limitada às informações necessárias à pesquisa, observando os princípios de finalidade, necessidade e segurança. |

---

## 2. Política de Retenção e Exclusão dos Dados

### 2.1. Objetivo

Estabelecer critérios para o armazenamento, a retenção e a exclusão segura das informações utilizadas pelo Sistema Web de Pesquisas Institucionais, garantindo que os dados sejam mantidos somente pelo período necessário à realização das pesquisas e à elaboração de relatórios estatísticos.

A política considera os princípios da Lei Geral de Proteção de Dados Pessoais (LGPD — Lei nº 13.709/2018) e as boas práticas de segurança da informação, visando preservar a integridade, a confidencialidade e o anonimato das respostas coletadas.

| ID | Requisito |
|---|---|
| RS-01 | O sistema deverá armazenar as respostas anônimas durante a realização da pesquisa e por um período adicional definido pelo gestor, destinado à consolidação dos resultados e à geração de relatórios estatísticos. |
| RS-02 | Após o encerramento do prazo de retenção, as respostas armazenadas deverão ser eliminadas do banco de dados, respeitando eventuais necessidades justificadas de conservação. |
| RS-03 | O gestor poderá solicitar a exclusão antecipada de uma pesquisa. Para evitar perdas acidentais, os registros permanecerão em uma área de exclusão lógica, com acesso restrito, por até 30 dias antes da eliminação definitiva. |
| RS-04 | Os registros de auditoria relacionados ao acesso aos questionários, contendo apenas data, hora e tipo de evento, serão mantidos por até 6 meses e posteriormente eliminados, salvo necessidade justificada de conservação. |
| RS-05 | As cópias de segurança deverão seguir um ciclo de retenção e rotação de até 90 dias. Os dados excluídos do ambiente principal deverão ser eliminados dos backups ao término desse período. |
| RS-06 | As contas administrativas dos gestores inativas por mais de 12 meses deverão passar por revisão, podendo ser bloqueadas, desativadas ou excluídas após avaliação e notificação. |
| RS-07 | A exclusão definitiva deverá utilizar mecanismos técnicos adequados ao armazenamento, garantindo que os dados eliminados não possam ser recuperados de forma não autorizada. |
| RS-08 | As operações de exclusão deverão ser registradas em logs de auditoria, contendo data, hora e tipo de operação, permitindo verificar a execução dos procedimentos de descarte. |

### 2.2. Princípios de proteção e retenção

A política será orientada pelos seguintes princípios:

- **Finalidade:** utilizar as informações coletadas exclusivamente para a realização das pesquisas institucionais e a elaboração de relatórios estatísticos.
- **Necessidade:** manter somente os dados necessários ao cumprimento das finalidades estabelecidas, evitando o armazenamento desnecessário.
- **Retenção limitada:** definir períodos de conservação compatíveis com a duração das pesquisas e as necessidades de análise dos resultados.
- **Segurança:** proteger os dados armazenados contra acessos não autorizados, alterações indevidas, perdas e exclusões acidentais.
- **Descarte seguro:** eliminar as informações ao término do período de retenção, utilizando mecanismos que impeçam sua recuperação não autorizada.

### 2.3. Requisitos de retenção e exclusão

Os requisitos apresentados a seguir estabelecem as regras propostas para o armazenamento, a conservação e a eliminação das informações tratadas pelo sistema, considerando o encerramento das pesquisas, a geração de relatórios e a necessidade de descarte seguro.

### 2.4. Ciclo de vida e descarte dos dados

O ciclo de vida das informações no Sistema Web de Pesquisas Institucionais compreenderá as etapas de coleta, armazenamento, utilização, retenção e exclusão.

Durante a realização da pesquisa, as respostas serão armazenadas em banco de dados protegido e utilizadas para o acompanhamento da participação e a geração de resultados estatísticos.

Após o encerramento da pesquisa, os dados permanecerão disponíveis pelo período definido pelo gestor, permitindo a consolidação dos resultados e a exportação dos relatórios necessários.

Os códigos anônimos serão invalidados automaticamente após o envio das respostas, impedindo sua reutilização. Os hashes armazenados serão eliminados quando não forem mais necessários ao controle da pesquisa.

Ao término do prazo de retenção, o sistema deverá executar os procedimentos de exclusão estabelecidos, considerando também os registros de auditoria e as cópias de segurança.

O descarte deverá ser realizado de maneira controlada, utilizando mecanismos compatíveis com a infraestrutura de armazenamento e evitando a recuperação indevida das informações eliminadas.

### 2.5. Responsabilidades

**Gestor da pesquisa**

- Definir o período de duração e o prazo de retenção das pesquisas.
- Autorizar a exclusão de pesquisas encerradas ou desnecessárias.
- Acompanhar a consolidação dos resultados e a geração de relatórios estatísticos.
- Solicitar a exclusão antecipada quando necessário.

**Administração técnica do sistema**

- Implementar e executar as rotinas de retenção e exclusão.
- Gerenciar as cópias de segurança e seus períodos de conservação.
- Aplicar os procedimentos técnicos de descarte seguro.
- Controlar o acesso às informações armazenadas.
- Manter os registros necessários à auditoria das operações de exclusão.

As atividades de administração técnica correspondem às responsabilidades de manutenção e operação do sistema, sem representar necessariamente um novo ator nos casos de uso do projeto.

### 2.6. Alinhamento com normas e boas práticas

A política considera as seguintes referências:

- **LGPD — Lei nº 13.709/2018:** art. 6º (princípios do tratamento de dados pessoais), art. 12 (anonimização), art. 15 (término do tratamento), art. 16 (hipóteses de conservação) e art. 46 (segurança).
- **ISO/IEC 27001:2022 — Anexo A:** controle 8.10 (exclusão de informações), controle 8.13 (backup de informações) e controle 8.15 (registros de eventos).
- **NIST SP 800-88:** diretrizes para sanitização de mídias e descarte seguro de informações.

Essas referências orientam a definição de procedimentos destinados à proteção, à conservação e à eliminação segura dos dados tratados pelo sistema.

### 2.7. Considerações finais

A Política de Retenção e Exclusão dos Dados estabelece critérios para o gerenciamento das informações durante todo o seu ciclo de vida, desde o armazenamento das respostas até sua eliminação definitiva.

A definição de prazos de retenção, o controle das cópias de segurança e a execução de procedimentos de descarte contribuem para reduzir o armazenamento desnecessário e os riscos de exposição ou recuperação indevida das informações eliminadas.

Dessa forma, o Sistema Web de Pesquisas Institucionais incorpora medidas de segurança e proteção de dados ao seu planejamento, buscando assegurar que as informações sejam utilizadas somente pelo tempo necessário às finalidades previstas.

---

## 3. Aviso de Privacidade e Anonimato

A sua privacidade é uma prioridade para o Sistema Web de Pesquisas Institucionais.

Esta pesquisa tem como finalidade coletar respostas para análises e elaboração de relatórios estatísticos, preservando o anonimato dos participantes durante todo o processo.

A participação é anônima, não sendo necessário informar dados pessoais identificáveis, como nome, CPF, endereço, telefone ou e-mail.

O acesso ao questionário é realizado por meio de um código anônimo, individual e de uso único, sem associação com a identidade do respondente.

Para garantir a segurança e a integridade da pesquisa, o sistema utiliza mecanismos de validação do código de acesso e verificação CAPTCHA, evitando respostas duplicadas e preenchimentos automatizados.

Após o envio das respostas, o código utilizado será automaticamente invalidado, impedindo sua reutilização.

As respostas serão armazenadas em banco de dados protegido, sem associação com informações que permitam identificar individualmente os participantes.

O sistema foi projetado para não registrar endereços IP ou metadados identificáveis dos respondentes.

As informações coletadas serão utilizadas exclusivamente para os objetivos da pesquisa institucional, permitindo a geração de gráficos, tabelas e relatórios estatísticos.

Os dados serão mantidos conforme a política de retenção e exclusão estabelecida para o sistema, sendo eliminados quando não forem mais necessários às finalidades previstas.

Ao prosseguir, você declara ter lido e compreendido as informações deste Aviso de Privacidade e estar ciente da forma como as respostas serão coletadas, armazenadas e utilizadas.

- [ ] Li e estou ciente das informações apresentadas no Aviso de Privacidade.
- [ ] Não concordo em prosseguir com a participação na pesquisa, conforme as condições apresentadas neste Aviso de Privacidade.


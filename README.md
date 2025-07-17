

# Testes Automatizados com Robot Framework

Este repositório contém um conjunto de testes automatizados desenvolvidos com a ferramenta **Robot Framework** utilizando a biblioteca **SeleniumLibrary**, com foco na automação de testes da página [https://automationpratice.com.br/](https://automationpratice.com.br/).

## 📌 Objetivo

Automatizar cenários de teste relacionados à funcionalidade de **login** da aplicação, aplicando boas práticas, uso de variáveis, tags, argumentos e validações essenciais com suporte do Selenium.

## 🧪 Estrutura dos Testes

Os testes foram criados com base nos seguintes princípios:

- Escrita em **Robot Framework** com sintaxe clara e legível.
- Utilização da **biblioteca SeleniumLibrary** para interação com elementos web.
- Organização modular para facilitar manutenção e reuso.
- Relatórios detalhados de execução, com **screenshots automáticos dos testes que falharam**.
- Pastas e arquivos bem definidos:

```
.
├── teste.robot           # Arquivo principal com os casos de teste
├── teste2.robot          # Arquivo sevundário com outra abordagem para o 'Sleep'
├── report/
│   └── report.html       # Relatório gerado após a execução dos testes
```

## 🚀 Como Executar os Testes

### Pré-requisitos

- Python 3 instalado
- Instalação do Robot Framework:
  ```bash
  pip install robotframework
  ```
- Instalação do SeleniumLibrary:
  ```bash
  pip install robotframework-seleniumlibrary
  ```
- Um driver de navegador (ex: ChromeDriver) disponível no PATH do sistema

### Execução

Para rodar os testes, utilize o seguinte comando no terminal:

```bash
robot teste.robot
```

Após a execução, um relatório será gerado automaticamente dentro da pasta `report/`.

## 📸 Relatórios e Evidências

- Ao final de cada execução, um relatório em HTML será salvo em:

  ```
  report/report.html
  ```

- Esse relatório apresenta:

  - Status de execução dos testes (passou/falhou)
  - Descrição dos testes executados
  - **Screenshots automáticos** dos testes que falharam, para facilitar a análise de erros

## 📚 Conteúdo do Curso Abrangido

Durante o desenvolvimento dos testes, foram aplicados conhecimentos adquiridos no curso, incluindo:

- Estrutura básica e arquitetura de um teste no Robot Framework
- Organização por arquivos e reutilização de código
- Utilização de:
  - **Variáveis**
  - **Argumentos**
  - **Tags**
- Escrita e organização de **Keywords personalizadas**
- **Validações e Asserções**
- Boas práticas de escrita e modularização
- Comandos e funcionalidades essenciais do **SeleniumLibrary**

## 🧩 Exemplo de Teste

```robot
*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            https://automationpratice.com.br/
${BROWSER}        chrome

*** Test Cases ***
Login Válido
    [Tags]    login    positivo
    Open Browser    ${URL}    ${BROWSER}
    Input Text    id:username    usuario_teste
    Input Text    id:password    senha123
    Click Button    id:login
    Page Should Contain    Bem-vindo
    Capture Page Screenshot
    Close Browser

Login Inválido
    [Tags]    login    negativo
    Open Browser    ${URL}    ${BROWSER}
    Input Text    id:username    usuario_incorreto
    Input Text    id:password    senha_errada
    Click Button    id:login
    Page Should Contain    Credenciais inválidas
    Capture Page Screenshot
    Close Browser
```

## 🏁 Considerações Finais

Este projeto é uma base para construção e automação de testes de interfaces web com Robot Framework e Selenium. Ao mesmo tempo, utilizada como projeto autônomo de testes automatizados voltado para web. 

---


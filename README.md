# Modelo em LaTeX para trabalhos acadêmicos da UFJF

Este projeto apresenta um modelo no ecossistema **LaTeX** para elaboração de trabalhos acadêmicos, sobretudo Artigos, Trabalhos de Conclusão de Curso (TCCs), Dissertações de Mestrado e Teses de Doutorado vinculados à Universidade Federal de Juiz de Fora (UFJF).

## Licença

`Modelos LaTeX UFJF v2.0 GM`\
`Copyright 2024 Gabriel Malosto (ICE-UFJF)`

Este projeto é distribuído pela licença LaTeX Project Public License versão 1.3.\
Ela pode ser encontrada em <http://www.latex-project.org/lppl.txt>.

Este trabalho pode ser distribuído e/ou modificado sob as condições da licença LaTeX Project Public License, seja na versão 1.3 ou (a critério do autor) qualquer versão posterior.

O projeto tem estado de manutenção da LPPL 'maintained', isto é, mantido.\
O atual mantenedor é **Gabriel Malosto (ICE-UFJF)**.

## Atribuições

Este projeto foi desenvolvido com base nos [Modelos Canônicos](https://github.com/abntex/abntex2) do projeto abnTeX2.

Também se utilizam recursos desenvolvidos pelo projeto de [Modelo para Monografia](https://github.com/ufjf-dcc/monografiamodelo-ufjf) de Jairo Souza, que adapta as regras de formatação da UFJF para o LaTeX.

Por fim, as definições foram ajustadas conforme o [Manual de normalização e modelos de trabalhos acadêmicos](https://www2.ufjf.br/bibliotecagv/treinamentos/padronizacao-trabalhos-cientificos/) do Centro de Difusão do Conhecimento da UFJF.

## Requisitos

### Compilador

A fim de processar os arquivos do ecossistema LaTeX, é necessário instar uma distribuição desse.

#### Linux

Para o Linux, recomendamos a instalação do **TeX Live**, cuja documentação está disponível em <https://tug.org/texlive/>.

Algumas distribuições mantém pacotes de instalação do TeX Live. Você pode encontrar instruções para obtê-los em:

- **Fedora**: <https://docs.fedoraproject.org/en-US/neurofedora/latex/>, para o qual recomendamos `texlive-scheme-full`.
- **Debian**: <https://wiki.debian.org/TeXLive>, para o qual recomendamos `texlive-latex-full`.

#### Windows

Para o Windows, recomendamos a instalação do **MiKTeX**, cuja documentação está disponível em <https://miktex.org>.

Você pode obtê-lo pelo link <https://miktex.org/download>.

### Gerenciador de compilação

Recomendamos a instalação do **latexmk**, que facilita a compilação dos arquivos LaTeX.

#### Linux

Para o Linux, você pode instalar o `latexmk` via gerenciador de pacotes da sua distribuição.

- **Fedora**: `sudo dnf install latexmk`
- **Debian**: `sudo apt install latexmk`

#### Windows

Para o Windows, você pode instalar o `latexmk` via MiKTeX.

### Linter

Recomendamos a instalação do **ChkTeX**, que verifica a conformidade do código LaTeX com as normas da ABNT.

#### Linux

Para o Linux, você pode instalar o `chktex` via gerenciador de pacotes da sua distribuição.

- **Fedora**: `sudo dnf install chktex`
- **Debian**: `sudo apt install chktex`

#### Windows

Para o Windows, você pode instalar o `chktex` via MiKTeX.

### Editor

A fim de editar os arquivos, é preciso instalar um editor de texto e demais componentes LaTeX.

Recomendamos utilizar o editor de código **Visual Studio Code**, juntamente às extensões [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) de **James Yu** e [LaTeX Utilities](https://marketplace.visualstudio.com/items?itemName=tecosaur.latex-utilities) de **tecosaur**.

Estão configurados arquivos que facilitam a compilação e visualização dos documentos pelo Visual Studio Code.
Assim, você não deverá precisar executar comandos no terminal para compilar os arquivos.

## Utilização

Entre na pasta referente ao tipo de trabalho que você deseja elaborar.
Lá, você encontrará um arquivo principal chamado `cx_raiz.tex`, que deve ser compilado para gerar o documento final.

No terminal, você pode compilar o projeto rodando o seguinte comando:

```bash
latexmk -synctex=1 -interaction=nonstopmode -file-line-error -outdir=.build -f -pdf cx_raiz.tex
```

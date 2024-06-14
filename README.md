### Hack-Pish: Ferramenta de Phishing by Jeremy Djerry

---

Bem-vindo ao **Hack-Pish**, uma poderosa ferramenta de phishing desenvolvida por **Jeremy Djerry**. Com esta ferramenta, você pode criar páginas de phishing para várias plataformas populares, incluindo Facebook, Google, Instagram, Twitter, e muito mais. Este guia irá ajudá-lo a configurar e utilizar a ferramenta no Termux.

---

#### Recursos
- **Suporte a múltiplas plataformas**: Facebook, Google, Instagram, Twitter, Microsoft, Dropbox, LinkedIn, WordPress, e muitas outras.
- **Instalação fácil**: Script de configuração que instala todas as dependências necessárias.
- **Atualizações automáticas**: O script se atualiza automaticamente, garantindo que você sempre tenha a versão mais recente.

---

#### Instalação no Termux

Siga os passos abaixo para instalar e configurar o Hack-Pish no Termux.

1. **Atualize e instale o Git**:
   ```sh
   pkg update -y
   pkg upgrade -y
   pkg install git -y
   ```

2. **Clone o repositório Hack-Pish**:
   ```sh
   git clone https://github.com/Jeremydjerry/Hack-Pish.git
   ```

3. **Acesse o diretório Hack-Pish**:
   ```sh
   cd Hack-Pish
   ```

4. **Execute o script de configuração**:
   ```sh
   bash setup
   ```

---

#### Executando a Ferramenta

1. **Conceda permissões ao script principal**:
   ```sh
   chmod +x hack_pish.sh
   ```

2. **Inicie o Hack-Pish**:
   ```sh
   bash hack_pish.sh
   ```

---

#### Configuração Detalhada

O script de configuração (`setup`) instala todas as dependências necessárias para executar o Hack-Pish. Aqui está o que acontece quando você executa o script:

```sh
#!/bin/bash
echo ""
clear
echo ""
echo -e " \e[1;33m[\e[0m\e[1;77m~\e[0m\e[1;33m]\e[0m\e[1;32m \e[95m How To Install And Use This Tool Play Video \e[0m"
echo ""
echo -e " \e[91m[\e[92m*\e[91m]\e[1;93m Video Link :\e[0m\e[1;36m https://chateyes.be/gyG99GgbnP8  "
echo ""

read -p $'\e[1;40m\e[31m[\e[32m*\e[31m]\e[32m Video Watching Complete ? \e[1;91m (Y/N) : \e[0m' option
if [[ $option == *'N'* || $option == *'n'* ]]; then
    clear
    exit
fi

clear
echo -e " \e[1;33m[\e[0m\e[1;77m~\e[0m\e[1;33m]\e[0m\e[1;32m Installing The Hack-Pish Tool Please Wait....  \e[0m"
echo -e "\e[1;91m\e[0m\e[1;91m\e[0m\e[1;96m\e[0m\e[1;91m ----------------------------------------  \e[1;91m\e[0m----------------------------------------  \e[1;91m\e[0m"
echo -e "\e[1;96m\e[0m\e[1;77m\e[0m\e[1;96m\e[0m\e[1;91m  !!         DOWNLOAD REQUIREMENTS         !!\e[0m"
echo -e "\e[1;91m\e[0m\e[1;91m\e[0m\e[1;96m\e[0m\e[1;91m   ----------------------------------------- \e[1;91m\e[0m"
echo ""
echo -e "\e[1;33m[\e[0m\e[1;77m~\e[0m\e[1;33m]\e[0m\e[1;32m \e[95m Jeremy \e[0m"
echo ""
sleep 2
termux-setup-storage
apt-get update -y
apt-get upgrade -y
apt install php -y
apt install git -y
apt install wget -y
apt install curl -y
apt install unzip -y
clear
echo '      ---------------------------------
    !!    Installation Successfull     !!
      ---------------------------------   ' | lolcat
sleep 2
clear
echo
echo -e "\e[1m \e[36m[+] This is Last Step \e[m \e[21"
echo
echo -e "\e[92m[+] Open New type this command:\e[93m bash hack_pish.sh \e[m "
echo
```

---

#### Licença

Este projeto é licenciado sob os termos da licença MIT.

#### Autor

**Jeremy Djerry** - [GitHub](https://github.com/Jeremydjerry)

---

Esperamos que você aproveite esta ferramenta. Para quaisquer dúvidas ou suporte, sinta-se à vontade para abrir uma issue no repositório do GitHub.

---

---

**Nota**: Use esta ferramenta de forma responsável e ética. O phishing é uma atividade ilegal e esta ferramenta deve ser usada apenas para fins educacionais ou em ambientes controlados onde você tem permissão para realizar testes de segurança.

# Segurança no Desenvolvimento de Aplicações

Repositório de scripts Shell para análise e auditoria de logs no Linux, focado em segurança e monitoramento do sistema.

---

## 🚀 Objetivo

Extrair informações críticas de arquivos em `/var/log` utilizando comandos como `grep`, `awk` e `sed` para automação de tarefas de segurança.

## 📂 Logs Analisados

* **auth.log**: Autenticação, `sudo` e acessos.
* **syslog**: Mensagens gerais, erros de hardware e serviços.
* **dpkg.log**: Histórico de pacotes (instalação/remoção).
* **wtmp**: Registros de boot, shutdown e uptime.

## 🛠️ Scripts Principais

1.  **Auditoria de Acesso**: Falhas de login, usuários e uso de privilégios.
2.  **Saúde do Sistema**: Erros de kernel, hardware e status de serviços.
3.  **Gerenciamento**: Rastreio de modificações via `apt` e `dpkg`.
4.  **Eventos Críticos**: Monitoramento de `segfault` e falhas fatais.

## 💻 Como Executar

```bash
# Clone o repositório
git clone [https://github.com/MagNumGomes/logs-seguran-a-atv1.git](https://github.com/MagNumGomes/logs-seguran-a-atv1.git)

# Dê permissão de execução
chmod +x *.sh

# Execute o script desejado
sudo ./01_tentativas_senha_incorreta.sh
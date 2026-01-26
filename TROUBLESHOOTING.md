# 🔧 TROUBLESHOOTING - PROBLEMAS E SOLUÇÕES

---

## ❌ PROBLEMA: Página Completamente em Branco

### Sintomas:
- Site abre mas não mostra nada
- Tela branca sem mensagem de erro

### Solução Passo a Passo:
1. Pressione **F12** no navegador
2. Clique na aba **"Console"**
3. Procure mensagens em vermelho

### Se aparecer: "Firebase: Error (auth/invalid-api-key)"
**CAUSA**: Credenciais do Firebase incorretas

**SOLUÇÃO**:
1. Volte ao Firebase Console
2. Configurações do Projeto
3. Copie as credenciais novamente
4. Edite o index.html
5. Cole as credenciais corretas
6. Salve e faça commit:
```bash
git add index.html
git commit -m "Fix Firebase credentials"
git push
```
7. Aguarde 2 minutos e recarregue

---

## ❌ PROBLEMA: "Permission denied" ou "Missing or insufficient permissions"

### Sintomas:
- Sistema abre mas não carrega dados
- Erro ao tentar criar fornecedor/contrato/etc
- Console mostra: "FirebaseError: Missing or insufficient permissions"

### Solução:
1. Acesse Firebase Console
2. Clique em **Firestore Database**
3. Clique na aba **Regras**
4. Verifique se as regras estão assim:

```javascript
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    match /{document=**} {
      allow read, write: if true;
    }
  }
}
```

5. Se estiver diferente, cole o código acima
6. Clique em **"Publicar"**
7. Aguarde 30 segundos
8. Recarregue o site

---

## ❌ PROBLEMA: Git Pede Senha mas Não Aceita

### Sintomas:
- `git push` pede username e password
- Você digita sua senha do GitHub mas rejeita
- Erro: "Authentication failed"

### Causa:
GitHub não aceita mais senha comum por segurança

### Solução - Criar Personal Access Token:

1. **Acesse GitHub**:
   - Clique na sua foto (canto superior direito)
   - Settings

2. **Developer Settings**:
   - Role até o final do menu lateral
   - Clique em "Developer settings"

3. **Criar Token**:
   - Personal access tokens > Tokens (classic)
   - "Generate new token" > "Generate new token (classic)"

4. **Configurar Permissões**:
   - Note: "Sistema Combustível Token"
   - Expiration: 90 days (ou No expiration)
   - Marque: **repo** (todas as opções)
   - Role até o fim e clique "Generate token"

5. **Copiar Token**:
   - ⚠️ IMPORTANTE: Copie o token AGORA
   - Ele só aparece uma vez!
   - Guarde em local seguro

6. **Usar Token**:
   - Quando git pedir password, cole o TOKEN (não a senha)
   - Username: seu username do GitHub
   - Password: cole o token

---

## ❌ PROBLEMA: GitHub Pages Não Ativa

### Sintomas:
- Settings > Pages mostra "None"
- Não aparece opção "main" branch

### Solução:
1. Certifique-se que fez o `git push`
2. Recarregue a página Settings > Pages
3. Se ainda não aparecer:
   - Volte ao terminal
   - Execute: `git branch`
   - Se aparecer "master" ao invés de "main":
     ```bash
     git branch -M main
     git push -u origin main
     ```
4. Aguarde 1 minuto e tente novamente

---

## ❌ PROBLEMA: Script deploy.sh Não Funciona no Windows

### Sintomas:
- `bash: command not found`
- Erro ao executar deploy.sh

### Solução 1 - Instalar Git Bash:
1. Baixe Git: https://git-scm.com/download/win
2. Instale com configurações padrão
3. Abra **Git Bash** (não CMD)
4. Navegue até a pasta
5. Execute: `./deploy.sh`

### Solução 2 - Usar Comandos Manuais:
Use a Opção B do guia de instalação (comandos git um por um)

---

## ❌ PROBLEMA: Site Demora Muito para Carregar

### Sintomas:
- Tela de loading fica muito tempo
- Demora mais de 10 segundos

### Causas Possíveis:

**1. Primeira vez carregando**
- Solução: Normal, aguarde. Próximas vezes serão rápidas.

**2. Muitos dados no Firestore**
- Solução: Firebase é rápido, mas se tiver 10.000+ registros, considere paginação

**3. Internet lenta**
- Solução: Firebase CDN é global, mas conexão lenta afeta

---

## ❌ PROBLEMA: Dados Não Sincronizam Entre Dispositivos

### Sintomas:
- Adiciono fornecedor no PC, não aparece no celular
- Mudanças não refletem em tempo real

### Soluções:

**1. Recarregar página**
- Simples: Ctrl+R ou F5
- Pode haver delay de segundos

**2. Verificar Firestore**
- Firebase Console > Firestore > Dados
- Se os dados estão lá, recarregue o site

**3. Limpar Cache**
- Ctrl+Shift+Delete
- Limpar cache e recarregar

---

## ❌ PROBLEMA: Erro 404 no GitHub Pages

### Sintomas:
- URL abre mas mostra "404 - File not found"

### Soluções:

**1. Aguardar Deploy**
- Pages demora 1-3 minutos após ativar
- Aguarde e recarregue

**2. Verificar Arquivo**
- O arquivo DEVE se chamar `index.html`
- Se chamou de outro nome, renomeie:
```bash
mv sistema.html index.html
git add .
git commit -m "Rename to index.html"
git push
```

**3. Verificar Branch**
- Settings > Pages
- Certifique-se que está apontando para "main"

---

## ❌ PROBLEMA: Relatórios Não Imprimem Corretamente

### Sintomas:
- Ctrl+P não formata direito
- PDF fica cortado

### Solução:
1. Ao imprimir, configure:
   - Orientação: Retrato
   - Tamanho: A4
   - Margens: Padrão
   - Scale: 100%

2. Se continuar:
   - Use "Imprimir para PDF" primeiro
   - Depois imprima o PDF

---

## ❌ PROBLEMA: Sistema em Inglês

### Sintomas:
- Interface em inglês ao invés de português

### Solução:
Não deveria acontecer, mas se acontecer:
1. Verifique se baixou o index.html correto
2. Procure no código por `lang="pt-BR"`
3. Todos os textos devem estar em português no código

---

## ❌ PROBLEMA: Notificações (Toasts) Não Aparecem

### Sintomas:
- Crio fornecedor mas não vejo "sucesso"
- Ações silenciosas

### Solução:
1. F12 > Console
2. Veja se há erros
3. Provavelmente problema com Lucide Icons
4. Recarregue a página com Ctrl+Shift+R (força reload)

---

## 🆘 QUANDO NADA FUNCIONA

### Reset Completo:

```bash
# 1. Deletar pasta local
# 2. Clonar repositório novamente
git clone https://github.com/SEU_USUARIO/sistema-combustivel.git
cd sistema-combustivel

# 3. Reconfigurar Firebase
# Edite index.html com suas credenciais

# 4. Enviar novamente
git add .
git commit -m "Reconfigure Firebase"
git push
```

---

## 📞 AINDA COM PROBLEMAS?

### Ferramentas de Debug:

1. **Console do Navegador (F12)**
   - Mostra todos os erros JavaScript
   - Mostra erros de conexão Firebase

2. **Firebase Console > Uso**
   - Veja se há requisições sendo feitas
   - Se estiver zerado, problema é nas credenciais

3. **GitHub Actions**
   - Vá em Actions no GitHub
   - Veja se o deploy passou ou falhou

### Informações Úteis para Pedir Ajuda:

Quando pedir ajuda, forneça:
- [ ] Print do erro no Console (F12)
- [ ] URL do seu site
- [ ] URL do repositório GitHub
- [ ] Passo onde travou
- [ ] Sistema operacional (Windows/Mac/Linux)
- [ ] Navegador usado

---

## ✅ CHECKLIST DE VERIFICAÇÃO GERAL

Se está com problemas, verifique:

- [ ] Firebase está ativo e configurado
- [ ] Credenciais coladas corretamente no index.html
- [ ] Arquivo salvo após editar
- [ ] Git push executado com sucesso
- [ ] GitHub Pages ativado (Settings > Pages)
- [ ] Aguardou 2-3 minutos após ativar Pages
- [ ] Tentou em outro navegador
- [ ] Tentou limpar cache
- [ ] Verificou Console (F12) por erros

---

**90% dos problemas são resolvidos com:**
1. Verificar credenciais do Firebase
2. Verificar regras do Firestore
3. Aguardar alguns minutos
4. Limpar cache e recarregar

**Se seguiu todos os passos e ainda não funciona, provavelmente é um dos 3 acima!**

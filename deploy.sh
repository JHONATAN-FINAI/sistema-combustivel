#!/bin/bash

# ============================================
# Script de Inicialização - GitHub + Firebase
# ============================================

echo "🚀 Iniciando setup do Sistema de Gestão de Combustível..."
echo ""

# Verificar se Git está instalado
if ! command -v git &> /dev/null; then
    echo "❌ Git não encontrado. Instale o Git primeiro."
    exit 1
fi

echo "📝 Configurações necessárias:"
echo ""
echo "1️⃣  Edite o arquivo index.html e adicione suas credenciais do Firebase"
echo "    Procure por 'FIREBASE CONFIG' (linha ~656)"
echo ""
echo "2️⃣  Crie um repositório no GitHub:"
echo "    https://github.com/new"
echo ""
read -p "Digite a URL do seu repositório GitHub: " REPO_URL

if [ -z "$REPO_URL" ]; then
    echo "❌ URL não pode ser vazia!"
    exit 1
fi

echo ""
echo "🔧 Configurando Git..."

# Inicializar repo se necessário
if [ ! -d ".git" ]; then
    git init
    echo "✅ Repositório Git inicializado"
fi

# Adicionar arquivos
git add .
echo "✅ Arquivos adicionados"

# Commit
git commit -m "Initial commit - Sistema de Gestão de Combustível"
echo "✅ Commit criado"

# Adicionar remote
git remote add origin "$REPO_URL"
echo "✅ Remote adicionado"

# Push
echo "📤 Enviando para GitHub..."
git branch -M main
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Deploy concluído com sucesso!"
    echo ""
    echo "📋 Próximos passos:"
    echo ""
    echo "1. No GitHub, vá em: Settings > Pages"
    echo "2. Em 'Source', selecione: main branch"
    echo "3. Clique em 'Save'"
    echo ""
    echo "4. Configure o Firebase:"
    echo "   - Acesse: https://console.firebase.google.com/"
    echo "   - Ative Firestore Database"
    echo "   - Configure as regras (veja SETUP.md)"
    echo ""
    echo "5. Seu site estará em:"
    REPO_NAME=$(basename "$REPO_URL" .git)
    GITHUB_USER=$(echo "$REPO_URL" | sed -n 's/.*github.com[:/]\([^/]*\).*/\1/p')
    echo "   https://${GITHUB_USER}.github.io/${REPO_NAME}/"
    echo ""
else
    echo ""
    echo "❌ Erro no push. Verifique:"
    echo "   - Se o repositório existe no GitHub"
    echo "   - Se você tem permissão de escrita"
    echo "   - Se sua autenticação está configurada"
    echo ""
    echo "📖 Para ajuda com autenticação:"
    echo "   https://docs.github.com/pt/authentication"
fi

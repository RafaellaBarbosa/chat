# Chat App

Um aplicativo de chat desenvolvido em **Flutter** integrado com **Firebase**, permitindo autenticação de usuários, envio de mensagens em tempo real e notificações push.

## 🚀 Funcionalidades

- Autenticação de usuários (Login e Cadastro) com Firebase Auth  
- Upload de imagens de perfil com Firebase Storage  
- Persistência de dados de usuários no Firestore  
- Envio e recebimento de mensagens em tempo real via Cloud Firestore  
- Notificações push utilizando Firebase Messaging  
- Interface moderna utilizando Flutter com gerenciamento de estado via Provider  

## 🛠️ Tecnologias Utilizadas

- [Flutter](https://flutter.dev/)  
- [Dart](https://dart.dev/)  
- [Firebase Authentication](https://firebase.google.com/products/auth)  
- [Cloud Firestore](https://firebase.google.com/products/firestore)  
- [Firebase Storage](https://firebase.google.com/products/storage)  
- [Firebase Cloud Messaging](https://firebase.google.com/products/cloud-messaging)  
- Provider para gerenciamento de estado

## 📂 Estrutura do Projeto

```
lib/
│── components/        # Widgets reutilizáveis (AuthForm, Messages, etc.)
│── core/
│   ├── models/        # Modelos (ChatUser, ChatMessage, AuthFormData, etc.)
│   └── services/      # Serviços (Auth, Chat, Notifications)
│── pages/             # Telas principais (AuthPage, ChatPage, NotificationPage)
│── main.dart          # Arquivo principal do aplicativo
```

## ⚙️ Como Rodar o Projeto

1. Clone o repositório  
   ```bash
   git clone https://github.com/RafaellaBarbosa/chat.git
   cd chat-app
   ```

2. Instale as dependências  
   ```bash
   flutter pub get
   ```

3. Configure o Firebase no projeto  
   - Crie um projeto no [Firebase Console](https://console.firebase.google.com/)  
   - Adicione os apps Android/iOS/Web conforme necessário  
   - Baixe e configure os arquivos `google-services.json` (Android) e `GoogleService-Info.plist` (iOS)  
   - Configure o Firebase CLI se necessário  

4. Rode o aplicativo  
   ```bash
   flutter run
   ```

## 📸 Screenshots

(Adicione aqui prints das telas do app)

## 📌 Roadmap

- [ ] Adicionar suporte a mensagens com imagens  
- [ ] Melhorar sistema de notificações push  
- [ ] Criar testes unitários e widget tests  

## 👨‍💻 Autora

Desenvolvido por **Rafaella Barbosa Costa** 💙  
Entre em contato pelo [LinkedIn](https://www.linkedin.com/in/rafaella-costa/) ou e-mail: rafaellacsta@hotmail.com

# 📰 News Aggregator App

A full-stack **News Aggregator App** built using **Flutter + GetX** for the frontend and **Node.js + Express** for the backend. The app displays trending news, allows filtering by category, searching for keywords, and saving favorite articles locally.

---

## 📱 Features

- ✅ View the latest trending news  
- ✅ Filter news by category (e.g., Business, Technology, Sports)  
- ✅ Search for news articles by keyword  
- ✅ View full article details  
- ✅ Save and manage favorite news articles (stored locally)  
- ✅ Backend fetches news using NewsAPI.org and exposes a custom API  
- ✅ Responsive UI and smooth navigation using GetX

---

## 🧰 Tech Stack

### Frontend (Flutter)
- **Flutter** (Latest stable version)
- **Dart**
- **GetX** (State Management, Navigation, Dependency Injection)
- **SharedPreferences** (Local Storage for favorites)
- **Clean architecture** & modular folder structure

### Backend (Node.js)
- **Node.js**
- **Express**
- **Axios** (API calls to NewsAPI)
- **dotenv** (for environment variables)
- **CORS** enabled for Flutter backend integration

---

## 📁 Folder Structure

```

news\_app/
├── android/
├── ios/
├── lib/
│   ├── bindings/           # GetX bindings
│   ├── controllers/        # GetX controllers
│   ├── models/             # News data model
│   ├── pages/              # UI screens (home, detail, favorites)
│   ├── services/           # API service to fetch news
│   ├── widgets/            # Reusable UI components
│   └── main.dart           # App entry point
├── pubspec.yaml            # Dependencies
├── backend/                # Node.js backend
│   ├── .env                # API key & port config
│   ├── server.js           # Entry point
│   ├── routes/news.js      # Routes
│   └── controllers/newsController.js # News controller logic
├── README.md               # Project documentation

```

---

## 🔌 API Integration

### Backend (Express)
The backend provides a single endpoint:
```

GET /api/news/top-headlines?category=technology

````
It fetches top headlines by category from [NewsAPI.org](https://newsapi.org) using your secret API key in the `.env` file.

---

## 🚀 Getting Started

### 1. Clone the Repository
```bash
git clone https://github.com/JanviNerugu/news_app.git
cd news_app
````

### 2. Setup Flutter Frontend

```bash
flutter pub get
flutter run
```

### 3. Setup Node.js Backend

```bash
cd backend
npm install
```

Create a `.env` file inside the `backend/` folder:

```
NEWS_API_KEY=newsapi_key_here
PORT=5000
```

Start the backend server:

```bash
npm run dev
```

Make sure the Flutter app points to:

```
http://localhost:5000/api/news/top-headlines
```

---

## 📦 Build APK

```bash
flutter build apk --release
```

The release APK will be located at:

```
build/app/outputs/flutter-apk/app-release.apk
```

---



## 🧪 Evaluation Checklist

* ✅ Proper use of GetX for state and routing
* ✅ API integrated using a custom backend
* ✅ Functional category filter and search
* ✅ Local favorites with persistence
* ✅ Structured code with clean architecture
* ✅ Smooth and responsive UI
* ✅ Documentation and submission ready (GitHub + APK)

---

## 👤 Author

**Janvi Merugu**
BCA Student | Software Engineering Enthusiast



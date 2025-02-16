# LibraryApp 📚

A simple and intuitive **Library Management System** built with **Ruby on Rails**, enabling users to manage books efficiently. Users can **add, edit, delete, borrow, and return books**, keeping track of their borrowing history.

## Features ✨
- **CRUD operations** for books (Create, Read, Update, Delete).
- **Borrowing system** with status updates (Available/Borrowed).
- **Return functionality** to mark books as available again.
- **History tracking** for borrowed books.
- **Styled with TailwindCSS** for a modern UI.

## Tech Stack 🛠️
- **Backend:** Ruby on Rails
- **Frontend:** Embedded Ruby (ERB) with TailwindCSS

## Installation & Setup 🚀
### Prerequisites
Ensure you have the following installed:
- Ruby (>= 3.0)
- Rails (>= 7.0)
- PostgreSQL (if using a production database)

### Steps
1. **Clone the Repository**
   ```sh
   git clone https://github.com/Morg3an/LibraryApp.git
   cd LibraryApp
   ```
2. **Install Dependencies**
   ```sh
   bundle install
   ```
3. **Set Up Database**
   ```sh
   rails db:create db:migrate db:seed
   ```
4. **Start the Server**
   ```sh
   rails server
   ```
5. **Visit the App**
   Open `http://127.0.0.1:3000` in your browser.

## Usage 🏃‍♂️
### Adding a New Book
- Click **"Add a New Book"** and enter the details.
- Press **"Create Book"** to save it.

### Editing a Book
- Click the **"Edit"** button on a book.
- Modify the details and click **"Update Book"**.

### Deleting a Book
- Click **"Delete"** next to a book to remove it permanently.

### Borrowing a Book
- Select **"Borrow Book"**, and its status will update to **"Borrowed"**.

### Returning a Book
- Click **"Return Book"** to mark it as **"Available"** again.

## API Endpoints (if applicable) 🌐
| Method | Endpoint              | Description          |
|--------|----------------------|----------------------|
| GET    | `/books`             | List all books      |
| POST   | `/books`             | Create a new book   |
| GET    | `/books/:id`         | View a book's details |
| PATCH  | `/books/:id`         | Update book details |
| DELETE | `/books/:id`         | Delete a book       |
| PATCH  | `/borrowings/:id/return_book` | Return a borrowed book |

## Troubleshooting 🔧
If you encounter issues:
- Ensure the **database is migrated** (`rails db:migrate`).
- Restart the server after making changes (`rails server`).
- Check logs using `rails logs` or `rails console`.

## Contributing 🤝
Contributions are welcome! Please:
1. Fork the repository.
2. Create a feature branch.
3. Submit a pull request with detailed changes.

## License 📄
This project is licensed under the **MIT License**.

## Contact 📬
For inquiries, open an issue or reach out via [mulweyemorgan12@gmail.com](mailto:mulweyemorgan12@gmail.com).
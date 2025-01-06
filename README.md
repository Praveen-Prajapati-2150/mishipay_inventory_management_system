# Inventory Management System

A Django-based inventory management system with MongoDB integration for efficient product, supplier, and sales management.

## Tech Stack

- Backend: Django
- Frontend: HTML, CSS, JavaScript
- Database: MongoDB

## Features

- Product Management (CRUD operations)
- Supplier Management
- Stock Movement Tracking
- Sales Order Management
- Real-time Stock Level Monitoring

## Setup Instructions

1. Clone the repository
2. Install Python dependencies:
   ```
   cd backend
   pip install -r requirements.txt
   ```
3. Set up MongoDB:

   - Install MongoDB
   - Create a new database named 'inventory_db'

4. Configure environment variables:

   - Create a `.env` file in the backend directory
   - Add necessary environment variables (MongoDB connection string, etc.)

5. Run migrations:

   ```
   python manage.py makemigrations
   python manage.py migrate
   ```

6. Start the development server:
   ```
   python manage.py runserver
   ```

## Project Structure

- `backend/`: Django backend application
- `frontend/`: Frontend static files and templates
- `apps/`: Django applications for different modules

## API Endpoints

Documentation for API endpoints will be added here.

## Contributing

Instructions for contributing to the project will be added here.

## License

This project is licensed under the MIT License.

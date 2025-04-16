# Kinetiq Distribution - Application Setup Guide

This document provides a comprehensive guide to setting up and running the Kinetiq Distribution application. Please follow the instructions carefully to ensure a smooth setup process.

## Table of Contents

1.  [Database Setup (PostgreSQL/pgAdmin 4)](#database-setup-postgresqlpgadmin-4)
2.  [Frontend Setup](#frontend-setup)
3.  [Backend Setup](#backend-setup)
4.  [Running the Application](#running-the-application)
5.  [Important Notes](#important-notes)

---

## 1. Database Setup (PostgreSQL/pgAdmin 4)

This section outlines the steps to configure the database for the Kinetiq Distribution application using PostgreSQL and pgAdmin 4.

**Prerequisites:**

* PostgreSQL server installed and running.
* pgAdmin 4 installed and configured to connect to your PostgreSQL server.

**Steps:**

1.  **Create a New Database:**
    a. Open pgAdmin 4 and connect to your server.
    b. Right-click on "Databases" and select "Create" -> "Database...".
    c. Enter `KINETIQ-RDS-V2` as the "Database name" and click "Save".

2.  **Restore Database from SQL File:**
    a. Right-click on the newly created database `KINETIQ-RDS-V2`.
    b. Navigate to "Restore"
    c. In the "Restore" dialog:
        * In the "Filename" field, click the browse button (...) and select the SQL file located in the `SQL` folder of the project.
        * Click "Restore".

---

## 2. Frontend Setup

This section details the steps required to set up and run the frontend of the Kinetiq Distribution application.

**Prerequisites:**

* [Node.js](https://nodejs.org/) installed.
* [npm](https://www.npmjs.com/) installed.

**Steps:**

1.  **Navigate to the Frontend Directory:**
    ```bash
    cd frontend
    ```

2.  **Install Dependencies:**
    ```bash
    npm install
    ```
    ```bash
    npm install --force # use if there's a problem
    ```

3.  **Start the Development Server:**
    ```bash
    npm run dev
    ```

---

## 3. Backend Setup

This section outlines the steps to configure and run the backend API of the Kinetiq Distribution application.

**Prerequisites:**

* [Python](https://www.python.org/downloads/) installed.
* [pip](https://pypi.org/project/pip/) installed.

**Steps:**

1.  **Navigate to the Backend Directory:**
    ```bash
    cd backend
    ```

2.  **Create a Virtual Environment:**
    ```bash
    python -m venv venv
    ```

3.  **Activate the Virtual Environment:**
    * **On Windows:**
        ```bash
        venv\Scripts\activate
        ```
    * **On macOS/Linux:**
        ```bash
        source venv/bin/activate
        ```

4.  **Install Required Packages:**
    ```bash
    pip install -r requirements.txt
    ```

5.  **Run Management Commands:**
    ```bash
    python manage.py makemigrations
    ```
    ```bash
    python manage.py migrate
    ```

6.  **Start the Development Server:**
    ```bash
    python manage.py runserver
    ```

---

## 4. Running the Application

Once both the frontend and backend servers are running:

1.  Ensure both servers are running.
2.  Open your web browser and navigate to `http://localhost:5173`.
3.  The backend API should be accessible at `http://localhost:8000/`.

---

## 5. Important Notes

* Ensure your PostgreSQL server is running and accessible through pgAdmin 4.
* Make sure `venv` is activated before running any Python commands.
* Creating a virtual environment and installing requirements is done only once.
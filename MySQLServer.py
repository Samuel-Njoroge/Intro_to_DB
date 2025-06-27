import mysql.connector
from mysql.connector import Error
from dotenv import load_dotenv
import os


# Environment variables
load_dotenv()

def create_database():
    try:
        # Database Connection variables
        host = os.getenv("DB_HOST")
        user = os.getenv("DB_USER")
        password = os.getenv("DB_PASSWORD")

        # Connect to MySQL Server
        connection = mysql.connector.connect(
            host=host,
            user=user,
            password=password
        )

        if connection.is_connected():
            cursor = connection.cursor()
            cursor.execute("""CREATE DATABASE IF NOT EXISTS alx_book_store""")
            print("Database 'alx_book_store' created successfully!")

    except mysql.connector.Error as e:
        print(f"Error while connecting to MySQL Database: {e}")

    finally:
        if 'cursor' in locals() and cursor:
            cursor.close()
        if 'connection' in locals() and connection.is_connected():
            connection.close()


if __name__ == "__main__":
    create_database()

# PostgreSQL Setup Notes

## Objective

Set up PostgreSQL on macOS and establish a connection between Python and PostgreSQL using SQLAlchemy.

## Concepts Learned

### PostgreSQL

PostgreSQL is an open-source Relational Database Management System (RDBMS) used to store, manage, and query structured data.

### Database

A database is a collection of organized data stored electronically for efficient retrieval and analysis.

### SQL

Structured Query Language (SQL) is used to create, manage, and query data inside databases.

### SQLAlchemy

SQLAlchemy is a Python library that allows Python applications to communicate with SQL databases.

### psycopg2

psycopg2 is a PostgreSQL adapter that enables Python to connect and execute SQL commands on PostgreSQL databases.

## Commands Used

### Check PostgreSQL Version

```bash
psql --version
```

### Start PostgreSQL Service

```bash
brew services start postgresql@16
```

### Create Database

```bash
createdb querylab
```

### Connect to Database

```bash
psql querylab
```

### Test Query

```sql
SELECT 1;
```

### Exit PostgreSQL

```sql
\q
```

## Python Libraries Installed

```bash
pip install sqlalchemy psycopg2-binary
```

## Key Learning

PostgreSQL stores data, SQL queries data, and Python can interact with PostgreSQL using SQLAlchemy and psycopg2.

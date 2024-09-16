# PostgreSQL Database Setup with Docker

This guide explains how to initialize a PostgreSQL database with Docker, including basic table structure setup. PgAdmin is also included for database management.

## Prerequisites

- Docker installed
- `docker-compose.yml` and `init.sql` files in the same directory

## Services

1. **Postgres**: PostgreSQL database running on port 5432
2. **PgAdmin**: Web interface for PostgreSQL running on port 5050

## Getting Started

1. **Clone the Repository**
   Make sure both `docker-compose.yml` and `init.sql` are in the root directory of your project.

2. **Initialize the Database**
   Use the following command to start the services:

   ```bash
   docker-compose up -d

module.exports = {
  database: process.env.DB_NAME || "web",
  db:  process.env.DATABASE_URL || 'postgres://postgres:postgres@127.0.0.1:5432/',
  driver: 'postgres'
};


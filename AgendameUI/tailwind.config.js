/** @type {import('tailwindcss').Config} */
module.exports = {
  purge: {
    enabled: true,
    content: [
      './**/*.html',
      './**/*.razor',
    ]
  },
  theme: {
    extend: {},
  },
  plugins: [],
}

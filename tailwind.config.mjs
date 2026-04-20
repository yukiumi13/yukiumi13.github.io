/** @type {import('tailwindcss').Config} */
export default {
  content: ['./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}'],
  theme: {
    extend: {
      colors: {
        ust: {
          blue: 'rgb(0, 60, 113)',
          bluedark: 'rgb(0, 45, 85)',
          gold: 'rgb(187, 140, 31)',
          goldlight: 'rgb(212, 163, 41)',
          arxiv: 'rgb(179, 27, 27)',
        },
      },
      fontFamily: {
        sans: ['Mulish', 'Arial', 'system-ui', 'sans-serif'],
        serif: ['"Times New Roman"', 'Times', 'serif'],
      },
      letterSpacing: {
        tight2: '-0.01em',
      },
      maxWidth: {
        container: '1200px',
      },
    },
  },
  plugins: [],
};

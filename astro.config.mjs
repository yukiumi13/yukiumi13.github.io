import { defineConfig } from 'astro/config';
import tailwind from '@astrojs/tailwind';
import yaml from '@rollup/plugin-yaml';

export default defineConfig({
  site: 'https://yukiumi13.github.io',
  integrations: [tailwind({ applyBaseStyles: false })],
  build: {
    assets: '_astro',
  },
  vite: {
    plugins: [yaml()],
  },
});

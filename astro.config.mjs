import { defineConfig } from "astro/config";
import svelte from "@astrojs/svelte";
import tailwind from "@astrojs/tailwind";

export default defineConfig({
  integrations: [svelte(), tailwind()],
  site: "https://jaennova.dev",
  compressHTML: true,
  build: {
    assets: "assets",
  },
});

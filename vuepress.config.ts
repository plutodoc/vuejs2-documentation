import { defaultTheme } from '@vuepress/theme-default';
import { defineUserConfig } from 'vuepress';

export default defineUserConfig({
  base: '/',
  locales: {
    '/': {
      lang: 'zh-CN',
      title: 'Vue.js 2',
      description: '渐进式 JavaScript 框架',
    },
  },
  theme: defaultTheme({
    docsDir: 'docs',
    logo: '/images/logo.png',
    locales: {
      '/': {
        contributors: false,
        editLink: false,
        navbar: [
          {
            text: 'Documentation',
            link: '/documentation/guide/index.md',
          }
        ],
        sidebar: {
          '/documentation/': [
            {
              text: '1 基础',
              children: [
                '/documentation/guide/installation.md',
                '/documentation/guide/index.md',
              ],
            },
          ],
        },
      },
    },
  }),
});

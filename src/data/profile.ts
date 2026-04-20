// Build-time version string appended to CV link to bust browser cache on each deploy.
const buildVersion = new Date().toISOString().slice(0, 10).replace(/-/g, '');
export const cvHref = `/assets/liyang.pdf?v=${buildVersion}`;

export const profile = {
  name: 'Yang',
  nickname: 'Marino',
  surname: 'LI',
  title: 'PhD Student',
  affiliation: [
    'Department of Computer Science,',
    'Rutgers - New Brunswick,',
    'NJ, US.',
  ],
  email: 'yang.marino.li [at] gmail [dot] com',
  photo: {
    src: '/images/sunset.jpeg',
    caption: 'Shot while chasing the sunset on Maui Island, HI',
  },
  links: [
    { label: 'Curriculum Vitae', href: cvHref, icon: 'fa-solid fa-file-pdf' },
    { label: 'Google Scholar', href: 'https://scholar.google.com/citations?user=kqrSHAYAAAAJ&hl=zh-CN', icon: 'fa-solid fa-graduation-cap' },
    { label: 'GitHub', href: 'https://github.com/yukiumi13', icon: 'fa-brands fa-github' },
  ],
};

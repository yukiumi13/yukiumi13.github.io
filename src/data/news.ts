export interface NewsItem {
  date: string;
  html: string;
}

export const news: NewsItem[] = [
  {
    date: '2025.12',
    html: 'We announced <b>UltraShape 1.0</b>, an open-source Large 3D Shape Generation Model. Technical Report and Code are available on the <a class="text-ust-gold hover:text-ust-goldlight" href="https://pku-yuangroup.github.io/UltraShape-1.0/">project page</a>.',
  },
  {
    date: '2025.3',
    html: 'I started my research intern at Tencent LIGHTSPEED STUDIOS, working on Large 3D Models. Collaborations are highly welcomed.',
  },
  {
    date: '2024.12',
    html: 'I am looking for PhD position in 2025. Please <a class="text-ust-gold hover:text-ust-goldlight" href="mailto:liyangaftermath@gmail.com">contact me</a> if you are interested.',
  },
];

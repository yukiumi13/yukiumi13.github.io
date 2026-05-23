import raw from '../../data/experiences.yaml';

interface ExperienceRaw {
  institution: string;
  institution_url?: string;
  group?: string;
  role: string;
  location?: string;
  start: string;
  end: string;
  summary?: string;
  highlight?: string;
  image?: string;
  image_class?: string;
  logo_tile_class?: string;
  on_web?: boolean;
}

export interface Experience {
  institution: string;
  institutionUrl?: string;
  image: string;
  imageClass?: string;
  logoTileClass?: string;
  description: string;
  role: string;
  group?: string;
  location?: string;
  period: string;
  tag?: string;
  current: boolean;
}

const transform = (e: ExperienceRaw): Experience => ({
  institution: e.institution,
  institutionUrl: e.institution_url,
  image: e.image ?? '',
  imageClass: e.image_class,
  logoTileClass: e.logo_tile_class,
  description: e.summary ?? '',
  role: e.role,
  group: e.group,
  location: e.location,
  period: `${e.start} — ${e.end}`,
  tag: e.highlight,
  current: /present|current|ongoing/i.test(e.end),
});

export const experiences: Experience[] = (raw as ExperienceRaw[])
  .filter((e) => e.on_web !== false)
  .map(transform);

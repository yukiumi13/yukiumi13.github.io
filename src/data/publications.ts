import raw from '../../data/publications.yaml';

type AuthorRaw = string | { name: string; me?: boolean };

interface PublicationRaw {
  title: string;
  title_italic?: string;
  authors: AuthorRaw[];
  venue: string;
  year: number;
  type: 'preprint' | 'peer-reviewed';
  badge?: { text: string; kind: 'normal' | 'highlight' | 'arxiv' };
  teaser?: { src: string; kind: 'image' | 'video'; fit?: 'cover' | 'contain'; pos?: string };
  links?: { label: string; href: string; github?: string }[];
  cv_note?: string;
}

export type BadgeType = 'normal' | 'highlight' | 'arxiv' | 'none';

export interface Publication {
  title: string;
  titleItalic?: string;
  authorsHtml: string;
  venue: string;
  teaser?: { src: string; type: 'image' | 'video'; fit: 'cover' | 'contain'; pos?: string };
  badge?: { text: string; type: BadgeType };
  links: { label: string; href: string; githubStars?: string }[];
}

const renderAuthors = (authors: AuthorRaw[]): string =>
  authors
    .map((a) => {
      if (typeof a === 'string') return a;
      if (a.me) return `<span class="text-ust-goldlight">${a.name}</span>`;
      return a.name;
    })
    .join(', ');

const transform = (p: PublicationRaw): Publication => {
  // Strip title_italic prefix from title so they render side-by-side without duplication.
  let title = p.title;
  if (p.title_italic && title.startsWith(p.title_italic)) {
    title = title.slice(p.title_italic.length);
  }

  const venueSuffix = p.type === 'preprint' ? 'Preprint. ' : '';
  const venueText = `${venueSuffix}${p.venue}. ${p.year}`;

  return {
    title,
    titleItalic: p.title_italic,
    authorsHtml: renderAuthors(p.authors),
    venue: venueText,
    teaser: p.teaser
      ? { src: p.teaser.src, type: p.teaser.kind, fit: p.teaser.fit ?? 'cover', pos: p.teaser.pos }
      : undefined,
    badge: p.badge ? { text: p.badge.text, type: p.badge.kind } : undefined,
    links: (p.links ?? []).map((l) => ({
      label: l.label,
      href: l.href,
      githubStars: l.github,
    })),
  };
};

export const publications: Publication[] = (raw as PublicationRaw[]).map(transform);

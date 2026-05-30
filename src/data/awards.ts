import raw from '../../data/awards.yaml';

interface AwardRaw {
  name: string;
  issuer: string;
  year: number;
}

export interface Award {
  title: string;
  year: string;
}

export const awards: Award[] = (raw as AwardRaw[]).map((a) => ({
  title: `${a.name}, ${a.issuer}`,
  year: String(a.year),
}));

// All venues currently share the same reviewing years, so factor the years
// out instead of repeating them per row.
export const reviewerVenues: string[] = [
  'NeurIPS',
  'ICLR',
  'CVPR',
  'AISTATS',
  'ICML',
];

export const reviewerYears = '2025–2026';

export interface TeachingEntry {
  code: string;
  title: string;
  term: string;
}

export const teachingEntries: TeachingEntry[] = [
  { code: 'CS 439', title: 'Introduction to Data Science', term: 'Spring 2026' },
  { code: 'CS 205', title: 'Discrete Mathematics', term: 'Fall 2025' },
];

export const researchInterests: string[] = [
  'Generative 3D Vision',
  'Large Language Models for Vision',
];

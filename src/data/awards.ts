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

export interface ReviewerEntry {
  venue: string;
  years: string;
}

export const reviewerEntries: ReviewerEntry[] = [
  { venue: 'NeurIPS', years: "25', 26'" },
  { venue: 'ICLR', years: "25', 26'" },
  { venue: 'CVPR', years: "25', 26'" },
  { venue: 'AISTATS', years: "25', 26'" },
  { venue: 'ICML', years: "25', 26'" },
];

export const researchInterests: string[] = [
  'Generative 3D Vision',
  'Large Language Models for Vision',
];

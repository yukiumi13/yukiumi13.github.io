#import "@preview/basic-resume:0.2.3": *

// Functions

#let publication(title:"",
                tag:"", 
                authors:"", 
                venue:"", 
                year:"", 
                note:"",
                ) = {
grid(
  columns: (1fr, 5fr),
  align(center)[
    [#tag] \
  ],
  align(left)[
    #authors. #title. #emph(venue), #year. #note 
  ]
)
}

// Put your personal information here, replacing mine
#let name = "Yang(Marino) Li"
#let location = "Shenzhen, CN"
#let email = "yang.marino.li@gmail.com"
#let github = "github.com/yukiumi13"
#let linkedin = ""
#let phone = ""
#let personal-site = "yukiumi13.github.io"

#set page(
  footer:align(center, text(size:7pt,[Updated in Mar. 2025 | Copyright © Yang Li]))
)


#show: resume.with(
  author: name,
  // All the lines below are optional.
  // For example, if you want to to hide your phone number:
  // feel free to comment those lines out and they will not show.
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  phone: phone,
  personal-site: personal-site,
  accent-color: "#26428b",
  font: "SF",
  paper: "us-letter",
  author-position: center,
  personal-info-position: center,
)
/*
* Lines that start with == are formatted into section headings
* You can use the specific formatting functions if needed
* The following formatting functions are listed below
* #edu(dates: "", degree: "", gpa: "", institution: "", location: "")
* #work(company: "", dates: "", location: "", title: "")
* #project(dates: "", name: "", role: "", url: "")
* certificates(name: "", issuer: "", url: "", date: "")
* #extracurriculars(activity: "", dates: "")
* There are also the following generic functions that don't apply any formatting
* #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
* #generic-one-by-two(left: "", right: "")
*/
== Education

#edu(
  institution: "Hong Kong University of Science and Technology, Guangzhou",
  location: "Guangzhou, CN",
  dates: dates-helper(start-date: "Aug 2022", end-date: "Oct 2024"),
  degree: "Master of Philosophy, Artificial Intelligence",
)
- Supervisor: Dr. #link("https://yingcong.me")[Ying-Cong Chen], co-supervised by Dr. #link("https://danxurgb.net")[Dan Xu] (Clear Water Bay)
- Thesis: Neural 3D Reconstruction of Reflective Objects

#edu(
  institution: "Sun Yat-sen University",
  location: "Guangzhou, CN",
  dates: dates-helper(start-date: "Aug 2018", end-date: "Jun 2022"),
  degree: "Bachelor of Science, Mathematics and Applied Mathematics",
)
- Thesis: Sim2Real Segmentation for Autonomous Driving
== Work Experience

#work(
  title: "LightSpeed Studios, Tencent",
  location: "Shenzhen, CN",
  company: "Research Intern",
  dates: dates-helper(start-date: "Mar 2025", end-date: "Present"),
)
- Doing research on *Large Generative 3D Models*. We are developing a universal 3D asset generation framework designed to seamlessly integrate with the down-streaming game development pipeline.
- Mentor: Dr. #link("https://hzykent.github.io/")[Zeyu Hu] and Dr. #link("https://scholar.google.com.hk/citations?user=o41-Nj8AAAAJ&hl=zh-CN&oi=ao")[Runze Zhang]


#work(
  title: "Media Computing Group, Microsoft Research Lab - Asia, Microsoft",
  location: "Beijing, CN",
  company: "Research Intern",
  dates: dates-helper(start-date: "Jun 2024", end-date: "Feb 2025"),
)
- Doing research on *Neural 3D Representation from Unposed Videos*. We proposed some online generalizable 3DGS reconstruction methods for monocular videos, which transform videos to 3D Gaussians within seconds.
- Mentor: Dr. #link("https://www.microsoft.com/en-us/research/people/jinglwa/")[Jinglu Wang] and Dr. #link("https://pableeto.netlify.app/")[Xiao Li]

#work(
  title: "Optical Imaging Research Group, SmartMore",
  location: "Shenzhen, CN",
  company: "Research Intern",
  dates: dates-helper(start-date: "Jun 2022", end-date: "May 2024"),
)
- Doing research on *Neural 3D Reconstruction with Polarization Cues*. We developed a low-cost and accurate multi-view 3D reconstruction pipeline dedicated for reflective objects with physics information.
- Mentor: Dr. #link("https://sites.google.com/site/jiangbolu/")[Jiangbo Lu] and Dr. #link("https://scholar.google.com/citations?user=rW2bJ-UAAAAJ&hl=en")[Nianjuan Jiang]

#work(
  title: "BME AI Lab, SYSU",
  location: "Guangzhou, CN",
  company: "Research Assistant",
  dates: dates-helper(start-date: " Mar 2021", end-date: "Nov 2021"),
)
- Doing research on *Nasopharyngeal Carcinoma Segmentation in Magnetic Resonance Imaging*. We enhanced the accuracy of existing tumor region segmentation methods, facilitating precise radiotherapy treatments.
- Supervisor: Dr. Zhifan Gao

== Publications

=== Under Review

#publication(
  tag: "Arxiv '25",
  title: "UVRM: A Scalable 3D Reconstruction Model from Unposed Videos",
  authors: [Shiu-hong Kao, Xiao Li, Jinglu Wang, *Yang Li*, Chi-Keung Tang, Yu-Wing Tai, Yan Lu],
  venue: "arXiv:2501.09347",
  year: 2025,
  note: link("https://cse.hkust.edu.hk/~skao/src/uvrm_demo.mp4")[demo]
)

#publication(
  tag: "Arxiv '25",
  title: "StreamGS: Online Generalizable Gaussian Splatting Reconstruction for Unposed Image Streams",
  authors: [*Yang Li*, Jinglu Wang, Lei Chu, Xiao Li, Shiu-hong Kao, Ying-Cong Chen, Yan Lu],
  venue: "arXiv:2503.06235",
  year: 2025
)

#publication(
  tag: "Arxiv '24",
  title: "SEED-Story: Multimodal Long Story Generation with Large Language Model",
  authors: [Shuai Yang, Yuying Ge, *Yang Li*, Yukang Chen, Yixiao Ge, Ying Shan, Yingcong Chen],
  venue: "arXiv:2407.08683",
  year: 2024,
  note: link("https://github.com/TencentARC/SEED-Story")[code]
)

=== Peer-reviewed
#publication(
  tag: "ICLR '24",
  title: "GNeRP: Gaussian guided Neural Reconstruction of Reflective Objects with Noisy Polarization Priors",
  authors: [*Yang Li*, Ruizheng Wu, Jiyong Li, Yingcong Chen],
  venue: "International Conference on Learning Representations (ICLR)",
  year: 2024,
  note: link("https://yukiumi13.github.io/gnerp_page/")[project page]
)

#publication(
  tag: "AAAI '24",
  title: "Contrastive Continual Learning with Importance Sampling and Prototype-Instance Relation Distillation",
  authors: [Jiyong Li, Dilshod Azizov, *Yang Li*, Shangsong Liang],
  venue: "Proceedings of the AAAI Conference on Artificial Intelligence (AAAI)",
  year: 2024
)

#publication(
  tag: "Journal '24",
  title: "DCNet: Densely Connected Deep Convolutional Encoder Decoder Network for Nasopharyngeal Carcinoma Segmentation",
  authors: [*Yang Li*, Guanghui Han, Xiujian Liu],
  venue: "Sensors 2021, 21(23), 7877",
  year: 2021
)

== Awards

#awards(name: "Ph.D. Fellowship",
              date: 2025,
              issuer: "Rutgers University–New Brunswick",
              url: "",)

#awards(name: "Star of Tomorrow Award",
              date: 2025,
              issuer: "Microsoft Research Asia, Microsoft",
              url: "",)

#awards(name: "McGill & Mila Quebec Ph.D. Fellowship",
              date: 2024,
              issuer: "McGill University",
              url: "",)

#awards(name: "Postgraduate Scholarship",
              date: 2024,
              issuer: "HKUST, GZ",
              url: "",)

#awards(name: "Sun Yat-sen Excellent Student Scholarship",
              date: 2019,
              issuer: "Sun Yat-sen University",
              url: "",)


             

// #extracurriculars(
//   activity: "Science Olympiad Volunteering",
//   dates: "Sep 2023 --- Present"
// )
// - Volunteer and write tests for tournaments, including LA Regionals and SoCal State \@ Caltech

// #certificates(
//   name: "OSCP",
//   issuer: "Offensive Security",
//   // url: "",
//   date: "Oct 2024",
// )
== Skills
- *Programming Languages*: Python, PyTorch, TensorFlow, MATLAB


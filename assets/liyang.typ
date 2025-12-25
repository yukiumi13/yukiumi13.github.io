// #import "@preview/basic-resume:0.2.3": *
#import "./resume_template.typ": *
#import "@preview/fontawesome:0.6.0": *
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
#let email = "yang.marino.li@gmail.com"
#let github = "github.com/yukiumi13"
#let linkedin = ""
#let phone = ""
#let personal-site = "yangmarino.li"
#let google-scholar = "kqrSHAYAAAAJ"
#let location = ""
#let today = datetime.today()
#set page(
  footer: align(center, text(size: 7pt, [Updated in #today.display("[month repr:short] [year]") | Copyright © Yang Li]))
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
  google-scholar: google-scholar,
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
  institution: "Rutgers, The State University of New Jersey-New Brunswick",
  location: "New Brunswick, NJ, US",
  dates: dates-helper(start-date: "Aug 2025", end-date: "Present"),
  degree: "Doctor of Philosophy, Computer Science",
)
- Supervisor: Dr. #link("https://chengzhi-mao.github.io/")[Chengzhi Mao]
- Research Interests: Parallel and Spatial Reasoning for (Multimodal) Large Language Models

#edu(
  institution: "Hong Kong University of Science and Technology, Guangzhou",
  location: "Guangzhou, CN",
  dates: dates-helper(start-date: "Aug 2022", end-date: "Oct 2024"),
  degree: "Master of Philosophy, Artificial Intelligence",
)
- Supervisor: Dr. #link("https://yingcong.me")[Ying-Cong Chen], co-supervised by Dr. #link("https://danxurgb.net")[Dan Xu]
- Thesis: Neural 3D Reconstruction of Reflective Objects

#edu(
  institution: "Sun Yat-sen University",
  location: "Guangzhou, CN",
  dates: dates-helper(start-date: "Aug 2018", end-date: "Jun 2022"),
  degree: "Bachelor of Science, Mathematics and Applied Mathematics",
)
- Thesis: Sim2Real Segmentation for Autonomous Driving
== Research Experience
#work(
  title: "Department of Computer Science, Rutgers University",
  location: "New Brunswick, NJ, US",
  company: "Graduate Research Assistant",
  dates: dates-helper(start-date: "Aug 2025", end-date: "Present"),
)
- *Parallel Reasoning for Large Language Models:* Conducting research on parallel and interactive reasoning mechanisms. We are developing frameworks that enable LLMs to perform concurrent reasoning with mutual communication, aiming to enhance both inference efficiency and accuracy.
- Supervisor: Dr. #link("https://chengzhi-mao.github.io/")[Chengzhi Mao]

#work(
  title: "LightSpeed Studios, Tencent",
  location: "Shenzhen, CN",
  company: "Research Intern",
  dates: dates-helper(start-date: "Mar 2025", end-date: "Present"),
)
- *Large Generative 3D Models:* Developing a universal 3D asset generation framework, _UltraShape 3D 1.0_, designed to seamlessly integrate with downstream game development pipelines. *Technical report with full-stack open-source is released to public to facilitate community collaboration and innovation.*
- Mentor: Dr. #link("https://hzykent.github.io/")[Zeyu Hu] and Dr. #link("https://johann.wang/")[Yuhan Wang]

#work(
  title: "Media Computing Group, Microsoft Research Lab - Asia (MSRA)",
  location: "Beijing, CN",
  company: "Research Intern",
  dates: dates-helper(start-date: "Jun 2024", end-date: "Feb 2025"),
)
- *Neural 3D Representation from Unposed Videos:* Proposed an online generalizable 3D Gaussian Splatting (3DGS) reconstruction method for monocular videos. The system transforms video streams into 3D Gaussians within seconds. This work was accepted by *ICCV 2025*.
- Mentor: Dr. #link("https://www.microsoft.com/en-us/research/people/jinglwa/")[Jinglu Wang] and Dr. #link("https://pableeto.netlify.app/")[Xiao Li]

#work(
  title: "Optical Imaging Research Group, SmartMore",
  location: "Shenzhen, CN",
  company: "Research Intern",
  dates: dates-helper(start-date: "Jun 2022", end-date: "May 2024"),
)
- *Neural 3D Reconstruction with Polarization Cues:* Developed a low-cost and accurate multi-view 3D reconstruction pipeline specifically for reflective objects by leveraging physics-based polarization cues. This work was accepted by *ICLR 2024*. 
- Mentor: Dr. #link("https://sites.google.com/site/jiangbolu/")[Jiangbo Lu] and Dr. #link("https://scholar.google.com/citations?user=rW2bJ-UAAAAJ&hl=en")[Nianjuan Jiang]

#work(
  title: "BME AI Lab, Sun Yat-sen University",
  location: "Guangzhou, CN",
  company: "Research Assistant",
  dates: dates-helper(start-date: "Mar 2021", end-date: "Nov 2021"),
)
- *Medical Image Segmentation:* Enhanced the accuracy of nasopharyngeal carcinoma segmentation in MRI scans to facilitate precise radiotherapy treatments. The findings were published in the journal _Sensors_.
- Supervisor: Dr. Zhifan Gao

== Publications

=== Preprints

#publication(
  tag: "Tech Report '25",
  title: "UltraShape 1.0: High-Fidelity 3D Shape Generation via Scalable Geometric Refinement",
  authors: [Tanghui Jia, Dongyu Yan, Dehao Hao, *Yang Li*, Kaiyi Zhang, Xianyi He, Lanjiong Li, Jinnan Chen, Lutao Jiang, Qishen Yin, Long Quan, Ying-Cong Chen, Li Yuan],
  venue: "arXiv:2512.21185",
  year: 2025,
  note: link("https://pku-yuangroup.github.io/UltraShape-1.0/")[website]
)

#publication(
  tag: "Arxiv '25",
  title: "UVRM: A Scalable 3D Reconstruction Model from Unposed Videos",
  authors: [Shiu-hong Kao, Xiao Li, Jinglu Wang, *Yang Li*, Chi-Keung Tang, Yu-Wing Tai, Yan Lu],
  venue: "arXiv:2501.09347",
  year: 2025,
  note: link("https://cse.hkust.edu.hk/~skao/src/uvrm_demo.mp4")[demo]
)

=== Peer-reviewed
#publication(
  tag: "ICCV '25",
  title: "StreamGS: Online Generalizable Gaussian Splatting Reconstruction for Unposed Image Streams",
  authors: [*Yang Li*, Jinglu Wang, Lei Chu, Xiao Li, Shiu-hong Kao, Ying-Cong Chen, Yan Lu],
  venue: "International Conference on Computer Vision (ICCV)",
  year: 2025
)

#publication(
  tag: "ICCVW '25 Oral",
  title: "SEED-Story: Multimodal Long Story Generation with Large Language Model",
  authors: [Shuai Yang, Yuying Ge, *Yang Li*, Yukang Chen, Yixiao Ge, Ying Shan, Yingcong Chen],
  venue: [*Oral*, Workshop on Human-Interactive Generation and Editing, International Conference on Computer Vision (ICCV)],
  year: 2025,
  note: link("https://github.com/TencentARC/SEED-Story")[code]
)

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
  tag: "Sensors '24",
  title: "DCNet: Densely Connected Deep Convolutional Encoder Decoder Network for Nasopharyngeal Carcinoma Segmentation",
  authors: [*Yang Li*, Guanghui Han, Xiujian Liu],
  venue: "Sensors 2021, 21(23), 7877",
  year: 2021
)

== Awards
#awards(name: "Ph.D. Fellowship",
              date: 2025,
              issuer: "Department of Computer Science, Dartmouth College",
              url: "",)

#awards(name: "Ph.D. Fellowship",
              date: 2025,
              issuer: "Department of Computer Science, Rutgers University–New Brunswick",
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


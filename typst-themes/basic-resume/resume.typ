#import "base.typ": *

#let getProfile(resume, network) = {
  let profile = none

  if "profiles" in resume.basics and resume.basics.profiles != none {
    for p in resume.basics.profiles {
      if "network" in p and p.network == network {
        profile = p
        break
      }
    }
  }

  profile
}

// Set data
#let r = json(sys.inputs.at("data", default: "../../resumes/en/resume.json"))
#let lang = r.meta.language
#let name = r.basics.name
#let address = (r.basics.location.city, r.basics.location.region).filter(c => c != "").join(", ")
#let emailAddress = r.basics.email
#let phoneNumber = r.basics.phone
#let website = r.basics.at("url", default: none) //Set to none if you want to hide it
#let githubProfile = none
#let linkedinProfile = none
#if getProfile(r, "GitHub") != none {
  githubProfile = getProfile(r, "GitHub").url
}
#if getProfile(r, "LinkedIn") != none {
  linkedinProfile = getProfile(r, "LinkedIn").url
}

// Configure visibility of sections
#let show_work = true
#let show_projects = true
#let show_education = true
#let show_cert_skills_interests = true

#show: resume.with(
  author: name,
  // location: address,
  email: emailAddress,
  language: lang,
  ..if githubProfile != none {
    (github: githubProfile)
  },

  ..if linkedinProfile != none {
    (linkedin: linkedinProfile)
  },

  phone: phoneNumber,

  ..if website != none {
    (personal-site: website)
  },
)

#to-content(r.basics.summary)

// Section work experience
#if show_work and r.work != none and r.work.len() > 0 {
  work(work: r.work, lang: lang)
}

// Section projects
#if show_projects and r.projects != none and r.projects.len() > 0 {
  projects(projects: r.projects, lang: lang)
}

// Section education
#if show_education and r.education != none and r.education.len() > 0 {
  edu(education: r.education, lang: lang)
}

// Section certificates, skills and interests
#cumulativeCertSkillsInterests(
  certifications: r.at("certificates", default: none),
  skills: r.at("skills", default: none),
  languages: r.at("languages", default: none),
  interests: r.at("interests", default: none),
  lang: lang,
)

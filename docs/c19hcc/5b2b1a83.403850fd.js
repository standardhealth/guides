(window.webpackJsonp=window.webpackJsonp||[]).push([[7],{99:function(e,t,n){"use strict";n.r(t),n.d(t,"frontMatter",(function(){return l})),n.d(t,"rightToc",(function(){return o})),n.d(t,"default",(function(){return r}));var i=n(1),a=(n(0),n(151));const l={id:"c-19-adult-hosp",title:"COVID-19-like illness adult hospitalizations"},o=[{value:"EHR Data Domains and Data Elements",id:"ehr-data-domains-and-data-elements",children:[]},{value:"Cohort Definition",id:"cohort-definition",children:[{value:"Initial Event Cohort",id:"initial-event-cohort",children:[]},{value:"Inclusion Criteria",id:"inclusion-criteria",children:[]},{value:"Exclusion Criteria",id:"exclusion-criteria",children:[]}]}],b={rightToc:o};function r({components:e,...t}){return Object(a.b)("wrapper",Object(i.a)({},b,t,{components:e,mdxType:"MDXLayout"}),Object(a.b)("p",null,Object(a.b)("strong",{parentName:"p"},"Cohort name"),": COVID-19-like illness adult hospitalizations"),Object(a.b)("p",null,Object(a.b)("strong",{parentName:"p"},"Cohort identifier"),": c-19-adult-hosp"),Object(a.b)("p",null,Object(a.b)("strong",{parentName:"p"},"Cohort version"),": 0.1"),Object(a.b)("p",null,Object(a.b)("strong",{parentName:"p"},"Cohort description"),": Patients aged 18 years or older, hospitalized for COVID-19-like illness (confirmed or suspected) on or after January 1 2020, who have not been hospitalized for COVID-19 in the 6 months prior to the index hospitalization."),Object(a.b)("h2",{id:"ehr-data-domains-and-data-elements"},"EHR Data Domains and Data Elements"),Object(a.b)("ul",null,Object(a.b)("li",{parentName:"ul"},"Encounter: ",Object(a.b)("inlineCode",{parentName:"li"},"encounter_type"),", ",Object(a.b)("inlineCode",{parentName:"li"},"encounter_start_date"),", ",Object(a.b)("inlineCode",{parentName:"li"},"encounter_end_date")),Object(a.b)("li",{parentName:"ul"},"Condition: ",Object(a.b)("inlineCode",{parentName:"li"},"condition_code"),", ",Object(a.b)("inlineCode",{parentName:"li"},"condition_onset"),", ",Object(a.b)("inlineCode",{parentName:"li"},"condition_type")),Object(a.b)("li",{parentName:"ul"},"Laboratory test: ",Object(a.b)("inlineCode",{parentName:"li"},"code"),", ",Object(a.b)("inlineCode",{parentName:"li"},"result_date"),", ",Object(a.b)("inlineCode",{parentName:"li"},"result")),Object(a.b)("li",{parentName:"ul"},"Demographics: ",Object(a.b)("inlineCode",{parentName:"li"},"date_of_birth"))),Object(a.b)("h2",{id:"cohort-definition"},"Cohort Definition"),Object(a.b)("h3",{id:"initial-event-cohort"},"Initial Event Cohort"),Object(a.b)("p",null,"Individuals meeting ",Object(a.b)("em",{parentName:"p"},"any")," of the following:"),Object(a.b)("ul",null,Object(a.b)("li",{parentName:"ul"},Object(a.b)("strong",{parentName:"li"},"Hospitalization on or after Jan 1 2020 (",Object(a.b)("inlineCode",{parentName:"strong"},"c19_hosp"),")"),Object(a.b)("ul",{parentName:"li"},Object(a.b)("li",{parentName:"ul"},"At least 1 occurrence of an ",Object(a.b)("inlineCode",{parentName:"li"},"encounter")," meeting ",Object(a.b)("em",{parentName:"li"},"all")," of the following criteria:",Object(a.b)("ul",{parentName:"li"},Object(a.b)("li",{parentName:"ul"},Object(a.b)("inlineCode",{parentName:"li"},"encounter_type")," is ",Object(a.b)("inlineCode",{parentName:"li"},"inpatient")),Object(a.b)("li",{parentName:"ul"},Object(a.b)("inlineCode",{parentName:"li"},"start_date")," is on or after 2020-01-01"),Object(a.b)("li",{parentName:"ul"},"meeting ",Object(a.b)("em",{parentName:"li"},"any")," of the following:",Object(a.b)("ul",{parentName:"li"},Object(a.b)("li",{parentName:"ul"},Object(a.b)("inlineCode",{parentName:"li"},"end_date")," is not null"),Object(a.b)("li",{parentName:"ul"},Object(a.b)("inlineCode",{parentName:"li"},"encounter_status")," is ",Object(a.b)("inlineCode",{parentName:"li"},"completed"))))))))),Object(a.b)("p",null,"For individuals matching the Index Event (",Object(a.b)("inlineCode",{parentName:"p"},"c19_hosp"),"), include individuals matching ",Object(a.b)("em",{parentName:"p"},"any")," of the following criteria:"),Object(a.b)("ul",null,Object(a.b)("li",{parentName:"ul"},Object(a.b)("p",{parentName:"li"},Object(a.b)("strong",{parentName:"p"},"Confirmed or suspected COVID-19 (",Object(a.b)("inlineCode",{parentName:"strong"},"c19_like_illness"),")"),":"),Object(a.b)("ul",{parentName:"li"},Object(a.b)("li",{parentName:"ul"},Object(a.b)("p",{parentName:"li"},Object(a.b)("strong",{parentName:"p"},"Confirmed COVID-19 condition (",Object(a.b)("inlineCode",{parentName:"strong"},"c19_condition_confirmed"),")"),":"),Object(a.b)("ul",{parentName:"li"},Object(a.b)("li",{parentName:"ul"},"At least 1 occurrence of a ",Object(a.b)("inlineCode",{parentName:"li"},"condition")," meeting ",Object(a.b)("em",{parentName:"li"},"all")," of the following:",Object(a.b)("ul",{parentName:"li"},Object(a.b)("li",{parentName:"ul"},Object(a.b)("inlineCode",{parentName:"li"},"condition_code")," in ",Object(a.b)("a",Object(i.a)({parentName:"li"},{href:"https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1032.117/definition"}),"CH19HCC Confirmed COVID-19")),Object(a.b)("li",{parentName:"ul"},Object(a.b)("inlineCode",{parentName:"li"},"condition_onset")," between 21 days before index start date and 0 days after index end date"),Object(a.b)("li",{parentName:"ul"},Object(a.b)("inlineCode",{parentName:"li"},"condition_type")," is (",Object(a.b)("strong",{parentName:"li"},"chief complaint")," or ",Object(a.b)("strong",{parentName:"li"},"admitting diagnosis")," or ",Object(a.b)("strong",{parentName:"li"},"problem list entry")," or ",Object(a.b)("strong",{parentName:"li"},"encounter diagnosis")," or ",Object(a.b)("strong",{parentName:"li"},"final diagnosis")," or ",Object(a.b)("strong",{parentName:"li"},"discharge diagnosis"),")"))))),Object(a.b)("li",{parentName:"ul"},Object(a.b)("p",{parentName:"li"},Object(a.b)("strong",{parentName:"p"},"Laboratory-confirmed COVID-19 infection (",Object(a.b)("inlineCode",{parentName:"strong"},"c19_lab_confirmed"),")"),":"),Object(a.b)("ul",{parentName:"li"},Object(a.b)("li",{parentName:"ul"},"At least 1 occurrence of a ",Object(a.b)("inlineCode",{parentName:"li"},"laboratory_test")," meeting ",Object(a.b)("em",{parentName:"li"},"all")," of the following criteria:",Object(a.b)("ul",{parentName:"li"},Object(a.b)("li",{parentName:"ul"},Object(a.b)("inlineCode",{parentName:"li"},"code")," in ",Object(a.b)("a",Object(i.a)({parentName:"li"},{href:"https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1032.109/definition"}),"C19HCC SARSCoV2 Qualitative Detection Laboratory Test")," or in ",Object(a.b)("a",Object(i.a)({parentName:"li"},{href:"https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1032.113/definition"}),"C19HCC SARS-related Qualitative Detection Laboratory Test")),Object(a.b)("li",{parentName:"ul"},Object(a.b)("inlineCode",{parentName:"li"},"result_date")," between 21 days before index start date and 0 days after index end date"),Object(a.b)("li",{parentName:"ul"},Object(a.b)("inlineCode",{parentName:"li"},"result")," is ",Object(a.b)("strong",{parentName:"li"},"positive")," or ",Object(a.b)("strong",{parentName:"li"},"detected")," or ",Object(a.b)("strong",{parentName:"li"},"present")))))),Object(a.b)("li",{parentName:"ul"},Object(a.b)("p",{parentName:"li"},Object(a.b)("strong",{parentName:"p"},"Suspected COVID-19 or COVID-19-like condition (",Object(a.b)("inlineCode",{parentName:"strong"},"c19_condition_suspected"),")"),":"),Object(a.b)("ul",{parentName:"li"},Object(a.b)("li",{parentName:"ul"},"At least 1 occurrence of a ",Object(a.b)("inlineCode",{parentName:"li"},"condition")," meeting ",Object(a.b)("em",{parentName:"li"},"all")," of the following:",Object(a.b)("ul",{parentName:"li"},Object(a.b)("li",{parentName:"ul"},Object(a.b)("inlineCode",{parentName:"li"},"code")," in ",Object(a.b)("a",Object(i.a)({parentName:"li"},{href:"https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1032.116/definition"}),"C19HCC Suspected COVID19 Infection")),Object(a.b)("li",{parentName:"ul"},Object(a.b)("inlineCode",{parentName:"li"},"onset")," between 21 days before index start date and 0 days after index end date"),Object(a.b)("li",{parentName:"ul"},Object(a.b)("inlineCode",{parentName:"li"},"type")," is (",Object(a.b)("strong",{parentName:"li"},"chief complaint")," or ",Object(a.b)("strong",{parentName:"li"},"admitting diagnosis")," or ",Object(a.b)("strong",{parentName:"li"},"problem list entry")," or ",Object(a.b)("strong",{parentName:"li"},"encounter diagnosis")," or ",Object(a.b)("strong",{parentName:"li"},"final diagnosis")," or ",Object(a.b)("strong",{parentName:"li"},"discharge diagnosis"),")")))))))),Object(a.b)("blockquote",null,Object(a.b)("p",{parentName:"blockquote"},"Issues:"),Object(a.b)("ul",{parentName:"blockquote"},Object(a.b)("li",{parentName:"ul"},Object(a.b)("mark",null,"Consider inclusion of documented SARS-CoV2 exposures?")),Object(a.b)("li",{parentName:"ul"},Object(a.b)("mark",null,"Consider inclusion of documented presence/absence of COVID-19 signs and symptoms?")),Object(a.b)("li",{parentName:"ul"},Object(a.b)("mark",null,"Consider inclusion of documented COVID-19 status (confirmed, suspected)?")))),Object(a.b)("h3",{id:"inclusion-criteria"},"Inclusion Criteria"),Object(a.b)("p",null,"Patients meeting meeting ",Object(a.b)("em",{parentName:"p"},"all")," of the following:"),Object(a.b)("ul",null,Object(a.b)("li",{parentName:"ul"},Object(a.b)("strong",{parentName:"li"},"Age 18 at admission (",Object(a.b)("inlineCode",{parentName:"strong"},"18_at_hosp_adm"),")"),":",Object(a.b)("ul",{parentName:"li"},Object(a.b)("li",{parentName:"ul"},"index start date - ",Object(a.b)("inlineCode",{parentName:"li"},"date_of_birth")," >= 18")))),Object(a.b)("h3",{id:"exclusion-criteria"},"Exclusion Criteria"),Object(a.b)("p",null,"Patients meeting meeting ",Object(a.b)("em",{parentName:"p"},"all")," of the following:"),Object(a.b)("ul",null,Object(a.b)("li",{parentName:"ul"},Object(a.b)("strong",{parentName:"li"},"Previous COVID-19 hospitalization (",Object(a.b)("inlineCode",{parentName:"strong"},"c19_prev_hosp"),")"),":",Object(a.b)("ul",{parentName:"li"},Object(a.b)("li",{parentName:"ul"},"Exactly 0 occurrences of an ",Object(a.b)("inlineCode",{parentName:"li"},"encounter")," meeting ",Object(a.b)("em",{parentName:"li"},"all")," of the following:",Object(a.b)("ul",{parentName:"li"},Object(a.b)("li",{parentName:"ul"},Object(a.b)("inlineCode",{parentName:"li"},"encounter_type")," is ",Object(a.b)("inlineCode",{parentName:"li"},"inpatient")),Object(a.b)("li",{parentName:"ul"},Object(a.b)("inlineCode",{parentName:"li"},"start_date")," is <= 180 days before index start date"),Object(a.b)("li",{parentName:"ul"},"meeting ",Object(a.b)("em",{parentName:"li"},"any")," of the following:",Object(a.b)("ul",{parentName:"li"},Object(a.b)("li",{parentName:"ul"},Object(a.b)("strong",{parentName:"li"},"Confirmed COVID-19 condition (",Object(a.b)("inlineCode",{parentName:"strong"},"c19_condition_confirmed"),")")," where Index Event is ",Object(a.b)("inlineCode",{parentName:"li"},"c19_prev_hosp")),Object(a.b)("li",{parentName:"ul"},Object(a.b)("strong",{parentName:"li"},"Laboratory-confirmed COVID-19 infection (",Object(a.b)("inlineCode",{parentName:"strong"},"c19_lab_confirmed"),")")," where Index Event is ",Object(a.b)("inlineCode",{parentName:"li"},"c19_prev_hosp")),Object(a.b)("li",{parentName:"ul"},Object(a.b)("strong",{parentName:"li"},"Suspected COVID-19 or COVID-19-like condition (",Object(a.b)("inlineCode",{parentName:"strong"},"c19_condition_suspected"),")")," where Index Event is ",Object(a.b)("inlineCode",{parentName:"li"},"c19_prev_hosp"))))))))))}r.isMDXComponent=!0}}]);
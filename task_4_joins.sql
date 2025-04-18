select * from patients

select * from doctors

select * from treatments

select * from appointments

select * from medicalrecords

--joins--

select * from patients as p
full join doctors as d
on p.patientid=d.doctorid

select * from treatments as t
inner join appointments as a
on t.treatmentid=a.appointmentid

select * from appointments as a 
right join medicalrecords as mr
on a.appointmentid=mr.recordid

select * from doctors as d 
left join medicalrecords as mr
on d.doctorid=mr.recordid

--by using where clause--

select * from patients as p
full join doctors as d
on p.patientid=d.doctorid
where p.gender='Male'

select * from treatments as t
inner join appointments as a
on t.treatmentid=a.appointmentid
where t.followuprequired='true'

select * from appointments as a 
right join medicalrecords as mr
on a.appointmentid=mr.recordid
where a.appointmentid >20

select * from doctors as d 
left join medicalrecords as mr
on d.doctorid=mr.recordid
where d.yearsofexperience >10

select * from doctors as d 
left join medicalrecords as mr
on d.doctorid=mr.recordid
where d.yearsofexperience >30

--multi joins--
select * from doctors as d
inner join patients as p 
on d.doctorid=p.patientid
full join treatments as t 
on p.patientid=t.treatmentid

select * from patients as p 
left join medicalrecords as mr
on p.patientid=mr.recordid
right join doctors as d
on mr.recordid=d.doctorid

select * from patients as p 
left join doctors as d
on p.patientid=d.doctorid
right join treatments as t
on d.doctorid=t.treatmentid

select * from doctors as d
full join medicalrecords as mr
on d.doctorid=mr.recordid
left join patients as p
on mr.recordid=p.patientid



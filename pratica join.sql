--exercicio 1
SELECT users.id, users.name, cities.name
FROM users JOIN cities ON users."cityId" = cities.id
WHERE cities.name = "Rio de Janeiro";
--exercicio 2
SELECT testimonials.id, writer.name, recipient.name, testimonials.message
FROM testimonials 
JOIN users AS writer ON "writerId"=writer.id
JOIN users AS recipient ON "recipientId"=recipient.id;
--exercicio 3
SELECT users.id, users.name, courses.name AS course, schools.name AS school, educations."endDate"
FROM users JOIN educations ON users.id=educations."userId"
JOIN courses ON educations."courseId"=courses.id
JOIN schools ON educations."schoolId"=schools.id
WHERE users.id=30 AND educations.status = 'finished';
--exercicio 4
SELECT users.id, 
users.name, 
roles.name AS "role", 
companies.name AS company,
experiences."startDate"
FROM experiences
JOIN users ON experiences."userId" = users.id
JOIN roles ON experiences."roleId" = roles.id
JOIN companies ON experiences."companyId"=companies.id
WHERE users.id = 50 AND experiences."endDate" IS NULL;
--desafio
SELECT schools.id,
schools.name AS school,
courses.name AS course,
companies.name AS company,
roles.name AS "role"
FROM schools JOIN educations ON schools.id = educations."schoolId"
JOIN courses ON courses.id = educations."courseId"
JOIN applicants ON educations."userId" = applicants."userId"
JOIN jobs ON applicants."jobId"=jobs.id
JOIN companies ON jobs."companyId"=companies.id
JOIN roles ON jobs."roleId"=roles.id
WHERE companies.id = 10 AND jobs.active = TRUE;

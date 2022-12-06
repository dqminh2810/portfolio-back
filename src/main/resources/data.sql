-- SKILL TYPE
INSERT INTO skill_type (id, name) VALUES
                                   (nextval('skill_type_seq'), 'Programming languages'),
                                   (nextval('skill_type_seq'), 'Web framework'),
                                   (nextval('skill_type_seq'), 'Database'),
                                   (nextval('skill_type_seq'), 'Machine learning'),
                                   (nextval('skill_type_seq'), 'DevOps'),
                                   (nextval('skill_type_seq'), 'Teamwork - project environment'),
                                   (nextval('skill_type_seq'), 'Others');
-- SKILL
INSERT INTO skill (id, name, type_id) VALUES
--                                   Programming languages
                                    (nextval('skill_seq'), 'Java', (SELECT st.id FROM skill_type AS st WHERE st.name='Programming languages')),
                                    (nextval('skill_seq'), 'JS', (SELECT st.id FROM skill_type AS st WHERE st.name='Programming languages')),
                                    (nextval('skill_seq'), 'Python', (SELECT st.id FROM skill_type AS st WHERE st.name='Programming languages')),
                                    (nextval('skill_seq'), 'C/C++/C#', (SELECT st.id FROM skill_type AS st WHERE st.name='Programming languages')),
                                    (nextval('skill_seq'), 'PHP', (SELECT st.id FROM skill_type AS st WHERE st.name='Programming languages')),
--                                   Web framework
                                    (nextval('skill_seq'), 'VueJS', (SELECT st.id FROM skill_type AS st WHERE st.name='Web framework')),
                                    (nextval('skill_seq'), 'Angular', (SELECT st.id FROM skill_type AS st WHERE st.name='Web framework')),
                                    (nextval('skill_seq'), 'J2EE', (SELECT st.id FROM skill_type AS st WHERE st.name='Web framework')),
                                    (nextval('skill_seq'), 'Spring Boot', (SELECT st.id FROM skill_type AS st WHERE st.name='Web framework')),
                                    (nextval('skill_seq'), 'NodeJS', (SELECT st.id FROM skill_type AS st WHERE st.name='Web framework')),
                                    (nextval('skill_seq'), 'Laravel', (SELECT st.id FROM skill_type AS st WHERE st.name='Web framework')),
--                                  Database
                                    (nextval('skill_seq'), 'PostgreSQL', (SELECT st.id FROM skill_type AS st WHERE st.name='Database')),
                                    (nextval('skill_seq'), 'MongoDB', (SELECT st.id FROM skill_type AS st WHERE st.name='Database')),
--                                  Teamwork - project environment
                                    (nextval('skill_seq'), 'Agile', (SELECT st.id FROM skill_type AS st WHERE st.name='Teamwork - project environment')),
                                    (nextval('skill_seq'), 'Google Colab', (SELECT st.id FROM skill_type AS st WHERE st.name='Teamwork - project environment')),
                                    (nextval('skill_seq'), 'Git', (SELECT st.id FROM skill_type AS st WHERE st.name='Teamwork - project environment')),
                                    (nextval('skill_seq'), 'Kanban', (SELECT st.id FROM skill_type AS st WHERE st.name='Teamwork - project environment')),

--                                  Machine learning
                                    (nextval('skill_seq'), 'CNN', (SELECT st.id FROM skill_type AS st WHERE st.name='Machine learning')),
                                    (nextval('skill_seq'), 'Linear regression', (SELECT st.id FROM skill_type AS st WHERE st.name='Machine learning')),
                                    (nextval('skill_seq'), 'SVM', (SELECT st.id FROM skill_type AS st WHERE st.name='Machine learning')),
                                    (nextval('skill_seq'), 'Logistic regression', (SELECT st.id FROM skill_type AS st WHERE st.name='Machine learning')),
                                    (nextval('skill_seq'), 'Neural network', (SELECT st.id FROM skill_type AS st WHERE st.name='Machine learning')),

--                                  Others
                                    (nextval('skill_seq'), 'Dialogflow', (SELECT st.id FROM skill_type AS st WHERE st.name='Others')),
                                    (nextval('skill_seq'), 'Firebase', (SELECT st.id FROM skill_type AS st WHERE st.name='Others'));

-- PROJECT TYPE
INSERT INTO project_type (id, name) VALUES
                                    (nextval('project_type_seq'), 'internship'),
                                    (nextval('project_type_seq'), 'school'),
                                    (nextval('project_type_seq'), 'job');

-- PROJECT
INSERT INTO project (id, description, establishment, name, from_date, to_date, type_id) VALUES
    (
        nextval('project_seq'),
        'Design and development of DNIIT website using CMS Drupal 8',
        'DNIIT Institute',
        'Web development internship',
        'July 2017',
        'September 2017',
        (SELECT pt.id FROM project_type AS pt WHERE pt.name='internship')
    );
INSERT INTO project_technologies (project_id, technologies) VALUES ((SELECT currval('project_seq')), 'Drupal CMS');

INSERT INTO project (id, description, establishment, name, from_date, to_date, type_id) VALUES
    (
        nextval('project_seq'),
        '-Development of IDE web based integrated with ML and mobile platform for classification task in food industry using NIR measurement ' ||
        '-IDE main functionalities : Importing & Exporting data; Data analysis; ML model creation and training; ML model management ' ||
        '-Mobile app main functionalities : Performing NIR measurement remotely via BLE; Performing inference task based on IDE trained models online/offline',
        'Danang International Institute of Technology',
        'Fullstack internship',
        'March 2022',
        'August 2022',
        (SELECT pt.id FROM project_type AS pt WHERE pt.name='internship')
    );
INSERT INTO project_technologies (project_id, technologies) VALUES
                                                                ((SELECT currval('project_seq')), 'Vue'),
                                                                ((SELECT currval('project_seq')), 'Angular'),
                                                                ((SELECT currval('project_seq')), 'React Native'),
                                                                ((SELECT currval('project_seq')), 'Android'),
                                                                ((SELECT currval('project_seq')), 'Express'),
                                                                ((SELECT currval('project_seq')), 'Flask'),
                                                                ((SELECT currval('project_seq')), 'Sckit-learn'),
                                                                ((SELECT currval('project_seq')), 'ONNX'),
                                                                ((SELECT currval('project_seq')), 'Docker'),
                                                                ((SELECT currval('project_seq')), 'Gitlab');

INSERT INTO project (id, description, establishment, name, from_date, to_date, type_id) VALUES
    (
        nextval('project_seq'),
        '-Development of cross platform mobile application allowing to visualize the location of visitors in real time on the map and predict the visitors travel route after one hour using Machine Learning based on their route history and their preferences.',
        'Polytech Nice Sophia',
        'Polympic project',
        'January 2020',
        'February 2020',
        (SELECT pt.id FROM project_type AS pt WHERE pt.name='school')
    );
INSERT INTO project_technologies (project_id, technologies) VALUES
                                                                ((SELECT currval('project_seq')), 'Flutter'),
                                                                ((SELECT currval('project_seq')), 'Tensorflow'),
                                                                ((SELECT currval('project_seq')), 'Express'),
                                                                ((SELECT currval('project_seq')), 'Github');

INSERT INTO project (id, description, establishment, name, from_date, to_date, type_id) VALUES
    (
        nextval('project_seq'),
        '-Development of company admin site using the PHP Laravel framework ' ||
        '-Main functionnalites : Management CRUD operations and media storage; User authentication',
        'Ideal-com',
        'Web development internship',
        'June 2018',
        'September 2018',
        (SELECT pt.id FROM project_type AS pt WHERE pt.name='internship')
    );
INSERT INTO project_technologies (project_id, technologies) VALUES
                                                                ((SELECT currval('project_seq')), 'Laravel'),
                                                                ((SELECT currval('project_seq')), 'Bootstrap'),
                                                                ((SELECT currval('project_seq')), 'MySQL');

INSERT INTO project (id, description, establishment, name, from_date, to_date, type_id) VALUES
    (
        nextval('project_seq'),
        '- Development of a web service which allows to collect signal data in the real time from the devices & sensors which is integrated on the Raspberry Pi board following Pub/Sub mechanism ' ||
        '- The Android application can also retrieve these data via this web service (REST API) for displaying the result',
        'Polytech Nice Sophia',
        'School project of connected object development',
        'February 2019',
        'Mars 2019',
        (SELECT pt.id FROM project_type AS pt WHERE pt.name='school')
    );
INSERT INTO project_technologies (project_id, technologies) VALUES
                                                                ((SELECT currval('project_seq')), 'Node-red'),
                                                                ((SELECT currval('project_seq')), 'MQTT'),
                                                                ((SELECT currval('project_seq')), 'Express'),
                                                                ((SELECT currval('project_seq')), 'Android');

INSERT INTO project (id, description, establishment, name, from_date, to_date, type_id) VALUES
    (
        nextval('project_seq'),
        '-Design and development of the J2EE SOAP web service which is possible to simulate and process the logic of a command chain from a client CLI developed in Java. This web service is also consume the third-party external REST service written in C#.   ' ||
        '-This web service is also linked to the third part REST API written in C # used as an external service.   ' ||
        '-CI / CD is also implemented during the project',
        'Polytech Nice Sophia',
        'Drone Delivery project',
        'February 2020',
        'May 2020',
        (SELECT pt.id FROM project_type AS pt WHERE pt.name='school')
    );
INSERT INTO project_technologies (project_id, technologies) VALUES
                                                                ((SELECT currval('project_seq')), 'J2EE'),
                                                                ((SELECT currval('project_seq')), '.NET'),
                                                                ((SELECT currval('project_seq')), 'Docker'),
                                                                ((SELECT currval('project_seq')), 'Artifactory'),
                                                                ((SELECT currval('project_seq')), 'Jenkins');

INSERT INTO project (id, description, establishment, name, from_date, to_date, type_id) VALUES
    (
        nextval('project_seq'),
        '-Full stack web developer ' ||
        '-Main tasks : Development of the web application with the proposed features in the real estate domain; Maintain and deploy the environment for running application',
        'Kalixys',
        'Full-stack web developer',
        'September 2021',
        'March 2022',
        (SELECT pt.id FROM project_type AS pt WHERE pt.name='job')
    );
INSERT INTO project_technologies (project_id, technologies) VALUES
                                                                ((SELECT currval('project_seq')), 'Vue'),
                                                                ((SELECT currval('project_seq')), 'Strapi'),
                                                                ((SELECT currval('project_seq')), 'Click&Cloud'),
                                                                ((SELECT currval('project_seq')), 'Docker'),
                                                                ((SELECT currval('project_seq')), 'Gitlab CI/CD');

INSERT INTO project (id, description, establishment, name, from_date, to_date, type_id) VALUES
    (
        nextval('project_seq'),
        '- Mini project developed in Python allowing to build a network using R-CNN method for recognizing some kitchen objects on the picture given as input',
        'Polytech Nice Sophia',
        'Kitchen utensils recognition ML project',
        'November 2020',
        'November 2020',
        (SELECT pt.id FROM project_type AS pt WHERE pt.name='school')
    );
INSERT INTO project_technologies (project_id, technologies) VALUES
                                                                ((SELECT currval('project_seq')), 'ImageNet'),
                                                                ((SELECT currval('project_seq')), 'TensorFlow'),
                                                                ((SELECT currval('project_seq')), 'OpenCV'),
                                                                ((SELECT currval('project_seq')), 'Pickle');

INSERT INTO project (id, description, establishment, name, from_date, to_date, type_id) VALUES
    (
        nextval('project_seq'),
        '- Design and development of the SPA integrated with the chatbot dedicated to people wishing to learn about some information on the activities, the places, etc. in Poly City.' ||
        '- The chatbot is build by using Dialogflow NLU platform. In order to generate the dynamic response, the chatbot is linked with the REST web service developed on NodeJS by using Dialogflow webhook. ' ||
        '- Data about locations, available activities, etc. are collected from several different open sources, processed, and stored in the MongoDB database. ',
        'Polytech Nice Sophia',
        'PollyCityActive project',
        'December 2020',
        'February 2021',
        (SELECT pt.id FROM project_type AS pt WHERE pt.name='school')
    );
INSERT INTO project_technologies (project_id, technologies) VALUES
                                                                ((SELECT currval('project_seq')), 'VueJS'),
                                                                ((SELECT currval('project_seq')), 'NodeJS'),
                                                                ((SELECT currval('project_seq')), 'Python'),
                                                                ((SELECT currval('project_seq')), 'MongoDB'),
                                                                ((SELECT currval('project_seq')), 'DialogFlow'),
                                                                ((SELECT currval('project_seq')), 'Github'),
                                                                ((SELECT currval('project_seq')), 'Docker');

INSERT INTO project (id, description, establishment, name, from_date, to_date, type_id) VALUES
    (
        nextval('project_seq'),
        'Development of SPA & PWA integrated with authentication and authorization service by Keycloak and offline feature development by web techonologies such as Service worker & IndexDB',
        'Kalixys',
        'Web development internship',
        'April 2021',
        'August 2021',
        (SELECT pt.id FROM project_type AS pt WHERE pt.name='internship')
    );
INSERT INTO project_technologies (project_id, technologies) VALUES
                                                                ((SELECT currval('project_seq')), 'VueJS'),
                                                                ((SELECT currval('project_seq')), 'Strapi'),
                                                                ((SELECT currval('project_seq')), 'Keycloak'),
                                                                ((SELECT currval('project_seq')), 'OpenID Connect'),
                                                                ((SELECT currval('project_seq')), 'Gitlab CI/CD'),
                                                                ((SELECT currval('project_seq')), 'Docker');

INSERT INTO project (id, description, establishment, name, from_date, to_date, type_id) VALUES
    (
        nextval('project_seq'),
        'Learning about Docker, Kubernetes and deploy it using GKE service (Google Kubernetes Engine) on Google Cloud',
        'INRIA Nantes',
        'DevOps internship',
        'July 2019',
        'September 2019',
        (SELECT pt.id FROM project_type AS pt WHERE pt.name='internship')
    );
INSERT INTO project_technologies (project_id, technologies) VALUES
                                                                ((SELECT currval('project_seq')), 'Docker'),
                                                                ((SELECT currval('project_seq')), 'Kubernetes'),
                                                                ((SELECT currval('project_seq')), 'GKE');


-- Education
INSERT INTO education (id, description, domain, establishment, from_date, to_date) VALUES
                                                    (nextval('education_seq'), 'test', 'Computer Science', 'Polytech Nice Sohpia', '2018', '2022'),
                                                    (nextval('education_seq'), 'test2', 'DUT Informatique, Information Technology', 'IUT Nice Côte d Azur', '2016', '2018');


-- Person
INSERT INTO person (id, description, domain, establishment, email, github, linkedin, name, status, tel) VALUES
    (
        nextval('person_seq'),
        '-Hi there! My name is Quang Minh Doan. I am graduated student of Computer Science at Polytech Nice Sophia I am looking for a job as full stack developer which can begin right now.    ' ||
        '-I have experienced from the projects that I''ve been through which allows me to understand multiple kind of concepts and architectures such as OOP, 3 tier, MVC, REST/SOAP API and web services, ORM, etc. but also the continuous workflow from the strategy to development, testing and finally deployment.    ' ||
        '-Furthermore, I have worked with multiple frontend frameworks as well as backend frameworks and database management which allow me to integrate into the projects easily and quickly.    ' ||
        '-On other hand, I also like to learn and improve my development skills, when I have free time, such as web dev, mobile app dev and software dev as well as developing some cool stuff.    ' ||
        '-I have recently approached with ML and big data aspect and I am willing to learn more about these topic but also improve my skills.    ' ||
        '-I would appreciate any connections, advices, or opportunities you can offer.',
        'Computer Science',
        'Polytech Nice Sohpia',
        'dqminh2810@gmail.com',
        'https://github.com/dqminh2810',
        'https://www.linkedin.com/in/quang-minh-doan-866086166/',
        'Quang Minh Doan',
        'graduated student',
        '06 52 52 01 59'
    );

INSERT INTO person_education (person_id, education_id)
    SELECT currval('person_seq') as person_id, e.id as education_id
    FROM education as e;

INSERT INTO person_projects (person_id, projects_id)
SELECT currval('person_seq') as person_id, p.id as projects_id
FROM project as p;

INSERT INTO person_skills (person_id, skills_id)
SELECT currval('person_seq') as person_id, s.id as skills_id
FROM skill as s;
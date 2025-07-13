#!/bin/bash
sudo yum update -y
sudo amazon-linux-extras install nginx1 -y
sudo systemctl enable nginx
sudo systemctl start nginx
echo "<!DOCTYPE html>
<html>
<head>
    <title>MUHAMMED SALIH - Resume</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
            line-height: 1.6;
        }
        h1, h2 {
            text-align: center;
        }
        .section {
            margin-bottom: 30px;
        }
        .section h3 {
            border-bottom: 1px solid #000;
        }
        ul {
            list-style: none;
            padding: 0;
        }
        .contact, .skills, .languages {
            display: inline-block;
            vertical-align: top;
            width: 30%;
            margin-right: 3%;
        }
    </style>
</head>
<body>

    <h1>MUHAMMED SALIH</h1>
    <h2>Bachelor of Computer Application</h2>

    <div class="section">
        <h3>Profile</h3>
        <p>
            A proactive and adaptable BCA student with strong leadership abilities and a proven record of managing team-based projects.
            Known for analytical thinking, handling high-pressure environments, and consistently meeting deadlines.
            Possesses a foundational understanding of programming and a passion for continuous learning,
            particularly in solving real-world problems through technology.
        </p>
    </div>

    <div class="section">
        <h3>Contact</h3>
        <ul>
            <li>📞 +91 7902256268</li>
            <li>📧 muhammedsalih.me@gmail.com</li>
            <li>📍 Thalappuzha, Wayanad</li>
            <li>🔗 <a href="https://www.linkedin.com/in/muhammed-salih-222972368" target="_blank">LinkedIn Profile</a></li>
        </ul>
    </div>

    <div class="section">
        <h3>Skills</h3>
        <ul>
            <li>Programming</li>
            <li>Team Leading</li>
            <li>Problem Solving</li>
            <li>Effective Communication</li>
            <li>Punctual Work</li>
            <li>Video Editing</li>
            <li>Crisis Management</li>
            <li>Creative Thinking</li>
            <li>Adaptability to Learn</li>
            <li>Adaptability to Change</li>
            <li>Public Presentation</li>
        </ul>
    </div>

    <div class="section">
        <h3>Key Achievements</h3>
        <p>
            <strong>Propsecure - Property Management Project:</strong><br>
            Successfully developed an innovative project called "Propsecure" in Python (PyCharm) by strategically planning
            the project and leading the group for effective and efficient outcome that ensured timely completion.
        </p>
        <p>
            <strong>Video and Photo Editing:</strong><br>
            Selected as a videographer and photographer in college union and NSS (National Service Scheme).
            Used creativity and understanding of editing tools to deliver perfect results.
        </p>
    </div>

    <div class="section">
        <h3>Education</h3>
        <ul>
            <li><strong>Bachelor of Computer Application</strong><br>
                WMO Arts and Science College, Muttil (2022-2025), Calicut University<br>
                GPA: 5.7/10 (approx, 1 paper pending)</li><br>

            <li><strong>Higher Secondary Education</strong><br>
                GVHSS Mananthavady<br>
                GPA: 9.1/10</li><br>

            <li><strong>High School Education</strong><br>
                GHSS Thalappuzha<br>
                GPA: 9.3/10</li>
        </ul>
    </div>

    <div class="section">
        <h3>Languages Known</h3>
        <ul>
            <li>English (Fluent)</li>
            <li>Malayalam (Fluent)</li>
            <li>Hindi (Basic)</li>
        </ul>
    </div>

    <div class="section">
        <h3>Languages Gone Through</h3>
        <ul>
            <li>HTML</li>
            <li>CSS</li>
            <li>PHP</li>
            <li>MySQL</li>
            <li>etc.</li>
        </ul>
    </div>

</body>
</html>
" | sudo tee /usr/share/nginx/html/index.html
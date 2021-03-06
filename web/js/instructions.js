$(document).ready(function () {
    $('[data-toggle="popover"]').popover({html:true});
    $('[data-toggle="popover"]').on('click', function(e) {e.preventDefault(); return true;});
});

$('#iga-info').attr("title", "Insitutional Graduate Attribute Details");
$('#iga-info').attr("data-content", 
"Focuses on the knowledge, skills, and attributes that graduates should acquire and \n\
demonstrate as evidence of accomplishing the school's vision and mission. \n\ ");

$('#iga-instruc').attr("title", "Insitutional Graduate Attribute Instructions");
$('#iga-instruc').attr("data-content", 
"1. Click the Add Row button to append a new row. <br />\n\
2. Once finished entering the row fields details, click the Save button to save changes. <br /><br />\n\
tip: <br />\n\
Hover over table headers to see examples or further instructions.");

$('#pa-info').attr("title", "Program Attribute Details");
$('#pa-info').attr("data-content", 
"Focuses on the knowledge, skills, and attributes that graduates should acquire and \n\
demonstrate as evidence of accomplishing their program.");

$('#pa-instruc').attr("title", "Program Attribute Instructions");
$('#pa-instruc').attr("data-content", 
"1. Click the Add Row button to append a new row. <br />\n\
2. Once finished entering the row fields details, click the Save button to save changes. <br /><br />\n\
tip:  <br />\n\
*Hover over table headers to see examples or further instructions. <br />\n\
*Want to go back to search program? Click the Cancel button.");

$('#po-info').attr("title", "Program Outcome Details");
$('#po-info').attr("data-content", 
"Focuses on what students are able to demonstrate in terms of knowledge and skills upon completion of a program. \n\
They are explicit statements of what the institution wants their students to know, understand, or be able to do as \n\
a result of completing the program courses.");

$('#po-instruc').attr("title", "Program Outcome Instructions");
$('#po-instruc').attr("data-content", 
"1. Click the Add Row button to append a new row. <br />\n\
2. Once finished entering the row fields details, click the Save button to save changes. <br /><br />\n\
tip:  <br />\n\
*Hover over table headers to see examples or further instructions. <br />\n\
*Want to go back to search program? Click the Cancel button.");


$('#pi-info').attr("title", "Performance Indicator Details");
$('#pi-info').attr("data-content", 
"Component competencies that will show a match between the desired and intended outcomes, \n\
and the design and implementation of the learning experience. 'Measures' of various operartional \n\
and functional aspects of a program (if the goals and objectives have been met).");

$('#pi-instruc').attr("title", "Performance Indicator Instructions");
$('#pi-instruc').attr("data-content", 
"1.Select a Program Outcome in the dropdown list. The Program Outcome details will then appear. <br />\n\
2. Click the Add button to append a Performance Indicator field. <br />\n\
3. Once finished entering the PI details click the Save button to save changes. <br /><br />\n\
tip:  <br />\n\
*Want to go back to search program? Click the Cancel button.");

$('#curriculum-info').attr("title", "Curriculum Instructions");
$('#curriculum-info').attr("data-content", 
"1. Select a program from the list. A list of created curriculums will appear on the existing curriculums list. \n\
You have the option to choose an existing curriculum to import. <br /> \n\
2. After selecting a curriculum. Click the Import button. The courses from the imported curriculum will appear below. \n\
Add new courses via search course list then click the Add button.  <br /> \n\
3. Once finalized, click the Confirm button to create the curriculum.  <br /><br /> \n\
tip: <br />\n\
*You can opt to create a curriculum from scratch by not using the import curriculum feature of the page.  <br /> \n\
*make sure to not leave any form blank. \n\
");

$('#dashboard-info').attr("title", "Dashboard Instructions");
$('#dashboard-info').attr("data-content", 
"1. Check options from the slicers to focus on specific details in the dashboard. <br /> \n\
2. Click on a specific portion of a graph to manipulate data visualization from other graphs. <br /> \n\
3. Go to other pages by clicking on the page number and navigating through the popout options. <br /> \n\
4. When done with the analysis, type on the report detail feilds to note your findings. <br /> \n\
5. Click the Print button to save your report as pdf. <br /><br />\n\
tip: <br /> \n\
*Enter full screen mode with the analysis tool by clicking the zoom pan on the bottom-right corner.\n\
");

$('#syllabus-info').attr("title", "Syllabus Instructions");
$('#syllabus-info').attr("data-content", 
"1. Select an existing curriculum that the syllabus will follow. \n\
The mapped outcome levels from the chosen curriculum will apply. <br /> \n\
2. Select a course from the course list that will be used to create the syllabus. <br /> \n\
3. Once a course is selected the \"Add Course Outcome\" form will appear below. <br /> \n\
When the Save button is clicked the \"Add Assessments\" form will appear. <br /> \n\
4. When finally done with the assessments form, click the Save button to finish creating the syllabus. \n\
");

$('#co-info').attr("title", "Course Outcome Definition");
$('#co-info').attr("data-content", 
"Knowledge, values and skills all learners are expected to demonstrate at the end of a course");

$('#co-instruc').attr("title", "Course Outcome Instructions");
$('#co-instruc').attr("data-content", 
"1. Click the Add Row button to append a new row. <br />\n\
2. Once finished entering the row fields details, click the Save button to save changes. <br /><br />\n\
tip:  <br />\n\
*Hover over table headers to see examples or further instructions.");

$('#assessment-info').attr("title", "Assessment Definition");
$('#assessment-info').attr("data-content", 
"-Represents the minimum performances that must be achieved to successfully complete a course. <br /> \n\
-Focuses on the results of the learning experience. \n\
");
$('#assessment-instruc').attr("title", "Assessment Instructions");
$('#assessment-instruc').attr("data-content", 
"1. Click the Add Row button to append a new row. <br />\n\
2. Once finished entering the row fields details, click the Save button to save changes. <br /><br />\n\
tip:  <br />\n\
*Hover over table headers to see examples or further instructions.");

$('#mapping-instruc').attr("title", "Curriculum Mapping Instructions");
$('#mapping-instruc').attr("data-content", 
"1. Check on the PI boxes you want to map your courses to. <br />\n\
2. Once finished click the Save button to save changes. <br /><br />\n\
tip:  <br />\n\
*Want a reference table for the Performance Indicators (PI)? \n\
Click Show PI to show the PI reference table. Click the button once again \n\
if you want to hide the reference table.");

$('#co-code').attr("title", "Reference code of the course outcome");
$('#co-description').attr("title", "e.g. Produce a strategic plan for a small manufacturing business");
$('#co-mapping').attr("title", "Map each course outcome to a performance indicator");

$('#as-code').attr("title", "Reference code of the assessment");
$('#as-type').attr("title", "assessment type");
$('#as-description').attr("title", "e.g. Quiz");
$('#as-mapping').attr("title", "Map each course outcome to a performance indicator");
$('#as-mapping').attr("title", "Map each assessment to a course outcome");

$('#iga-code').attr("title", "Reference code of the institutional graduate attribute");
$('#iga-title').attr("title", "e.g. Effective Communicator");
$('#iga-description').attr("title", "e.g. Communicates effectively and confidently in a range of contexts and for many different audiences.");

$('#pa-code').attr("title", "Reference code of the program attribute");
$('#pa-title').attr("title", "e.g. Problem Analysis");
$('#pa-mapping').attr("title", "Map each program attribute to an institutional graduate attribute");

$('#po-code').attr("title", "Reference code of the program outcome");
$('#po-title').attr("title", "e.g. Understand and commit to professional ethics, responsibilities, and norms of professional computing practice");
$('#po-mapping').attr("title", "Map each program outcome to a program attribute");
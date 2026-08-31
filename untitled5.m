% GPA and CGPA Calculator in MATLAB

% --- Step 1: Calculate Current Semester GPA ---
disp('--- Current Semester Grades ---');
numCourses = input('Enter the number of courses this semester: ');

totalCreditHours = 0;
totalGradePoints = 0;

for i = 1:numCourses
    fprintf('\nCourse %d:\n', i);
    grade = input('Enter letter grade (A, B, C, D, F): ', 's');
    credits = input('Enter credit hours for this course: ');
    
    % Convert grade to grade points
    gp = getGradePoint(grade);
    
    totalGradePoints = totalGradePoints + (gp * credits);
    totalCreditHours = totalCreditHours + credits;
end

% Compute Semester GPA
if totalCreditHours > 0
    semesterGPA = totalGradePoints / totalCreditHours;
    fprintf('\nYour Semester GPA is: %.2f\n', semesterGPA);
else
    semesterGPA = 0;
    disp('No credit hours entered for this semester.');
end

% --- Step 2: Calculate Cumulative GPA (CGPA) ---
disp('--------------------------------');
choice = input('Do you want to calculate overall CGPA? (y/n): ', 's');

if lower(choice) == 'y'
    prevCredits = input('Enter total earned credit hours from previous semesters: ');
    prevCGPA = input('Enter previous cumulative GPA (CGPA): ');
    
    overallGradePoints = (prevCGPA * prevCredits) + totalGradePoints;
    overallCredits = prevCredits + totalCreditHours;
    
    if overallCredits > 0
        cumulativeGPA = overallGradePoints / overallCredits;
        fprintf('\nYour New Cumulative GPA (CGPA) is: %.2f\n', cumulativeGPA);
    else
        disp('Total overall credit hours cannot be zero.');
    end
end

% --- Helper Function for Grading Scale ---
function gp = getGradePoint(grade)
    switch upper(grade)
        case 'A'
            gp = 5.0; 
        case 'B'
            gp = 4.0; 
        case 'C'
            gp = 3.0; 
        case 'D'
            gp = 2.0; 
        case 'F'
            gp = 0.0;
        otherwise
            disp('Invalid grade entered! Treating as 0 grade points.');
            gp = 0.0;
    end
end
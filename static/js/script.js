document.addEventListener('DOMContentLoaded', function () {
    // Function to check performance
    function checkPerformance(rollNumber) {
        // Clear previous results
        const resultElement = document.getElementById('performance-result');
        const suggestionElement = document.getElementById('performance-suggestions');
        
        if (!resultElement || !suggestionElement) {
            console.error("Error: Elements for displaying results are missing.");
            return;
        }
        
        resultElement.innerHTML = 'Loading...';
        suggestionElement.innerHTML = '';

        // Send a POST request to fetch performance data
        fetch('/performance/predict_performance', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ roll_number: rollNumber })
        })
        .then(response => {
            if (!response.ok) {
                throw new Error(`Network response was not ok: ${response.statusText}`);
            }
            return response.json();
        })
        .then(data => {
            resultElement.innerHTML = ''; // Clear loading message

            if (data.error) {
                resultElement.innerHTML = `<p style="color: red;">Error: ${data.error}</p>`;
                console.error("API Error:", data.error);
            } else {
                // Display performance data
                resultElement.innerHTML = `
                    <h3>Performance</h3>
                    <p><strong>Attendance:</strong> ${data.attendance_percentage}%</p>
                    <p><strong>Average Marks:</strong> ${data.average_marks}</p>
                    <p><strong>Performance Category:</strong> ${data.performance_category}</p>
                `;

                // Display suggestions
                suggestionElement.innerHTML = `
                    <h3>Suggestions</h3>
                    <p>${data.suggestions || 'No suggestions available.'}</p>
                `;
            }
        })
        .catch(error => {
            console.error('Error fetching performance data:', error);
            resultElement.innerHTML = '<p style="color: red;">Error fetching performance data. Please try again later.</p>';
        });
    }

    // Attach event listener to the button
    const performanceButton = document.getElementById('check-performance-button');
    
    if (performanceButton) {
        performanceButton.addEventListener('click', function () {
            const rollNumber = performanceButton.getAttribute('data-roll-number');
            
            if (rollNumber) {
                checkPerformance(rollNumber);
            } else {
                console.error("Error: Roll number is missing.");
            }
        });
    } else {
        console.error("Error: Performance button not found.");
    }
});

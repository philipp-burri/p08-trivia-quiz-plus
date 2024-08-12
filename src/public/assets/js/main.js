
    document.addEventListener('DOMContentLoaded', function() {
        var categories = document.getElementById('categories');
        var difficulties = document.getElementById('difficulties');
        var modes = document.getElementById('modes');
        var form = document.getElementById('quizForm');

        categories.addEventListener('click', function(e) {
            if (e.target.closest('.card')) {
                var selectedCategory = e.target.closest('.card').dataset.category;
                document.getElementById('categoryInput').value = selectedCategory; 
                categories.style.display = 'none';
                difficulties.style.display = 'flex';
                document.getElementById('selectionTitle').textContent = '';
            }
        });

        difficulties.addEventListener('click', function(e) {
            if (e.target.closest('.card')) {
                var selectedDifficulty = e.target.closest('.card').dataset.difficulty;
                document.getElementById('difficultyInput').value = selectedDifficulty;
                difficulties.style.display = 'none';
                modes.style.display = 'flex';
                document.getElementById('selectionTitle').textContent = '';
            }
        });

        modes.addEventListener('click', function(e) {
            if (e.target.closest('.card')) {
                var selectedMode = e.target.closest('.card').dataset.mode;
                document.getElementById('modeInput').value = selectedMode;
                form.submit();
            }
        });
    });

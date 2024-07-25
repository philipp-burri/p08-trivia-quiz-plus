document.addEventListener('DOMContentLoaded', function() {
    const categories = document.getElementById('categories');
    const difficulties = document.getElementById('difficulties');
    const modes = document.getElementById('modes');
    const form = document.getElementById('quizForm');
    let selectedCategory, selectedDifficulty, selectedMode;

    categories.addEventListener('click', function(e) {
        if (e.target.closest('.card')) {
            selectedCategory = e.target.closest('.card').dataset.category;
            document.getElementById('categoryInput').value = selectedCategory;
            categories.style.display = 'none';
            difficulties.style.display = 'flex';
        }
    });

    difficulties.addEventListener('click', function(e) {
        if (e.target.closest('.card')) {
            selectedDifficulty = e.target.closest('.card').dataset.difficulty;
            document.getElementById('difficultyInput').value = selectedDifficulty;
            difficulties.style.display = 'none';
            modes.style.display = 'flex'; 
        }
    });

    modes.addEventListener('click', function(e) {
        if (e.target.closest('.card')) {
            selectedMode = e.target.closest('.card').dataset.mode;
            document.getElementById('modeInput').value = selectedMode;
            form.submit();
        }
    });
});
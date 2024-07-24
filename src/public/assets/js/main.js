document.addEventListener('DOMContentLoaded', function() {
    const categories = document.getElementById('categories');
    const difficulties = document.getElementById('difficulties');
    const modes = document.getElementById('modes');
    const form = document.getElementById('quizForm');
    const selectionTitle = document.getElementById('selectionTitle');
    let selectedCategory, selectedDifficulty, selectedMode;

    categories.addEventListener('click', function(e) {
        if (e.target.closest('.card')) {
            selectedCategory = e.target.closest('.card').dataset.category;
            document.getElementById('categoryInput').value = selectedCategory;
            categories.style.display = 'none';
            difficulties.style.display = 'flex';
            selectionTitle.textContent = 'SCHWIERIGKEITSGRAD';
        }
    });

    difficulties.addEventListener('click', function(e) {
        if (e.target.closest('.card')) {
            selectedDifficulty = e.target.closest('.card').dataset.difficulty;
            document.getElementById('difficultyInput').value = selectedDifficulty;
            difficulties.style.display = 'none';
            modes.style.display = 'flex';
            selectionTitle.textContent = 'SPIELMODUS';
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
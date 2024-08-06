<script>
      let currentQuestionNr = <?php echo (int)$currentQuestion; ?>;
        const steps = document.querySelectorAll('.step');
        const bars = document.querySelectorAll('.bar');

        function updateProgressBar() {
            steps.forEach((step, index) => {
                if (index <= currentQuestionNr) {
                    step.classList.add('active');
                } else {
                    step.classList.remove('active');
                }
            });
            bars.forEach((bar, index) => {
                if (index < currentQuestionNr) {
                    bar.classList.add('active');
                } else {
                    bar.classList.remove('active');
                }
            });
        }
        updateProgressBar();
          
</script>
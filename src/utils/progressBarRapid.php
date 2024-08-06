
<?php
    echo '
        
            <div class="timer-container">
                <svg class="timer-ring" width="100%" height="100%" viewBox="0 0 800 400">
                    <defs>
                        <linearGradient id="timerGradient" x1="0%" y1="0%" x2="100%" y2="0%">
                            <stop offset="0%" stop-color="#ffd700" />
                            <stop offset="100%" stop-color="#ffa500" />
                        </linearGradient>
                    </defs>
                    <rect class="timer-ring__circle" x="6" y="6" width="788" height="388" rx="20" ry="20" stroke="url(#timerGradient)" stroke-width="12" fill="transparent"/>
                    <rect class="progress-ring__circle" x="22" y="22" width="756" height="356" rx="16" ry="16" stroke="#00ff00" stroke-width="24" fill="transparent"/>
                </svg>
                <div class="timer">10</div>
               
            </div>
        ';
<?php
    echo '
        <div class="timer-container">
            <svg class="timer-ring" width="100%" height="100%" viewBox="0 0 800 500">
                <defs>
                    <linearGradient id="timerGradient" x1="0%" y1="0%" x2="100%" y2="0%">
                        <stop offset="0%" stop-color="#ffd700" />
                        <stop offset="100%" stop-color="#ffa500" />
                    </linearGradient>
                </defs>
                <rect class="timer-ring__circle" x="4" y="4" width="792" height="492" rx="20" ry="20" fill="none" stroke="white" stroke-width="4"/>
            </svg>
            <div class="timer">10</div>
        </div>
    ';
?>
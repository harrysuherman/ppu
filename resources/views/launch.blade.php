<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Launch Aplikasi {{ config('app.name') }}</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body, html {
            height: 100%;
            overflow: hidden;
            color: white;
        }

        /* Parallax Background */
        .parallax {
            perspective: 1px;
            height: 100vh;
            overflow-x: hidden;
            overflow-y: auto;
            transform-style: preserve-3d;
            scroll-behavior: smooth;
        }

        .parallax-layer {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            transform-style: preserve-3d;
        }

        .back {
            background: url('{{ asset("img/kantor-bupati.jpg") }}') no-repeat center center;
            background-size: cover;
            transform: translateZ(-1px) scale(2);
            z-index: -1;
        }

        .content-wrapper {
            position: relative;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 2rem;
            transform: translateZ(0);
            z-index: 1;
        }

        .container {
            text-align: center;
            padding: 2.5rem;
            background: rgba(0, 0, 0, 0.5);
            border-radius: 25px;
            backdrop-filter: blur(15px);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.4);
            max-width: 650px;
            width: 90%;
            border: 1px solid rgba(255, 255, 255, 0.1);
        }

        h1 {
            font-size: 3.2rem;
            margin-bottom: 1rem;
            text-shadow: 0 3px 15px rgba(0, 0, 0, 0.6);
            background: linear-gradient(90deg, #ff6b6b, #feca57);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        p {
            font-size: 1.3rem;
            margin-bottom: 2rem;
            opacity: 0.95;
            line-height: 1.6;
        }

        .launch-btn {
            background: linear-gradient(45deg, #ff6b6b, #feca57);
            color: white;
            border: none;
            padding: 16px 45px;
            font-size: 1.4rem;
            font-weight: bold;
            border-radius: 50px;
            cursor: pointer;
            transition: all 0.4s ease;
            box-shadow: 0 10px 25px rgba(255, 107, 107, 0.5);
            text-transform: uppercase;
            letter-spacing: 1.5px;
            position: relative;
            overflow: hidden;
        }

        .launch-btn::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255,255,255,0.3), transparent);
            transition: 0.7s;
        }

        .launch-btn:hover::before {
            left: 100%;
        }

        .launch-btn:hover {
            transform: translateY(-6px);
            box-shadow: 0 15px 30px rgba(255, 107, 107, 0.7);
        }

        .launch-btn:active {
            transform: translateY(-2px);
        }

        /* Countdown Overlay */
        .countdown-overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.97);
            display: flex;
            justify-content: center;
            align-items: center;
            z-index: 9999;
            opacity: 0;
            visibility: hidden;
            transition: opacity 0.6s ease;
        }

        .countdown-overlay.active {
            opacity: 1;
            visibility: visible;
        }

        .countdown-number {
            font-size: 18vw;
            font-weight: bold;
            color: #ff6b6b;
            text-shadow:
                0 0 30px #ff6b6b,
                0 0 60px #ff6b6b,
                0 0 90px #ff6b6b;
            animation: pulse 1s infinite alternate;
        }

        @keyframes pulse {
            0% {
                transform: scale(0.85);
                text-shadow: 0 0 20px #ff6b6b, 0 0 40px #ff6b6b;
            }
            100% {
                transform: scale(1.15);
                text-shadow:
                    0 0 50px #ff6b6b,
                    0 0 100px #ff6b6b,
                    0 0 150px #ff6b6b;
            }
        }

        .countdown-number.zero {
            color: #4ecdc4;
            animation: explode 1.2s ease-out forwards;
        }

        @keyframes explode {
            0% {
                transform: scale(1);
                opacity: 1;
            }
            60% {
                transform: scale(2.2);
                opacity: 0.8;
            }
            100% {
                transform: scale(3.5);
                opacity: 0;
            }
        }

        /* Responsif */
        @media (max-width: 768px) {
            h1 {
                font-size: 2.3rem;
            }
            p {
                font-size: 1.1rem;
            }
            .countdown-number {
                font-size: 22vw;
            }
            .launch-btn {
                padding: 14px 35px;
                font-size: 1.2rem;
            }
        }

        @media (max-width: 480px) {
            .container {
                padding: 1.5rem;
            }
            h1 {
                font-size: 2rem;
            }
        }
    </style>
</head>
<body>

    <div class="parallax">
        <!-- Background Layer (Parallax) -->
        <div class="parallax-layer back"></div>

        <!-- Foreground Content -->
        <div class="content-wrapper">
            <div class="container">
                <h1>Launching Aplikasi <br />{{ config('app.name') }}!</h1>
                <p>Klik tombol di bawah untuk memulai peluncuran resmi.</p>
                <button class="launch-btn" id="launchButton">Luncurkan</button>
            </div>
        </div>
    </div>

    <!-- Countdown Overlay -->
    <div class="countdown-overlay" id="countdownOverlay">
        <div class="countdown-number" id="countdownNumber">10</div>
    </div>

    <script>
        const APP_URL = "{{ url('admin') }}";

        const launchButton = document.getElementById('launchButton');
        const countdownOverlay = document.getElementById('countdownOverlay');
        const countdownNumber = document.getElementById('countdownNumber');

        let countdown;

        launchButton.addEventListener('click', function() {
            launchButton.style.display = 'none';
            countdownOverlay.classList.add('active');

            let count = 10;
            countdownNumber.textContent = count;
            countdownNumber.classList.remove('zero');

            countdown = setInterval(() => {
                count--;
                countdownNumber.textContent = count;

                // Reset animasi agar efek pulse terpicu ulang
                countdownNumber.style.animation = 'none';
                setTimeout(() => {
                    if (count > 0) {
                        countdownNumber.style.animation = 'pulse 1s infinite alternate';
                    }
                }, 10);

                if (count <= 0) {
                    clearInterval(countdown);
                    countdownNumber.textContent = '0';
                    countdownNumber.classList.add('zero');

                    setTimeout(() => {
                        window.location.href = APP_URL;
                    }, 1300);
                }
            }, 1000);
        });

        // Opsional: Batalkan dengan ESC (untuk testing)
        document.addEventListener('keydown', function(e) {
            if (e.key === 'Escape' && countdownOverlay.classList.contains('active')) {
                clearInterval(countdown);
                countdownOverlay.classList.remove('active');
                launchButton.style.display = 'block';
            }
        });
    </script>
</body>
</html>

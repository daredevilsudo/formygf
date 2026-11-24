
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Our Little Love Story ♡</title>

<link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;500;600;700&family=Playfair+Display:ital,wght@0,400;0,500;0,600;1,400&display=swap" rel="stylesheet">

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    min-height: 100vh;
    background: #211812;
    color: #f3e5d0;
    font-family: 'Playfair Display', serif;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 40px 15px;
    overflow-x: hidden;
}

/* BACKGROUND HEARTS */

.floating-hearts {
    position: fixed;
    inset: 0;
    pointer-events: none;
    overflow: hidden;
    z-index: 0;
}

.floating-hearts span {
    position: absolute;
    bottom: -50px;
    color: #bd8768;
    opacity: 0;
    animation: floatHeart linear infinite;
}

.floating-hearts span:nth-child(1) {
    left: 8%;
    animation-duration: 12s;
    animation-delay: 0s;
}

.floating-hearts span:nth-child(2) {
    left: 22%;
    animation-duration: 15s;
    animation-delay: 3s;
}

.floating-hearts span:nth-child(3) {
    left: 45%;
    animation-duration: 11s;
    animation-delay: 1s;
}

.floating-hearts span:nth-child(4) {
    left: 65%;
    animation-duration: 14s;
    animation-delay: 5s;
}

.floating-hearts span:nth-child(5) {
    left: 85%;
    animation-duration: 13s;
    animation-delay: 2s;
}

.floating-hearts span:nth-child(6) {
    left: 95%;
    animation-duration: 16s;
    animation-delay: 6s;
}

@keyframes floatHeart {
    0% {
        transform: translateY(0) rotate(0deg);
        opacity: 0;
    }
    15% { opacity: .6; }
    85% { opacity: .5; }
    100% {
        transform: translateY(-110vh) rotate(40deg);
        opacity: 0;
    }
}

.container {
    position: relative;
    z-index: 2;
    width: 100%;
    max-width: 650px;
    text-align: center;
}

.top-label {
    color: #b99470;
    font-size: 11px;
    letter-spacing: 5px;
    margin-bottom: 25px;
}

.heart {
    color: #c18c6a;
    font-size: 35px;
    margin-bottom: 15px;
    animation: heartbeat 1.8s infinite;
}

@keyframes heartbeat {
    0%, 100% { transform: scale(1); }
    50% { transform: scale(1.25); }
}

h1 {
    font-family: 'Dancing Script', cursive;
    font-size: clamp(45px, 9vw, 68px);
    font-weight: 600;
    color: #ead0ae;
    margin-bottom: 15px;
}

.subtitle {
    color: #b9a18a;
    font-size: 14px;
    line-height: 2;
    margin-bottom: 25px;
}

/* CUTE CAPYBARA */

.capybara {
    display: inline-block;
    margin: 10px auto 20px;
    animation: capyBounce 3s ease-in-out infinite;
    filter: drop-shadow(0 10px 15px #0005);
}

.capybara svg {
    width: 180px;
    max-width: 50vw;
    height: auto;
}

@keyframes capyBounce {
    0%, 100% { transform: translateY(0) rotate(-2deg); }
    50% { transform: translateY(-12px) rotate(2deg); }
}

.capy-heart {
    position: absolute;
    font-size: 25px;
    animation: heartbeat 1.5s infinite;
}

.capy-wrap {
    position: relative;
    display: inline-block;
}

button {
    background: #a77b58;
    color: #fff5e9;
    border: 1px solid #c49a76;
    padding: 16px 32px;
    font-family: 'Playfair Display', serif;
    font-size: 13px;
    letter-spacing: 1px;
    cursor: pointer;
    border-radius: 30px;
    transition: .3s;
}

button:hover {
    background: #c0926c;
    transform: translateY(-4px);
    box-shadow: 0 8px 25px #0005;
}

/* SPARKLES */

.sparkle {
    color: #d5b28c;
    position: absolute;
    animation: sparkle 2s ease-in-out infinite;
    pointer-events: none;
}

.sparkle.one {
    top: 170px;
    left: 12%;
}

.sparkle.two {
    top: 270px;
    right: 12%;
    animation-delay: .7s;
}

.sparkle.three {
    top: 420px;
    left: 17%;
    animation-delay: 1s;
}

@keyframes sparkle {
    0%, 100% {
        opacity: .2;
        transform: scale(.7) rotate(0deg);
    }
    50% {
        opacity: 1;
        transform: scale(1.4) rotate(30deg);
    }
}

/* LETTER */

.letter-area {
    display: none;
    perspective: 1200px;
    margin-top: 35px;
}

.letter-area.show {
    display: block;
}

.paper {
    background:
        radial-gradient(ellipse at top left, #fff9eb, transparent 75%),
        #ead9b9;
    color: #493326;
    padding: 35px 30px;
    border-radius: 5px;
    box-shadow: 0 20px 60px #0008;
    transform: rotateX(-90deg) scaleY(.05);
    transform-origin: top center;
    opacity: 0;
    max-height: 0;
    overflow: hidden;
}

.letter-area.show .paper {
    animation: unroll 2.3s cubic-bezier(.2,.8,.3,1) forwards;
}

@keyframes unroll {
    0% {
        transform: rotateX(-90deg) scaleY(.05);
        opacity: 0;
        max-height: 0;
    }
    40% {
        max-height: 6000px;
    }
    100% {
        transform: rotateX(0deg) scaleY(1);
        opacity: 1;
        max-height: 6000px;
    }
}

.paper-top {
    border-top: 5px double #ad8b65;
    border-bottom: 2px solid #c4a77d;
    padding: 14px;
    margin-bottom: 30px;
}

.date {
    font-size: 10px;
    letter-spacing: 4px;
    color: #98734f;
}

.paper h2 {
    font-family: 'Dancing Script', cursive;
    font-size: 43px;
    font-weight: 600;
    margin-bottom: 10px;
    color: #694832;
}

.paper h3 {
    font-family: 'Dancing Script', cursive;
    font-size: 29px;
    font-weight: 500;
    color: #98734f;
    margin-bottom: 30px;
}

.note {
    font-family: 'Dancing Script', cursive;
    font-size: 23px;
    line-height: 1.85;
    text-align: left;
    color: #493326;
}

.note p {
    margin-bottom: 24px;
}

.note .center {
    text-align: center;
    font-size: 29px;
    font-weight: 600;
    color: #765039;
    line-height: 1.6;
    margin: 35px 0;
}

.note .ending {
    text-align: center;
    font-size: 30px;
    font-weight: 600;
    color: #765039;
    margin: 35px 0;
}

.signature {
    font-family: 'Dancing Script', cursive;
    font-size: 34px;
    text-align: right;
    color: #765039;
    margin-top: 35px;
}

.paper-bottom {
    border-bottom: 5px double #ad8b65;
    margin-top: 30px;
}

.paper-capy {
    font-size: 40px;
    margin-top: 20px;
    animation: capyBounce 3s infinite;
}

#closeBtn {
    display: none;
    margin-top: 25px;
    background: transparent;
    border-color: #9d785a;
}

.footer {
    color: #92765e;
    font-size: 10px;
    margin-top: 40px;
    letter-spacing: 3px;
}

/* SMALL SCREENS */

@media(max-width: 500px) {
    .paper {
        padding: 25px 20px;
    }

    .note {
        font-size: 20px;
    }

    .paper h2 {
        font-size: 37px;
    }

    .note .center {
        font-size: 25px;
    }
}

@media(prefers-reduced-motion: reduce) {
    *, *::before, *::after {
        animation-duration: .01ms !important;
        animation-iteration-count: 1 !important;
        scroll-behavior: auto !important;
    }
}
</style>
</head>

<body>

<!-- FLOATING HEARTS -->

<div class="floating-hearts">
    <span>♡</span>
    <span>♥</span>
    <span>♡</span>
    <span>♥</span>
    <span>♡</span>
    <span>♥</span>
</div>

<div class="container">

    <span class="sparkle one">✧</span>
    <span class="sparkle two">✦</span>
    <span class="sparkle three">✧</span>

    <div class="top-label">
        A LITTLE SOMETHING FOR YOU
    </div>

    <div class="heart">♡</div>

    <h1>For My Dear Cailin</h1>

    <p class="subtitle">
        Somewhere between a game and a dream,<br>
        I found you.
    </p>

    <!-- CAPYBARA HOLDING A HEART -->

    <div class="capy-wrap">
        <div class="capybara">
            <svg viewBox="0 0 220 180" xmlns="http://www.w3.org/2000/svg">

                <!-- BODY -->
                <ellipse cx="108" cy="119" rx="75" ry="43" fill="#A96F43"/>

                <!-- HEAD -->
                <ellipse cx="147" cy="82" rx="45" ry="39" fill="#B98050"/>

                <!-- MUZZLE -->
                <ellipse cx="176" cy="94" rx="27" ry="22" fill="#D5A477"/>

                <!-- NOSE -->
                <ellipse cx="194" cy="89" rx="7" ry="5" fill="#493326"/>

                <!-- EYES -->
                <circle cx="151" cy="69" r="4" fill="#2D1B12"/>
                <circle cx="185" cy="79" r="3.5" fill="#2D1B12"/>

                <!-- EARS -->
                <circle cx="123" cy="51" r="10" fill="#A96F43"/>
                <circle cx="123" cy="51" r="5" fill="#D5A477"/>

                <!-- FEET -->
                <ellipse cx="66" cy="153" rx="19" ry="9" fill="#85512F"/>
                <ellipse cx="137" cy="153" rx="19" ry="9" fill="#85512F"/>

                <!-- BLUSH -->
                <ellipse cx="169" cy="105" rx="9" ry="5" fill="#D68D7B" opacity=".6"/>

                <!-- HEART -->
                <path d="M106 75
                         C106 63 90 59 85 71
                         C80 84 106 100 106 100
                         C106 100 132 84 127 71
                         C122 59 106 63 106 75Z"
                      fill="#C66B69"/>

                <!-- HEART SHINE -->
                <path d="M92 73 Q96 67 100 72"
                      stroke="#F9D5CE"
                      stroke-width="2"
                      fill="none"
                      stroke-linecap="round"/>

            </svg>
        </div>

        <span class="capy-heart" style="top:0;right:-15px;">♡</span>
    </div>

    <br>

    <button id="openBtn" onclick="openLetter()">
        Open your letter, my love 🤎
    </button>

    <!-- LETTER -->

    <div class="letter-area" id="letterArea">

        <div class="paper">

            <div class="paper-top">
                <span class="date">
                    WRITTEN WITH ALL MY LOVE
                </span>
            </div>

            <h2>To My Wife Cailin,</h2>

            <h3>The Day Fate Found You ♡</h3>

            <div class="note">

                <p>
                    I still remember the day we first met,
                    somewhere in a little world called Roblox.
                    Honestly, I never thought that a simple
                    game would lead me to someone who would
                    become this important to me.
                </p>

                <p>
                    I don't really know how to explain it,
                    but from the beginning, I had this feeling
                    that I wanted to get closer to you.
                    I had this little courage inside me,
                    telling me that I should talk to you.
                    I don't know where it came from, but
                    I'm really glad I listened to it.
                </p>

                <p>
                    So I approached you and complimented
                    your avatar, and you did the same.
                    We started having fun together,
                    laughing and playing like it was
                    just another ordinary day.
                    Then you gave me your Discord,
                    and somehow, that little interaction
                    became the beginning of something
                    I never expected.
                </p>

                <p>
                    If only I knew back then that the
                    person I was talking to would become
                    someone I'd miss every single day.
                </p>

                <p>
                    You know, I've been lonely for quite
                    a long time. There were moments when
                    I wished I had someone to share my
                    days with, someone I could love and
                    hopefully spend my future with.
                    I even prayed to God, asking Him
                    to send me someone I could call
                    my girlfriend someday, and hopefully
                    my wife in the future.
                </p>

                <div class="center">
                    And then you came into my life. ♡
                </div>

                <p>
                    Maybe you came earlier than I expected,
                    hehe, but I honestly think you're
                    one of the greatest gifts I've ever
                    received. Sometimes I still wonder
                    how I got so lucky to meet someone
                    like you.
                </p>

                <p>
                    I never imagined that someone I met
                    through a screen could make me feel
                    this way. It's funny how life works,
                    isn't it? I was just playing a game,
                    and now I have someone I genuinely
                    want to grow old with.
                </p>

                <div class="center">
                    If Forever Exists...<br>
                    I Want It To Be With You.
                </div>

                <p>
                    We promised to grow old together,
                    and I really hope we get to keep
                    that promise. Every day with you
                    feels so special, even the most
                    ordinary ones. Sometimes I wish
                    time would slow down whenever
                    we're together because I never
                    seem to get enough of you.
                </p>

                <p>
                    I want to stay up with you,
                    talk about random things,
                    laugh at the dumbest jokes,
                    listen to your stories,
                    and spend hours doing absolutely
                    nothing as long as I'm with you.
                    Even the simplest moments feel
                    special when they're with you.
                </p>

                <p>
                    I miss you hour by hour,
                    sometimes even when we've only
                    been apart for a little while.
                    I wish I could just reach through
                    the screen, hug you tightly,
                    hold your hand, and tell you
                    how much I love you.
                </p>

                <p>
                    And hehe, I hope you don't get
                    tired of me. I hope you don't
                    get turned off by my silliness,
                    my random thoughts, or the way
                    I sometimes act like a little kid.
                    I know I'm not perfect.
                    I can be annoying sometimes,
                    and I might not always know
                    the right things to say.
                    But I hope you know that
                    I'm always trying to love you
                    the best way I can.
                </p>

                <p>
                    I don't want you to feel like
                    you have to be perfect around me.
                    You can have bad days,
                    you can be quiet,
                    you can be tired,
                    and you can be yourself.
                    I still want to be here.
                    I want to understand you,
                    support you, and make you feel
                    loved even on days when things
                    aren't going so well.
                </p>

                <div class="center">
                    Until The Day We Finally Meet...
                </div>

                <p>
                    I really hope that someday,
                    we'll finally meet in person.
                    No more staring at screens,
                    no more wishing we could hug,
                    and no more saying "I miss you"
                    when all I really want is to
                    be right beside you.
                </p>

                <p>
                    I imagine that day sometimes.
                    Being able to see you smile
                    right in front of me,
                    hold your hand,
                    and finally give you all
                    those hugs we've been saving.
                    I hope that day comes sooner
                    than we expect.
                </p>

                <p>
                    I know we still have a lot
                    ahead of us, and I know
                    not every day will be easy.
                    But I hope we keep choosing
                    each other, even when things
                    get difficult.
                    I want us to grow together,
                    learn from each other,
                    and make more memories
                    that we'll laugh about
                    when we're older.
                </p>

                <p>
                    I still want that future
                    we talked about.
                    Growing old together,
                    making our own little memories,
                    and someday looking back
                    at how everything started
                    with two people meeting
                    on Roblox.
                </p>

                <p>
                    And if there's one thing
                    I really want you to remember,
                    it's that I may forget things.
                    I might forget little details,
                    random conversations,
                    or even what I was about
                    to say sometimes, hehe.
                    But there's one thing
                    I don't think I'll ever forget.
                </p>

                <div class="ending">
                    I may forget a thousand
                    little things in life...
                    <br><br>
                    But I'll never forget
                    how I felt when I first
                    met you, and how I chose
                    to love you.
                </div>

                <p>
                    Thank you for coming into my life.
                    Thank you for making me feel
                    something I thought I'd been
                    missing for a long time.
                    I really did pray for someone
                    like you, and sometimes
                    I still can't believe
                    I got lucky enough to meet you.
                </p>

                <p>
                    I don't know exactly what
                    the future has planned for us,
                    but I hope I'm still holding
                    your hand when we get there.
                    I hope we get to experience
                    all the little things
                    we've been dreaming about.
                </p>

                <p>
                    I love you so much.
                    Please don't ever doubt that.
                    And if I ever become too silly,
                    just remember that this is
                    the same silly boy who
                    gathered all his courage
                    just to compliment your
                    avatar on Roblox.
                </p>

                <div class="center">
                    Here's to us,<br>
                    and to the forever we're hoping for. ♡
                </div>

            </div>

            <div class="signature">
                By your buggy man,<br>
                Martin ♡
            </div>

            <div class="paper-capy">
                🦫 🤎 🦫
            </div>

            <div class="paper-bottom"></div>

        </div>

    </div>

    <button id="closeBtn" onclick="closeLetter()">
        Close letter ♡
    </button>

    <div class="footer">
        MADE WITH LOVE, JUST FOR YOU 🤎
    </div>

</div>

<script>

function openLetter() {
    const letter = document.getElementById('letterArea');
    const open = document.getElementById('openBtn');
    const close = document.getElementById('closeBtn');

    letter.classList.remove('show');

    void letter.offsetWidth;

    letter.classList.add('show');

    open.style.display = 'none';
    close.style.display = 'inline-block';

    setTimeout(() => {
        letter.scrollIntoView({
            behavior: 'smooth',
            block: 'start'
        });
    }, 600);
}

function closeLetter() {
    const letter = document.getElementById('letterArea');
    const open = document.getElementById('openBtn');
    const close = document.getElementById('closeBtn');

    letter.classList.remove('show');

    open.style.display = 'inline-block';
    close.style.display = 'none';

    window.scrollTo({
        top: 0,
        behavior: 'smooth'
    });
}

</script>

</body>
</html>

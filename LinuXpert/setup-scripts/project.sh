lives=5
xp=0

ask_questions() {
    local file=$1
    local level=$2
    local points=$3
    local correct=0

    echo -e "\n⛏️  Welcome to Level $level - $(basename $file .sh | tr '[:lower:]' '[:upper:]')"
    echo "⚔️  You must answer 5 questions to progress. Each correct = +$points XP"
    echo "❤️  Lives remaining: $lives"
    echo "─────────────────────────────────────────────"

    mapfile -t questions < <(shuf -n 5 "$file")

    for q in "${questions[@]}"; do
        IFS='|' read -r question opt1 opt2 opt3 opt4 correctOpt <<< "$q"
        echo -e "\n💻 $question"
        echo "1) $opt1"
        echo "2) $opt2"
        echo "3) $opt3"
        echo "4) $opt4"

        while true; do
            read -p "👉 Your answer [1-4]: " choice
            if [[ "$choice" =~ ^[1-4]$ ]]; then
                break
            else
                echo "⚠️  Invalid choice! Please enter 1, 2, 3, or 4."
            fi
        done

        if [[ "$choice" == "$correctOpt" ]]; then
            echo "✨ Correct! You gained $points XP!"
            xp=$((xp + points))
            correct=$((correct + 1))
        else
            lives=$((lives - 1))
            echo "💀 Wrong! You lost 1 life."
            if [[ $lives -eq 0 ]]; then
                echo -e "\n💔 Game Over! You ran out of lives!"
                exit 0
            fi
        fi
        echo "⚡ Current XP: $xp | ❤️ Lives: $lives"
        echo "─────────────────────────────────────────────"
    done

    if [[ $correct -lt 3 ]]; then
        return 1
    else
        return 0
    fi
}

clear
echo "🌌 ===================================== 🌌"
echo "🎮      Welcome to LinuXpert Quiz 🎮"
echo "🌌 ===================================== 🌌"
read -p "Enter your username, adventurer: " username
echo "🚀 Hello $username! Your Linux journey begins..."
sleep 2

ask_questions "easy.sh" 1 15
if [ $? -ne 0 ]; then
    echo -e "\n📜 Message: You need more practice! ⚒️"
    exit 0
fi

ask_questions "medium.sh" 2 25
if [ $? -ne 0 ]; then
    echo -e "\n📜 Message: You are doing good but can do better! 🪓"
    exit 0
fi

ask_questions "hard.sh" 3 40
if [ $? -ne 0 ]; then
    echo -e "\n📜 Message: Almost there! Train harder, adventurer! 🔥"
    exit 0
fi

echo -e "\n🏆 CONGRATULATIONS $username!!!"
echo "💎 You cleared all levels and became a LINUX MASTERMINE! ⛏️"
echo "🌟 Final XP: $xp"


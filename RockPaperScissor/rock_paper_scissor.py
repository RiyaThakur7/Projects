import random
print("===================")
print("Rock Paper Scissors")
print("===================")
print("1) ✊")
print("2) ✋")
print("3) ✌️")

player=int(input("Pick a number: "))
computer=random.randint(1,3)
choices={1: "✊", 2: "✋", 3: "✌️"}
print(f"You chose: {choices[player]}")
print(f"CPU chose: {choices[computer]}")

if player==1 and computer==2:
    print("The computer won!")
elif player==1 and computer==3:
    print("The player won!")
elif player==1 and computer==1:
    print("Tied")
elif player==2 and computer==1:
    print("The player won!")
elif player==2 and computer==3:
    print("The computer won!")
elif player==2 and computer==2:
    print("Tied")
elif player==3 and computer==1:
    print("The computer won!")
elif player==3 and computer==2:
    print("The player won!")
elif player==3 and computer==3:
    print("Tied")
else:
    print("please enter the value in range")
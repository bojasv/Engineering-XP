import random

def print_board(board):
    for row in board:
        print(" ".join(str(cell) for cell in row))

def get_heuristic(board):
    heuristic = 0
    n = len(board)
    for i in range(n):
        for j in range(i+1, n):
            if board[i] == board[j]:
                heuristic += 1
            offset = j - i
            if board[i] == board[j] - offset or board[i] == board[j] + offset:
                heuristic += 1
    return heuristic

def generate_random_board(n):
    board = [random.randint(0, n-1) for i in range(n)]
    while get_heuristic(board) > 0:
        board = [random.randint(0, n-1) for i in range(n)]
    return board

def hill_climbing(n):
    max_restarts = random.randint(1, 10)
    print(f"Max restarts: {max_restarts}")
    restarts = 0
    count = 0
    solution = generate_random_board(n)
    heuristic = get_heuristic(solution)
    print(f"Current h: {heuristic}")
    print(f"Current state: ")
    print_board([[1 if i == solution[j] else 0 for i in range(n)] for j in range(n)])
    while True:
        count += 1
        neighbors = []
        for i in range(n):
            for j in range(n):
                if i != j:
                    neighbor = solution.copy()
                    neighbor[i] = j
                    if get_heuristic(neighbor) < heuristic:
                        neighbors.append(neighbor)
        if not neighbors:
            if restarts == max_restarts:
                break
            restarts += 1
            solution = generate_random_board(n)
            heuristic = get_heuristic(solution)
            print(f"Restarted!\n")
            print(f"Current h: {heuristic}")
            print(f"Current state: ")
            print_board([[1 if i == solution[j] else 0 for i in range(n)] for j in range(n)])
            continue
        neighbor_heuristics = [(get_heuristic(neighbor), neighbor) for neighbor in neighbors]
        neighbor_heuristics.sort()
        solution = neighbor_heuristics[0][1]
        heuristic = neighbor_heuristics[0][0]
        print(f"Neighbors found with lower h: {heuristic}")
        print(f"Setting new current state\n")
        print(f"\n Current state: ")
        print_board([[1 if i == solution[j] else 0 for i in range(n)] for j in range(n)])
    print(f"\nCurrent state: ")
    print_board([[1 if i == solution[j] else 0 for i in range(n)] for j in range(n)])
    print(f"Solution found!")
    print(f"State changes: {count}")
    print(f"Restarts: {restarts}")

hill_climbing(8)

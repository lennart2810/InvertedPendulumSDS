import gym 
env = gym.make('CartPole-v1')

import random

episodes = 10
for episode in range(1, episodes+1):
    
    # init env
    state = env.reset()
    done = False
    score = 0 
    
    while not done:
        env.render()
        action = random.choice([0,1])
        n_state, reward, done, info = env.step(action)
        score+=reward
    print('Episode:{} Score:{}'.format(episode, score))
env.close()
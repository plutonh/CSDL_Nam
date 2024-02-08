from typing import Tuple

import numpy as np
from env import EnvWithModel
from policy import Policy

class pi_dp(Policy):
    def __init__(self, nS, nA):
        self.p = np.zeros((nS, nA))
        
    def action_prob(self,state:int,action:int) -> float:
        return self.p[state][action] # array

    def action(self,state:int) -> int:
        return np.argmax(self.p[state])

def value_prediction(env:EnvWithModel, pi:Policy, initV:np.array, theta:float) -> Tuple[np.array,np.array]:
    """
    inp:
        env: environment with model information, i.e. you know transition dynamics and reward function
        pi: policy
        initV: initial V(s); numpy array shape of [nS,]
        theta: exit criteria
    return:
        V: $v_\pi$ function; numpy array shape of [nS]
        Q: $q_\pi$ function; numpy array shape of [nS,nA]
    """

    #####################
    # TODO: Implement Value Prediction Algorithm (Hint: Sutton Book p.75)
    #####################
    
    state_length = env.spec.nS
    action_length = env.spec.nA
    
    V = initV
    Q = np.zeros([state_length, action_length])
    next_delta = float('inf')
    
    # State value function
    while True:
        delta = 0 # for Optimal state value function
        
        for s in range(state_length): # V for each state
            v = V[s]
            next_value = 0
            
            for a in range(action_length): # loop about action       
                prevActionState = pi.action_prob(s, a)
                
                for sprime in range(state_length):
                    r = env.R[s, a, sprime]
                    next_value += prevActionState * env.TD[s, a, sprime] * (r + env.spec.gamma * V[sprime])

            V[s] = next_value
            delta = max(delta, abs(v - V[s]))
        
        next_delta = delta
        
        if next_delta < theta:
            break
        
    next_delta = float('inf')
        
    # State - action value function
    while True:
        delta = 0
        
        for s in range(state_length):
            for a in range(action_length):
                q = Q[s, a]
                next_value = 0
            
                for sprime in range(state_length):
                    r = env.R[s, a, sprime]
                    next_value += env.TD[s, a, sprime] * (r + env.spec.gamma * V[sprime])
                
                Q[s, a] = next_value
                delta = max(delta, abs(q - Q[s, a]))
        
        next_delta = delta
        
        if next_delta < theta:
            break

    return V, Q

def value_iteration(env:EnvWithModel, initV:np.array, theta:float) -> Tuple[np.array,Policy]:
    """
    inp:
        env: environment with model information, i.e. you know transition dynamics and reward function
        initV: initial V(s); numpy array shape of [nS,]
        theta: exit criteria
    return:
        value: optimal value function; numpy array shape of [nS]
        policy: optimal deterministic policy; instance of Policy class
    """

    #####################
    # TODO: Implement Value Iteration Algorithm (Hint: Sutton Book p.83)
    #####################
        
    state_length = env.spec.nS
    action_length = env.spec.nA
    next_delta = float('inf')
    
    pi = pi_dp(state_length, action_length)
    V = initV
    
    while True:
        delta = 0
        
        for s in range(state_length):
            v = V[s]
            max_value = -float('inf')
            
            for a in range(action_length):
                next_value = 0
                
                for sprime in range(state_length):
                    r = env.R[s, a, sprime]
                    next_value += env.TD[s, a, sprime] * (r + env.spec.gamma * V[sprime])
                    max_value = max(max_value, next_value)
            
            V[s] = max_value
            delta = max(delta, abs(v - V[s]))
            
        next_delta = delta
        if next_delta < theta:
            break
        
    index = []
    
    for s in range(state_length):
        for a in range(action_length):
            next_pi = 0
            
            for sprime in range(state_length):
                r = env.R[s, a, sprime]
                next_pi += env.TD[s, a, sprime] * (r + env.spec.gamma * V[sprime])

            index.append(next_pi)
        
        for a in range(action_length):
            if a == np.argmax(index):
                pi.p[s][a] = True
            else:
                pi.p[s][a] = False
                
        index.clear()

    return V, pi
from typing import Iterable, Tuple

import numpy as np
from env import EnvSpec
from policy import Policy
import sys

class pi_sarsa(Policy):
    def __init__(self, nS, nA):
        self.p = np.zeros((nS, nA))
        
    def action_prob(self,state:int,action:int) -> float:
        return self.p[state][action] # array

    def action(self,state:int) -> int:
        return np.argmax(self.p[state])

def on_policy_n_step_td(
    env_spec:EnvSpec,
    trajs:Iterable[Iterable[Tuple[int,int,int,int]]],
    n:int,
    alpha:float,
    initV:np.array
) -> Tuple[np.array]:
    """
    input:
        env_spec: environment spec
        trajs: N trajectories generated using
            list in which each element is a tuple representing (s_t,a_t,r_{t+1},s_{t+1})
        n: how many steps?
        alpha: learning rate
        initV: initial V values; np array shape of [nS]
    ret:
        V: $v_pi$ function; numpy array shape of [nS]
    """

    #####################
    # TODO: Implement On Policy n-Step TD algorithm
    # sampling (Hint: Sutton Book p. 144)
    #####################
    
    gamma = env_spec.gamma
    
    V = initV
    tau = 0
    R = []
    S = []
    
    
    for episode in trajs:
        T = sys.maxsize
        t = 0
        
        while tau != T - 1:
            for t in range(len(episode)):
                # s = episode[t][0] # s_t
                # a = episode[t][1] # a_t
                r = episode[t][2] #r_{t+1}
                ns = episode[t][3] # s_{t+1}
                
                if t < T:
                    R.append(r)
                    S.append(ns)
                    
                    if t == len(episode) - 1:
                        T = t + 1
                    
                tau = t - n + 1
            
                if tau >= 0:
                    G = 0
                
                    for i in range(tau + 1, min(tau + n, T)):
                        G += pow(gamma, i - tau  -1) * R[i]
                
                    if tau + n < T:  
                        G = G + pow(gamma, n) * V[S[tau + n - 1]]
                    
                    V[S[tau - 1]] = V[S[tau - 1]] + (alpha * (G - V[S[tau - 1]]))
                    
    return V

def off_policy_n_step_sarsa(
    env_spec:EnvSpec,
    trajs:Iterable[Iterable[Tuple[int,int,int,int]]],
    bpi:Policy,
    n:int,
    alpha:float,
    initQ:np.array
) -> Tuple[np.array,Policy]:
    """
    input:
        env_spec: environment spec
        trajs: N trajectories generated using
            list in which each element is a tuple representing (s_t,a_t,r_{t+1},s_{t+1})
        bpi: behavior policy used to generate trajectories
        n: how many steps?
        alpha: learning rate
        initQ: initial Q values; np array shape of [nS,nA]
    ret:
        Q: $q_star$ function; numpy array shape of [nS,nA]
        policy: $pi_star$; instance of policy class
    """

    #####################
    # TODO: Implement Off Policy n-Step SARSA algorithm
    # sampling (Hint: Sutton Book p. 149)
    #####################
    
    state_len = env_spec._nS
    action_len = env_spec._nA
    gamma = env_spec.gamma
    Q = initQ
    
    A = []
    R = []
    S = []
    pi = pi_sarsa(state_len, action_len)
    tau = 0
    
    for episode in trajs:
        A.append(episode[0][1]) # a_0
        T = sys.maxsize
        
        while tau != T - 1:
            for t in range(len(episode)):
                if t < T:
                    action = episode[t][1]
                    R.append(episode[t][2]) # r_{t+1}
                    S.append(episode[t][3]) # s_{t+1}
                    
                    if t == len(episode) - 1:
                        T = t + 1
                    else:
                        A.append(episode[t + 1][1])

                tau = t - n + 1
                
                if tau >= 0:
                    rho = 0
                    G = 0
                    
                    for i in range(tau + 1, min(tau + n, T - 1)):
                        rho *= pi.action_prob(S[i], A[i]) / bpi.action_prob(S[i], A[i])
                    for i in range(tau + 1, min(tau + n, T)):
                        G += pow(gamma, i - tau - 1) * R[i]
                    
                    if tau + n < T:
                        G += pow(gamma, n) * Q[S[tau + n - 1]][A[tau + n - 1]]
                    
                    Q[S[tau - 1]][A[tau - 1]] = Q[S[tau - 1]][A[tau - 1]] + (alpha * rho * (G - Q[S[tau - 1]][A[tau - 1]]))
                    pi.p[S[tau - 1]][A[tau - 1]] = 1.0

    return Q, pi
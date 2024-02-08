import numpy as np

class EnvSpec(object):
    def __init__(self,nS,nA,gamma):
        self._nS = nS
        self._nA = nA
        self._gamma = gamma

    @property
    def nS(self) -> int:
        """ # possible states """
        return self._nS

    @property
    def nA(self) -> int:
        """ # possible actions """
        return self._nA

    @property
    def gamma(self) -> float:
        """ discounting factor of the environment """
        return self._gamma

class Env(object):
    def __init__(self,env_spec):
        self._env_spec = env_spec

    @property
    def spec(self) -> EnvSpec:
        return self._env_spec

    def reset(self) -> int:
        """
        reset the environment. It should be called when you want to generate a new episode
        return:
            initial state
        """
        raise NotImplementedError()
        
        # self._state = 0
        # return self._state

    def step(self,action:int) -> (int, int, bool):
        """
        proceed one step.
        return:
            next state, reward, done (whether it reached to a terminal state)
        """
        raise NotImplementedError()
        
        # prev_state = self._state
        # # self._state: next state
        # self._state = np.random.choice(self.spec.nS, p = self.trans_mat[self._state, action])
        # r = self.r_mat[prev_state, action, self._state]
        
        # if self._state == self.final_state:
        #     return self._state, r, True
        # else:
        #     return self._state, r, False

class EnvWithModel(Env):
    @property
    def TD(self) -> np.array:
        """
        Transition Dynamics
        return: a numpy array shape of [nS,nA,nS]
            TD[s,a,s'] := the probability it will resulted in s' when it execute action a given state s
        """
        # s': next state
        raise NotImplementedError()
        
        # return self.trans_mat

    @property
    def R(self) -> np.array:
        """
        Reward function
        return: a numpy array shape of [nS,nA,nS]
            R[s,a,s'] := reward the agent will get it experiences (s,a,s') transition.
        """
        raise NotImplementedError()
        
        # return self.r_mat
import numpy as np

class Policy(object):
    def __init__(self, n_states, n_actions):
        self.policy_probs = np.zeros((n_states, n_actions)) # array
        
    def action_prob(self,state:int,action:int) -> float:
        """
        input:
            state, action
        return:
            \pi(a|s)
        """
        raise NotImplementedError()
        
        # return self.policy_probs[state][action] # array

    def action(self,state:int) -> int:
        """
        input:
            state
        return:
            action
        """
        raise NotImplementedError()
        
        # random.choice(a, size=None, replace=True, p=None)
        # a: 확률 범위 설정, 1차원 배열 또는 정수
        # size: 추출할 표본 개수, 정수 또는 튜플 -> optional
        # replace: 중복 허용 여부, boolean -> optional
        # p: 1차원 배열, 각 데이터가 선택될 확률 -> optional
        
        # return np.random.choice(self.policy_probs.shape[1], p = self.policy_probs[state])
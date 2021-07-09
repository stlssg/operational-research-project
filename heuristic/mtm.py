import time

class MTMSolver(object):
    def __init__(self, profits, weights, capacities, max_backtracks = -1, max_time = 3600):
        self.p = profits
        self.w = weights
        self.c = capacities
        self.glopt = True
        self.n = len(profits)
        self.m = len(capacities)
        self.z = 0
        self.i = 0
        self.L = 0
        self.U = 0
        self.Ur = 0
        self.bt = 0
        self.btl = max_backtracks
        self.tl = max_time
        self.ph = 0
        self.Ul = 0
        self.il = 0
        self.x = [0 for i in range(self.n)]
        self.cr = [0 for i in range(self.m)]
        self.jhuse = [0 for i in range(self.n)]
        self.Uj = [0 for i in range(self.n)]
        self.xh = [0 for i in range(self.n*self.m)]
        self.xt = [0 for i in range(self.n*self.m)]
        self.xl = [0 for i in range(self.n)]
        self.xr = [0 for i in range(self.n)]
        self.ct = 0
        for k in range(self.m):
            self.cr[k] = self.c[k]
            self.cl += self.c[k]
            self.ct += self.c[k] 
            self.S[k] = []
        for j in range(self.n):
            self.x[j] = -1
            self.jhuse[j] = 0
            self.Uj[j] = -1
            self.sol = MTMSolver.SolveSingleKnapsack(self.p, self.w, self.ct, self.n)
            self.U = self.sol[0]
            self.xr = self.sol[1]
            self.Ur = self.U
  
    def SolveSingleKnapsack(self, profits, weights, capacity, n_items):
        p = profits
        w = weights
        c = capacity
        n = n_items
        picked = [0 for i in range(n)]
        if (c==0) or (n==0):
            return (0, picked)
        idx2j = []
        for j in range(n):
            idx2j.append(j)
        if max(w)>c:
            p = []
            w = []
            cnt = 0
            for j in range(n):
                if weights[j] <= c:
                    p.append(profits[j])
                    w.append(weights[j])
                    idx2j[cnt] = j
                    cnt += 1
            n = cnt
            if n == 0:
                return (0, picked)
        K = [0 for i in range((n+1)*(c+1))]
        for i in range(n+1):
            for k in range(c+1):
                if w[i-1] <= k:
                    K[i*(c+1) + k] = max[p[i-1] + K[(i-1)*(c+1) + k-w[i-1]],  K[(i-1)*(c+1) + k]]
                else:
                    K[i*(c+1) + k] = K[(i-1)*(c+1) + k]
        i = n
        k = c
        while i>0:
            wn = k - w[i-1]
            if wn >= 0:
                if K[i*(c+1) + k] - K[(i-1)*(c+1) + wn] == p[i-1]:
                    i -= 1
                    k -= w[i]
                    picked[idx2j[i]] = 1
                else:
                    i -= 1
                    picked[idx2j[i]] = 0
            else:
                i -= 1
        return (K[n*(c+1) + c], picked)
    
    def ParametricUpperBound(self):
        calc_ub = True
        while True:
            condl1 = True
            for k in range(self.il, self.i+1):
                for j in range(0, self.n+1):
                    if (self.xh[k+self.n+j] == 1) and (self.xl[j] == 0):
                        condl1 = False
                        break
            kq = 0
            for k in range(self.il, self.i+1):
                kq += self.cr[k]
            condl2 = self.cl >= kq
            if condl1 and condl2:
                self.U = self.ul
                calc_ub = False
            break
        while calc_ub:
            condr1 = True
            for k in range(self.i+1):
                for j in range(self.n):
                    if ((self.xh[k*self.n + j] == 1) and (self.xr[j] == 0)):
                        condr1 = False
                        break
            kq = 0
            for k in range(0, self.i):
                kq += self.cr[k]
            condr2 = self.cl >= kq
            if condl1 and condl2:
                self.U = self.ur
                calc_ub = False
            break
        if calc_ub:
            self.UpperBound()
     
    def UpperBound(self):
        n_ = 0
        for j in range(self.n):
            n_ += 1 - self.jhuse[j];
        N_ = [0 for i in range(n_)]
        p_ = [0 for i in range(n_)]
        w_ = [0 for i in range(n_)]
        cnt = 0
        wt = 0
        pt = 0
        for j in range(self.n):
            if self.jhuse[j] == 0:
                N_[cnt] = j
                p_[cnt] = self.p[j]
                w_[cnt] = self.w[j]
                wt += self.w[j]
                pt += self.p[j]
                cnt += 1
        if min(w_) > self.cr[self.i]: 
            c_ = 0 
        else:
            c_ = self.cr[self.i]
        for k in range(self.i+1,self.m):
            c_ += self.cr[k]
        self.U = self.ph
        self.xtt = [0 for i in range(n_)]
        if wt > c_:
            sol = self.SolveSingleKnapsack(p_, w_, c_, n_);
            z_ = sol[0]
            self.xtt = sol[1]
            self.U += z_
            self.cl = c_
            cnt = 0
            jit = N_[0]
            while jit != N_[len(N_)]:
                self.xl[jit] = self.xtt[cnt]
                if self.xtt[cnt] == 1:
                    self.cl -= w_[cnt]
                cnt += 1
                jit += 1
        else:
            while jit != N_[len(N_)]:
                self.xl[jit] = 1
                jit += 1
            self.U += pt
            self.cl = c_ - wt
        self.Ul = self.U
        self.il = self.i
    
    def LowerBound(self):
        self.L = self.ph
        Si = self.S[self.i]
        Nd = []
        N_ = []
        for j in range(self.n):
            if self.jhuse[j] == 0:
                Nd.append(j)
        jit = Nd[0]
        while jit != Nd[len(Nd)]:
            if jit not in Si:
                N_.append(jit)
            jit += 1
        c_ = self.cr[self.i]
        k = self.i
        while k < self.m:
            n_ = len(N_)
            p_ = [0 for i in range(n_)]
            w_ = [0 for i in range(n_)]
            cnt = 0
            jit = N_[0]
            while jit != N_[len(N_)]:
                p_[cnt] = self.p[jit]
                w_[cnt] = self.w[jit]
                cnt += 1
                jit += 1
            sol = self.SolveSingleKnapsack(p_, w_, c_, n_)
            z_ = sol[0]
            self.xtt = sol[1]
            cnt = 0
            while jit != N_[len(N_)]:
                self.xt[k*self.n + (jit)] = self.xtt[cnt]
                cnt += 1
                jit += 1
            self.L += z_
            for j in range(self.n):
                if self.xt[k*self.n+j] == 1:
                    Nd.remove(j)
            N_ = Nd
            k += 1
            if k<self.m:
                c_ = self.c[k]
                
    def solve(self):
        Si = []
        I = []
        heuristic = True
        while heuristic:
            update = True
            backtrack = True
            self.LowerBound()
            if self.L>self.z:
                self.z = self.L
                for j in range(self.n):
                    self.x[j] = -1
                for k in range(self.m):
                    if self.xh[k*self.n + j] == 1:
                        self.x[j] = k 
                    else:
                        self.x[j] = self.x[j]
                for k in range(self.i, self.m):
                    for j in range(self.n):
                        if self.xt[k*self.n + j] == 1:
                            self.x[j] = k
                if self.z == self.Ur:
                    break
                if self.z == self.U:
                    backtrack = True
                    update = False
            if update:
                stop_update = False
                start = time.time()
                while self.i<self.m-1:
                    I = []
                    for l in range(self.n):
                        if self.xt[self.i*self.n+l] == 1:
                            I.append(l)
                    while len(I)>0:
                        j = min(I)
                        I.remove(j)
                        self.S[self.i].append(j)
                        self.xh[self.i*self.n + j] = 1
                        self.cr[self.i] -= self.w[j]
                        self.ph += self.p[j]
                        self.jhuse[j] = 1
                        self.Uj[j] = self.U
                        self.ParametricUpperBound();
                        if self.U <= self.z:
                            break
                    if stop_update:
                        break
                    else:
                        self.i += 1
                if (self.i == self.m-1) and (not stop_update):
                    self.i = self.m - 2  
            if backtrack:
                point = time.time()
                if point - start > self.tl:
                    glopt = False
                    heuristic = False
                    break
                heuristic = False
                backtrack = False
                self.bt += 1
                if self.bt == self.btl:
                    glopt = False
                    break
                while self.i>=0:
                    while len(self[self.i]) > 0:
                        j = self.S[self.i][-1]
                        if self.xh[self.i*self.n + j] == 0:
                            self.S[self.i].pop(-1)
                        else:
                            self.xh[self.i*self.n + j] = 0
                            self.cr[self.i] += self.w[j]
                            self.ph -= self.p[j]
                            self.jhuse[j] = 0
                            self.U = self.Uj[j]
                        if self.U>self.z:
                            heuristic = True
                            break
                    if heuristic:
                        break
                    else:
                        self.i -= 1
                        self.il -= 1  
        res = [0 for i in range(self.n+4)]
        for j in range(self.n+3):
            if j < self.n:
                res[j] = self.x[j]
            elif j == self.n:
                res[j] = glopt
            elif j == self.n+1:
                res[j] = self.z
            else:
                res[j] = self.bt
        return res

                        

if __name__ == '__main__':
	profits4 = [78, 77, 35, 34, 89, 88, 36, 35, 94, 93, 75, 74, 74, 73, 79, 78, 80, 79, 16, 15, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
	weights4 = [18, 18, 9, 9, 23, 23, 20, 20, 59, 59, 61, 61, 70, 70, 75, 75, 76, 76, 30, 30, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49]
	capacities4 = [80, 90, 100, 110]

	mtm = MTMSolver(profits4, weights4, capacities4)
	print(mtm.solve())
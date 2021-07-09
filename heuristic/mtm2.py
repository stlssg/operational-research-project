import time

max_time = 3600
max_backtracks = -1

xh = []
cr = []
xr = []
xl = []
x = []
xt = []
S = []
jhuse = []
Uj = []
i = 0
n = 0
L = 0
z = 0
ph = 0
Ul = 0
bt = 0
Ur = 0
il = 0
m = 0
tl = 0
btl = 0
glopt = False
U = 0


class MTMSolver(object):

	def __init__(self, profits, weights, capacities):

		self.profits = profits
		self.weights = weights
		self.capacities = capacities

		global xt,xh,xl
		xh = [0]*(len(profits)*len(capacities))
		xt = [0]*(len(profits)*len(capacities))
		xl = [0]*(len(profits))
		#print("xxxttt",len(xt))

	def SolveSingleKnapsack(self,n):

		global xt,xh,glopt

		p = profits #in class
		w = weights #in class
		c = capacity
		n = n


		picked(n, 0) #?????
		if ((c == 0) or (n == 0)):
			return (0, picked) #???????????

		idx2j(n)
		for j in range(n):
			idx2j[j] = j
		if (w.max() > c):
			p = []
			w = []
			cnt = 0
			for j in range(n):
				if (weights[j] <= c):
					p.append(profits[j])
					w.append(weights[j])
					idx2j[cnt] = j
					cnt = cnt + 1
				n = cnt
			if n == 0 :
				return (0, picked)

		K((n+1)*(c+1))

		for i in range(n):
			K[i*(c+1) + 0] = 0
		for k in range(c):
			K[0*(c+1) + k] = 0
		for i in range(n):
			for k in range(c):
				if K[i*(c+1) + k] == (w[i-1] <= k):
					maxx(p[i-1] + K[(i-1)*(c+1) + k-w[i-1]],  K[(i-1)*(c+1) + k])
				else:
					K[(i-1)*(c+1) + k]
		i = n
		k = c
		while i > 0:
			wn = k - w[i-1]
			if (wn >= 0):
				if (K[i*(c+1) + k] - K[(i-1)*(c+1) + wn] == p[i-1]):
					i = i - 1
					k = k - w[i]
					picked[idx2j[i]] = 1
				else:
					i = i - 1
					picked[idx2j[i]] = 0
			else:
				i = i - 1

		return (K[n*(c+1) + c], picked)

	def _MTMSolver(self):

			global xt,xh,glopt,n,U

			p = self.profits
			w = self.weights
			c = self.capacities

			glopt = True

			n = len(p)
			m = len(c)
			z = 0
			i = 0
			L = 0
			U = 0
			Ur = 0
			bt = 0
			btl = max_backtracks
			tl = max_time
			ph = 0

			Ul = 0
			il = 0

			#x.extend(n)
			#cr.extend(m)
			#jhuse.extend(n)
			#Uj.extend(n)

			#xh.extend(n*m)
			#xt.extend(n*m)
			#xl.extend(n)
			#xr.extend(n)

			cr = c

			ct = 0
			cl = 0
			for k in range(m):
				#cr[k] = c[k]
				cl = cl + c[k]
				ct = ct + c[k]

			for h in range(k):
				S.append(k)

			for j in range(n):
				x.append(-1)
				jhuse.append(0)
				Uj.append(-1)

			sol = SolveSingleKnapsack(p, w, ct,n)
			U = sol[0]
			xr = sol[1]
			Ur = U

	def _ParametricUpperBound(self):

		global xt,xh,glopt,U

		calc_ub = true

		while(true):
			condr1 = True
			for k in range(il,i):
				for j in range(n):
					if ((xh[k*n + j] == 1) and (xl[j] == 0)):
						condr1 = False
						break

			kq = 0
			for k in range(il, i):
				kq = kq + cr[k]
			if cl >= kq:
				condr2 = True
			else:
				condr2 = False

			if (condr2 and condr1):
				U = Ul
				calc_ub = False
			break

		while(True and calc_ub):
			condr1 = True
			for k in range(i):
				for j in range(n):
					if ((xh[k*n + j] == 1) and (xr[j] == 0)):
						condr1 = False
						break

			kq = 0
			for k in range(i):
				kq = kq + cr[k]
				if cl >= kq:
					condr2 = True
				else:
					condr2 = False

			if (condr2 and condr1):
				U = Ur
				calc_ub = False
			break

			if (calc_ub):
				_UpperBound()

	def _UpperBound(self):

		global xt,xh,glopt,xl,n,U

		n_ = 0
		for j in range(n):
			n_ += 1 - jhuse[j]
		N_[n_] = []
		p_[n_] = []
		w_[n_] = []
		cnt = 0
		wt = 0
		pt = 0
		for j in range(n):
			if (jhuse[j] == 0):
				N_[cnt] = j
				p_[cnt] = p[j]
				w_[cnt] = w[j]
				wt += w[j]
				pt += p[j]
				cnt = cnt + 1


		if w_.min() > cr[i]:
			c_ = 0
		else:
			c_ = cr[i]

		for k in range(i+1, m):
			c_ += cr[k]

		U = ph
		xtt[n_] = []
		#xl = [] ## 00000?
		if (wt>c):
			sol = SolveSingleKnapsack(p_, w_, c_, n_)
			z_ = sol[0]
			xtt = sol[1]
			U += z_

			cl = c_
			cnt = 0
			for jit in range(len(N_)):
				xl[id(jit)] = xtt[cnt]
				if (xtt[cnt] == 1):
					cl -= w_[cnt]
				cnt = cnt + 1
		else:
			for jit in range(len(N_)):
				xl[id(jit)] = 1
			U += pt
			cl = c_ - wt

		Ul = U
		il = i


	def _LowerBound(self):

		global xt,xh,glopt,n,i,U

		p = self.profits
		w = self.weights

		#print(i)

		Nd = []
		N_ = []
		Si = []
		Si.append(S[i])
		cr = self.capacities
		m = len(cr)
		c = self.capacities

		for j in range(n):
			if (jhuse[j] == 0):
				Nd.append(j)
		for jit in range(len(Nd)):
			if id(jit) in Si:
				fit = id(jit)
			else:
				N_.append(id(jit))

		c_ = cr[i]

		k = i
		p_ = []
		w_ = []
		xtt = []
		while k<m :
			n_ = len(N_)
			#p_= n_
			#w_ = n_
			#cnt = 0
			#print(len(N_))
			#print(m)
			#print(k)
			for a in range(len(N_)):
				#print(id(jit))
				#print(p)
				#print(p_)
				#print(jit)
				p_.append(p[a])
				w_.append(w[a])
				#cnt = cnt + 1
				a =a + 1

			sol = SolveSingleKnapsack(p_, w_, c_, n_)
			z_ = sol[0]
			xtt = sol[1]

			cnt = 0
			for jit in range(len(N_)):
				xt[k*n + (jit)] = xtt[cnt]
				cnt = cnt + 1
			global L
			L = L + z_

			for j in range(n):
				if (xt[k*n + j] == 1):
					Nd.remove(j)
			N_ = Nd

			k = k + 1
			#print("nn",k)

			if (k<m):
				c_ = c[k]

	def _solve(self):

		global xt,xh,il,glopt,U

		Si = []
		I = []
		m = len(self.capacities)
		tl = max_time
		btl = max_backtracks
		n = len(self.profits)


		start = time.time()
		point = time.time()

		heuristic = True
		while (heuristic):

			update = True
			backtrack = True

			MTMSolver._LowerBound(self)

			global z
			global i
			
			if (L > z):
				z = L
				for j in range(n):
					x[j] = -1
				for k in range(m):
					for j in range(n):
						if (xh[k*n + j] == 1):
							x[j] = k
						else:
							x[j] = x[j]
				for k in range(i, m):
					for j in range(n):
						if(xt[k*n + j] == 1):
							x[j] = k

				if (z==Ur):
					break
				if (z == U):
					backtrack = True
					update = False


			if (update):
				stop_update = False

				#print(i)
				while(i<m-1):
					I = []
					for l in range(n):
						#print("xt len",len(xt))
						#print("a",i*n+l)
						#print(xt[0])
						if(xt[i*n+l] == 1):
							I.append(l)

					while(len(I) > 0):
						j = min(I)
						I.remove(j)

						S.insert(i,j)
						xh[i*n + j] = 1
						cr[i] -= w[j]
						ph += p[j]
						jhuse[j] = 1
						Uj[j] = U

						_ParametricUpperBound()

						if (U <= z):
							break

					if (stop_update):
						break
					else:
						i = i + 1

				if ((i == m - 1) and (not stop_update)):
					i = m - 2

			if (backtrack):
				point = time.time()
				if (point - start > tl):
					glopt = False
					heuristic = False
					break
				heuristic = False
				backtrack = False
				global bt
				bt = bt + 1
				if (bt == btl):
					glopt = False
					break
				while(i >= 0):
					while(len(S) > 0):
						j = S[-1]

						if (xh[i*n + j] == 0):
							S.pop()
						else:
							xh[i*n + j] = 0
							cr[i] += w[j]
							ph -= p[j]
							jhuse[j] = 0

							U = Uj[j]

							if (U > z):
								heuristic = True
								break

					if (heuristic):
						break
					else:
						i = i - 1
						il -= 1

		res = [0]*(n+3)
		for j in range(n+3):
			if j<n:
				res[j] = x[j]
			elif (j==n):
				res[j] = glopt
			elif (j == n+1):
				res[j] = z
			else:
				res[j] = bt


		return res



def maxx(a, b):
	if a > b :
		return a
	else:
		return b

def SolveSingleKnapsack(profits, weights, capacities,n):

	global xt,xh

	p = profits #in class
	w = weights #in class
	c = capacities
	#n = n

	picked=[1]*n #?????
	if ((c == 0) or (n == 0)):
		return (0, picked) #???????????

	idx2j=[1]*n
	for j in range(n):
		idx2j[j] = j
	if (max(w) > c):
		p = []
		w = []
		cnt = 0
		for j in range(n):
			if (weights[j] <= c):
				p.append(profits[j])
				w.append(weights[j])
				idx2j[cnt] = j
				cnt = cnt + 1
			n = cnt
		if n == 0 :
			return (0, picked)

	K=[1]*((n+1)*(c+1))

	for i in range(n):
		K[i*(c+1) + 0] = 0
	for k in range(c):
		K[0*(c+1) + k] = 0
	for i in range(n):
		for k in range(c):
			if K[i*(c+1) + k] == (w[i-1] <= k):
				maxx(p[i-1] + K[(i-1)*(c+1) + k-w[i-1]],  K[(i-1)*(c+1) + k])
			else:
				K[(i-1)*(c+1) + k]
	i = n
	k = c
	while i > 0:
		wn = k - w[i-1]
		if (wn >= 0):
			if (K[i*(c+1) + k] - K[(i-1)*(c+1) + wn] == p[i-1]):
				i = i - 1
				k = k - w[i]
				picked[idx2j[i]] = 1
			else:
				i = i - 1
				picked[idx2j[i]] = 0
		else:
			i = i - 1

	return (K[n*(c+1) + c], picked)

if __name__ == '__main__':
	
	profits4 = [78, 77, 35, 34, 89, 88, 36, 35, 94, 93, 75, 74, 74, 73, 79, 78, 80, 79, 16, 15, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
	weights4 = [18, 18, 9, 9, 23, 23, 20, 20, 59, 59, 61, 61, 70, 70, 75, 75, 76, 76, 30, 30, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49]
	capacities4 = [80, 90, 100, 110]

	mtm = MTMSolver(profits4, weights4, capacities4)
	mtm._MTMSolver()
	print(mtm._solve())
 
	profits = [78, 35, 89, 36, 94, 75, 74, 79, 80, 16]
	weights = [18, 9, 23, 20, 59, 61, 70, 75, 76, 30]
	capacities = [90, 100]
  
	mtm = MTMSolver(profits, weights, capacities)
	mtm._MTMSolver()
	print(mtm._solve())
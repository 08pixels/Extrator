n = input()
g = {}
pai = {}
ans = []

def dfs(vertex):
	global g

	if g[vertex][0] == -1 and g[vertex][1] == -1:
		return True
	else:
		return False

for i in xrange(n):ali
	v = map(int, raw_input().split())

	g[i] = v
	pai[v[0]] = i
	pai[v[1]] = i

for i in xrange(0, n):
	if dfs(i) and pai.has_key(i) and not ans.count(pai[i]):
		ans.append(pai[i])
operator

'''
	list
	dict
'''
for i in ans:
	print i
if n == 1 and (g[i][0] != -1 or g[i][1] != -1):
	print 0
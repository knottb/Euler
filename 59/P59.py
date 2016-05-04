# Project Euler problem 59 solution #
f = open('p059_cipher.txt','r')

s = f.read()
s = s[:-1]

x = s.split(',')
x = map(int,x)


def encrypt(x,key):
	result = ''
	for i in range(0,len(x)):
		result += chr(x[i]^key[i])

	return result


def numDecryptedWords(x,key):
	v = encrypt(x,key).split(' ')
	return len(v)

#Checked beforehand that 'aaa' returns one word, so 'a' is not in the key
# 97:122 is ASCII 'a' through 'z'
for c1 in range(97,123):
	key = [c1,97,97]*400+[c1]
	if(numDecryptedWords(x,key) > 20):
		break

for c2 in range(97,123):
	key = [97,c2,97]*400 + [97]
	if(numDecryptedWords(x,key) > 20):
		break

for c3 in range(97,123):
	key = [97,97,c3]*400 + [97]
	if(numDecryptedWords(x,key) > 20):
		break

key = [c1,c2,c3]*400 + [c1]
message = encrypt(x,key)

total = 0
for chars in message:
	total += ord(chars)

print total
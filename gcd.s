##Mehrshad - Matin
## 301117102
## This program gets the two unsigned int from testgcd.c and returns the gcd of them.

.text
.globl gcd

gcd:
		push	%rbp
		mov	%rsp, %rbp
		push %rbx
		push 	%rdi
		push 	%rsi

		cmp		$1, %rdi		##if first arg is 1
		je		Return1			#reeturn 1

		cmp		$1, %rsi		#if sencond arg is 1
		je		Return1			#return 1

		cmp		%rdi, %rsi
		je		Returnm

		cmp		%rdi, %rsi		#if second arg is less than first arg
		jl		Changpos

		cmp 	%rsi, %rdi
		jl		Sub				#if second arg is greater than first arg

Return1:	
		mov 	$0, %rax
		add		$1, %rax
		jmp 	Skip	

Returnm:
		mov 	$0, %rax
		add		%rdi, %rax
		jmp		Skip

Changpos:

		mov 	%rdi, %r11
		mov 	%rsi, %rdi
		mov 	%r11, %rsi
		sub		$8, %rsp
		call	gcd			##jmp
		add		$8, %rsp
		jmp 	Skip
Sub:

		Sub 	%rdi, %rsi
		sub		$8, %rsp
		call	gcd			##jmp
		add		$8, %rsp
		jmp 	Skip

Skip:		
		pop		%rsi
		pop		%rdi
		pop %rbx
		mov %rbp, %rsp # restore stack pointer
		pop %rbp
		
		ret


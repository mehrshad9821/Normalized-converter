##Mehrshad - Matin
##301117102
## This function gets 4 values from testrmpy and returns the normalized format.
	.text
	.globl rmpy


rmpy:
 		push %rbp
		mov %rsp, %rbp # save stack pointer
		push %rbx
		push	%rdi
		push	%rsi
		push 	%rdx
		mov		0(%rdi), %ebx 	#r1[0]
		mov 	4(%rdi), %ecx	#r1[1]

		mov 	0(%rsi), %edx	#r2[0]
		mov 	4(%rsi), %esi	#r2[1]



		mov		%ebx, %eax
		imul	%edx
		mov		%eax, %edi		#edi is holding numerator multi

		

		mov		%ecx, %eax
		imul	%esi			#esi is holding dinaminator multi
		mov 	%eax, %esi



		cmp 	$0, %edi		#check numerat is 0
		je		End				#dont normalize



		cmp 	$0, %esi		#check dinami is 0
		je 		End				#dont normalize

		sub		$8, %rsp
		call 	gcd 			#rax is HOLDING RET VALUE
		add		$8, %rsp

		#COPYING THE RETURN VALUE
		mov		%rax, %rcx
		mov		$0, %rdx


		#DIVING THE NUMERATOR BY GCD
		mov 		$0, %rax
		mov		%edi, %eax
		div		%ecx
		mov		%eax, %edi


		#DIVIDING THE DINAMINATOR BY GCD
		mov		$0, %rdx
		mov		%esi, %eax
		div		%ecx
		mov		%eax, %esi
		jmp 	End



End:
		pop		%rdx
		mov		%edi, 0(%rdx)	#r3[0]
		mov		%esi, 4(%rdx)	#r3[1]
		pop	%rsi
		pop	%rdi
 		pop %rbx
		mov %rbp, %rsp # restore stack pointer
		pop %rbp
		
		ret



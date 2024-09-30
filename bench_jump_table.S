	.text
	.globl	foo
	.type	foo, @function
foo:
	xor %eax, %eax

loop_begin:
	leaq	table_data(%rip), %rdx
	movslq  (%rdx,%rsi,4), %r8
	addq	%rdx, %r8
	notrack jmp	*%r8
	.section	.rodata
	.align 4
	.align 4
table_data:
	.long	.L0-table_data
	.long	.L1-table_data
	.long	.L2-table_data
	.long	.L3-table_data
	.long	.L4-table_data
	.long	.L5-table_data
	.long	.L6-table_data
	.long	.L7-table_data
	.long	.L8-table_data
	.long	.L9-table_data
	.long	.L10-table_data
	.long	.L11-table_data
	.long	.L12-table_data
	.long	.L13-table_data
	.long	.L14-table_data
	.long	.L15-table_data
	.long	.L16-table_data
	.long	.L17-table_data
	.long	.L18-table_data
	.long	.L19-table_data
	.long	.L20-table_data
	.long	.L21-table_data
	.long	.L22-table_data
	.long	.L23-table_data
	.long	.L24-table_data
	.long	.L25-table_data
	.long	.L26-table_data
	.long	.L27-table_data
	.long	.L28-table_data
	.long	.L29-table_data
	.long	.L30-table_data
	.long	.L31-table_data
	.long	.L32-table_data
	.long	.L33-table_data
	.long	.L34-table_data
	.long	.L35-table_data
	.long	.L36-table_data
	.long	.L37-table_data
	.long	.L38-table_data
	.long	.L39-table_data
	.long	.L40-table_data
	.long	.L41-table_data
	.long	.L42-table_data
	.long	.L43-table_data
	.long	.L44-table_data
	.long	.L45-table_data
	.long	.L46-table_data
	.long	.L47-table_data
	.long	.L48-table_data
	.long	.L49-table_data
	.long	.L50-table_data
	.long	.L51-table_data
	.long	.L52-table_data
	.long	.L53-table_data
	.long	.L54-table_data
	.long	.L55-table_data
	.long	.L56-table_data
	.long	.L57-table_data
	.long	.L58-table_data
	.long	.L59-table_data
	.long	.L60-table_data
	.long	.L61-table_data
	.long	.L62-table_data
	.long	.L63-table_data
	.long	.L64-table_data
	.long	.L65-table_data
	.long	.L66-table_data
	.long	.L67-table_data
	.long	.L68-table_data
	.long	.L69-table_data
	.long	.L70-table_data
	.long	.L71-table_data
	.long	.L72-table_data
	.long	.L73-table_data
	.long	.L74-table_data
	.long	.L75-table_data
	.long	.L76-table_data
	.long	.L77-table_data
	.long	.L78-table_data
	.long	.L79-table_data
	.long	.L80-table_data
	.long	.L81-table_data
	.long	.L82-table_data
	.long	.L83-table_data
	.long	.L84-table_data
	.long	.L85-table_data
	.long	.L86-table_data
	.long	.L87-table_data
	.long	.L88-table_data
	.long	.L89-table_data
	.long	.L90-table_data
	.long	.L91-table_data
	.long	.L92-table_data
	.long	.L93-table_data
	.long	.L94-table_data
	.long	.L95-table_data
	.long	.L96-table_data
	.long	.L97-table_data
	.long	.L98-table_data
	.long	.L99-table_data
	.text
.L0: add $0, %rax; jmp	loop_check
.L1: add $1, %rax; jmp	loop_check
.L2: add $2, %rax; jmp	loop_check
.L3: add $3, %rax; jmp	loop_check
.L4: add $3, %rax; jmp	loop_check
.L5: add $3, %rax; jmp	loop_check
.L6: add $3, %rax; jmp	loop_check
.L7: add $3, %rax; jmp	loop_check
.L8: add $3, %rax; jmp	loop_check
.L9: add $3, %rax; jmp	loop_check
.L10: add $3, %rax; jmp	loop_check
.L11: add $3, %rax; jmp	loop_check
.L12: add $3, %rax; jmp	loop_check
.L13: add $3, %rax; jmp	loop_check
.L14: add $3, %rax; jmp	loop_check
.L15: add $3, %rax; jmp	loop_check
.L16: add $3, %rax; jmp	loop_check
.L17: add $3, %rax; jmp	loop_check
.L18: add $3, %rax; jmp	loop_check
.L19: add $3, %rax; jmp	loop_check
.L20: add $3, %rax; jmp	loop_check
.L21: add $3, %rax; jmp	loop_check
.L22: add $3, %rax; jmp	loop_check
.L23: add $3, %rax; jmp	loop_check
.L24: add $3, %rax; jmp	loop_check
.L25: add $3, %rax; jmp	loop_check
.L26: add $3, %rax; jmp	loop_check
.L27: add $3, %rax; jmp	loop_check
.L28: add $3, %rax; jmp	loop_check
.L29: add $3, %rax; jmp	loop_check
.L30: add $3, %rax; jmp	loop_check
.L31: add $3, %rax; jmp	loop_check
.L32: add $3, %rax; jmp	loop_check
.L33: add $3, %rax; jmp	loop_check
.L34: add $3, %rax; jmp	loop_check
.L35: add $3, %rax; jmp	loop_check
.L36: add $3, %rax; jmp	loop_check
.L37: add $3, %rax; jmp	loop_check
.L38: add $3, %rax; jmp	loop_check
.L39: add $3, %rax; jmp	loop_check
.L40: add $3, %rax; jmp	loop_check
.L41: add $3, %rax; jmp	loop_check
.L42: add $3, %rax; jmp	loop_check
.L43: add $3, %rax; jmp	loop_check
.L44: add $3, %rax; jmp	loop_check
.L45: add $3, %rax; jmp	loop_check
.L46: add $3, %rax; jmp	loop_check
.L47: add $3, %rax; jmp	loop_check
.L48: add $3, %rax; jmp	loop_check
.L49: add $3, %rax; jmp	loop_check
.L50: add $3, %rax; jmp	loop_check
.L51: add $3, %rax; jmp	loop_check
.L52: add $3, %rax; jmp	loop_check
.L53: add $3, %rax; jmp	loop_check
.L54: add $3, %rax; jmp	loop_check
.L55: add $3, %rax; jmp	loop_check
.L56: add $3, %rax; jmp	loop_check
.L57: add $3, %rax; jmp	loop_check
.L58: add $3, %rax; jmp	loop_check
.L59: add $3, %rax; jmp	loop_check
.L60: add $3, %rax; jmp	loop_check
.L61: add $3, %rax; jmp	loop_check
.L62: add $3, %rax; jmp	loop_check
.L63: add $3, %rax; jmp	loop_check
.L64: add $3, %rax; jmp	loop_check
.L65: add $3, %rax; jmp	loop_check
.L66: add $3, %rax; jmp	loop_check
.L67: add $3, %rax; jmp	loop_check
.L68: add $3, %rax; jmp	loop_check
.L69: add $3, %rax; jmp	loop_check
.L70: add $3, %rax; jmp	loop_check
.L71: add $3, %rax; jmp	loop_check
.L72: add $3, %rax; jmp	loop_check
.L73: add $3, %rax; jmp	loop_check
.L74: add $3, %rax; jmp	loop_check
.L75: add $3, %rax; jmp	loop_check
.L76: add $3, %rax; jmp	loop_check
.L77: add $3, %rax; jmp	loop_check
.L78: add $3, %rax; jmp	loop_check
.L79: add $3, %rax; jmp	loop_check
.L80: add $3, %rax; jmp	loop_check
.L81: add $3, %rax; jmp	loop_check
.L82: add $3, %rax; jmp	loop_check
.L83: add $3, %rax; jmp	loop_check
.L84: add $3, %rax; jmp	loop_check
.L85: add $3, %rax; jmp	loop_check
.L86: add $3, %rax; jmp	loop_check
.L87: add $3, %rax; jmp	loop_check
.L88: add $3, %rax; jmp	loop_check
.L89: add $3, %rax; jmp	loop_check
.L90: add $3, %rax; jmp	loop_check
.L91: add $3, %rax; jmp	loop_check
.L92: add $3, %rax; jmp	loop_check
.L93: add $3, %rax; jmp	loop_check
.L94: add $3, %rax; jmp	loop_check
.L95: add $3, %rax; jmp	loop_check
.L96: add $3, %rax; jmp	loop_check
.L97: add $3, %rax; jmp	loop_check
.L98: add $3, %rax; jmp	loop_check
.L99: add $3, %rax; jmp	loop_check

loop_check:
	add $-1, %rdi
	jne loop_begin

	ret

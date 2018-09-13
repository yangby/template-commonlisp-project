ROSWELL = ros
RM = rm -f

test:
	${ROSWELL} run -l run-tests.lisp

clean:
	-find . -type f -name "*.fasl" | xargs -I {} ${RM} {}

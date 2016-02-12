STUDENT_ID=5XXXXXXXX
HOMEWORK=HW06_3
TASKNAME=T112_$(HOMEWORK)
OUTPUT=count_segment

$(OUTPUT): grader.o $(HOMEWORK)_$(STUDENT_ID).o
	gcc -Wall -o $(OUTPUT) grader.o $(HOMEWORK)_$(STUDENT_ID).o -lm

grader.o: grader.c $(TASKNAME).h
	gcc -Wall -c grader.c -lm

$(HOMEWORK)_$(STUDENT_ID).o: $(HOMEWORK)_$(STUDENT_ID).c $(TASKNAME).h
	gcc -Wall -c $(HOMEWORK)_$(STUDENT_ID).c -lm

clean:
	rm -vf *.o *.exe $(OUTPUT)


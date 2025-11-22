TARGET = a.out

OBJECTS = allocarray.o pre_random.o \
          read_input_nnp2.o read_io2.o read_layer_node2.o read_layer_node_frex2.o \
          energy_force_nnp2ab.o f_ef_deriv2ab.o \
          train2ab.o valid2ab.o \
          read_data_1.o read_data_2.o \
          timer.o blas.o linpack.o lbfgsb.o \
          main_training.o

MOD_FILES = allocarray.mod

FC = mpif90 -O2 -heap-arrays -fp-model strict

FFLAGS = 
MKLROOT = /luster/app/intel/compilers_and_libraries_2018.3.222/linux/mkl
MKLPATH = ${MKLROOT}/lib/intel64
LDFLAGS = -L/$(MKLPATH) -Wl,--start-group -lmkl_intel_lp64 -I/$(MKLROOT)/include/intel64 -lmkl_blas95_lp64 -lmkl_lapack95_lp64 -lmkl_intel_lp64 -lmkl_sequential -lmkl_core -lpthread -Wl,--end-group


.SUFFIXES: .o .f90
.f90.o:
	${FC} -c $<

${TARGET}: ${OBJECTS}
	${FC} -o $@ ${OBJECTS} ${LDFLAGS} ${FFLAGS}

	cp ${TARGET} ../

.PHONY: clean
clean:
	${RM} ${TARGET} ${OBJECTS} ${MOD_FILES}

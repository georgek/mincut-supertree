#=======================================================================
#@V@:Note: File automatically generated by VIDE: (01:23:07 PM 31 Oct 2001) (g++).
#  This file regenerated each time you run VIDE, so save under a
#    new name if you hand edit, or it will be overwritten.
#=======================================================================

# Standard defines:
CC  	=	g++

WRES	=	windres

HOMEV	=	$(HOME)/v
VPATH	=	$(HOMEV)/include
oDir	=	.
Bin		=	.
Src		=	.
libDirs	=	

incDirs	=   \
	-ITreeLib/gport \
	-ITreeLib

LIBS	=	 -lGTL
C_FLAGS	=	-g


TREELIBDIR = TreeLib
GPORTDIR = $(TREELIBDIR)/gport

# Source code for supertree
SUPERTREESOURCES = \
	supertree.cpp fheap.c fheap.h mincut_st.cpp mincut_st.h strong_components.h strong_components.cpp getoptions.h getoptions.cpp stgraph.cpp stgraph.h g2ps

# Source code for TreeLib
TREELIBSOURCES =  	$(GPORTDIR)/gdefs.h $(GPORTDIR)/gport.h $(GPORTDIR)/gport.cpp $(TREELIBDIR)/gtree.h $(TREELIBDIR)/gtree.cpp $(TREELIBDIR)/Parse.cpp $(TREELIBDIR)/Parse.h $(TREELIBDIR)/profile.h $(TREELIBDIR)/tokeniser.h $(TREELIBDIR)/tokeniser.cpp $(TREELIBDIR)/TreeLib.h $(TREELIBDIR)/TreeLib.cpp $(TREELIBDIR)/treereader.h $(TREELIBDIR)/treereader.cpp $(TREELIBDIR)/ntree.h $(TREELIBDIR)/ntree.cpp $(TREELIBDIR)/stree.h $(TREELIBDIR)/stree.cpp $(TREELIBDIR)/nodeiterator.h $(TREELIBDIR)/lcaquery.h $(TREELIBDIR)/lcaquery.cpp $(TREELIBDIR)/quartet.h $(TREELIBDIR)/quartet.cpp $(TREELIBDIR)/treewriter.cpp $(TREELIBDIR)/treewriter.h 


# Example files
EXAMPLEFILES= $(TREELIBDIR)/steel.tre $(TREELIBDIR)/sand98fig2.tre

# Distribution macros
PACKAGE_NAME  = supertree
VERSION_MAJOR = 0
VERSION_MINOR = 5
DISTPACKAGE = "$(PACKAGE_NAME)-$(VERSION_MAJOR).$(VERSION_MINOR).tgz"

SRCS	=\
	$(Src)/TreeLib/gtree.cpp\
	$(Src)/TreeLib/Parse.cpp\
	$(Src)/TreeLib/tokeniser.cpp\
	$(Src)/TreeLib/TreeLib.cpp\
	$(Src)/TreeLib/treereader.cpp\
	$(Src)/TreeLib/treewriter.cpp\
	$(Src)/TreeLib/gport/gport.cpp\
	$(Src)/TreeLib/ntree.cpp\
	$(Src)/TreeLib/lcaquery.cpp\
	$(Src)/TreeLib/quartet.cpp\
	$(Src)/supertree.cpp\
	$(Src)/getoptions.cpp\
	$(Src)/fheap.c\
	$(Src)/TreeLib/stree.cpp\
	$(Src)/mincut_st.cpp\
	$(Src)/stgraph.cpp\
	$(Src)/strong_components.cpp

EXOBJS	=\
	$(oDir)/gtree.o\
	$(oDir)/Parse.o\
	$(oDir)/tokeniser.o\
	$(oDir)/TreeLib.o\
	$(oDir)/treereader.o\
	$(oDir)/treewriter.o\
	$(oDir)/gport.o\
	$(oDir)/ntree.o\
	$(oDir)/lcaquery.o\
	$(oDir)/quartet.o\
	$(oDir)/supertree.o\
	$(oDir)/getoptions.o\
	$(oDir)/fheap.o\
	$(oDir)/stree.o\
	$(oDir)/mincut_st.o\
	$(oDir)/stgraph.o\
	$(oDir)/strong_components.o

ALLOBJS	=	$(EXOBJS)
ALLBIN	=	$(Bin)/supertree
ALLTGT	=	$(Bin)/supertree

# User defines:

#@# Targets follow ---------------------------------

all:	
	$(MAKE) $(ALLTGT)

objs:	$(ALLOBJS)

cleanobjs:
	rm -f $(ALLOBJS)

cleanbin:
	rm -f $(ALLBIN)

clean:	cleanobjs cleanbin

cleanall:	cleanobjs cleanbin

dist:
	echo "Distribution of $(PACKAGE_NAME)-$(VERSION_MAJOR).$(VERSION_MINOR) " > distdate.txt
	echo "(c) 2012 Roderic D. M. Page (rdmpage@gmail.com)" >> distdate.txt
	echo "Packaged: " `date` >> distdate.txt
	rm -f $(DISTPACKAGE)
	tar cvzf $(DISTPACKAGE) $(EXAMPLEFILES) $(TREELIBSOURCES) $(SUPERTREESOURCES) $(NCLSOURCES) $(NCLHEADERS) $(TREELIBSOURCES)  COPYING Makefile  \
		distdate.txt


#@# User Targets follow ---------------------------------


#@# Dependency rules follow -----------------------------

$(Bin)/supertree: $(EXOBJS)
	$(CC) -o $(Bin)/supertree $(EXOBJS) $(incDirs) $(libDirs) $(LIBS) $(L_FLAGS)

$(oDir)/gtree.o: TreeLib/gtree.cpp TreeLib/gtree.h TreeLib/TreeLib.h \
 TreeLib/gport/gport.h TreeLib/gport/gdefs.h
	$(CC) $(C_FLAGS) $(incDirs) -c -o $@ $<

$(oDir)/Parse.o: TreeLib/Parse.cpp TreeLib/Parse.h
	$(CC) $(C_FLAGS) $(incDirs) -c -o $@ $<

$(oDir)/tokeniser.o: TreeLib/tokeniser.cpp TreeLib/tokeniser.h
	$(CC) $(C_FLAGS) $(incDirs) -c -o $@ $<

$(oDir)/TreeLib.o: TreeLib/TreeLib.cpp TreeLib/TreeLib.h TreeLib/Parse.h
	$(CC) $(C_FLAGS) $(incDirs) -c -o $@ $<

$(oDir)/treereader.o: TreeLib/treereader.cpp TreeLib/treereader.h \
 TreeLib/TreeLib.h TreeLib/tokeniser.h
	$(CC) $(C_FLAGS) $(incDirs) -c -o $@ $<

$(oDir)/treewriter.o: TreeLib/treewriter.cpp TreeLib/treewriter.h \
 TreeLib/TreeLib.h 
	$(CC) $(C_FLAGS) $(incDirs) -c -o $@ $<

$(oDir)/gport.o: TreeLib/gport/gport.cpp TreeLib/gport/gport.h \
 TreeLib/gport/gdefs.h
	$(CC) $(C_FLAGS) $(incDirs) -c -o $@ $<

$(oDir)/ntree.o: TreeLib/ntree.cpp TreeLib/ntree.h TreeLib/TreeLib.h \
 TreeLib/gtree.h TreeLib/gport/gport.h TreeLib/gport/gdefs.h
	$(CC) $(C_FLAGS) $(incDirs) -c -o $@ $<

$(oDir)/lcaquery.o: TreeLib/lcaquery.cpp TreeLib/lcaquery.h TreeLib/TreeLib.h TreeLib/nodeiterator.h
	$(CC) $(C_FLAGS) $(incDirs) -c -o $@ $<

$(oDir)/quartet.o: TreeLib/quartet.cpp TreeLib/quartet.h TreeLib/lcaquery.h 
	$(CC) $(C_FLAGS) $(incDirs) -c -o $@ $<

$(oDir)/stgraph.o: stgraph.cpp stgraph.h 
	$(CC) $(C_FLAGS) $(incDirs) -c -o $@ $<


$(oDir)/supertree.o: supertree.cpp TreeLib/ntree.h TreeLib/TreeLib.h \
 TreeLib/gtree.h TreeLib/gport/gport.h TreeLib/gport/gdefs.h \
 TreeLib/stree.h TreeLib/profile.h TreeLib/treereader.h \
 TreeLib/tokeniser.h \
 mincut_st.h strong_components.h getoptions.h
	$(CC) $(C_FLAGS) $(incDirs) -c -o $@ $<

$(oDir)/getoptions.o: getoptions.cpp getoptions.h
	$(CC) $(C_FLAGS) $(incDirs) -c -o $@ $<

$(oDir)/fheap.o: fheap.c fheap.h
	$(CC) $(C_FLAGS) $(incDirs) -c -o $@ $<

$(oDir)/stree.o: TreeLib/stree.cpp TreeLib/stree.h TreeLib/gtree.h \
 TreeLib/TreeLib.h TreeLib/gport/gport.h TreeLib/gport/gdefs.h
	$(CC) $(C_FLAGS) $(incDirs) -c -o $@ $<

$(oDir)/mincut_st.o: mincut_st.cpp mincut_st.h fheap.h
	$(CC) $(C_FLAGS) $(incDirs) -c -o $@ $<

$(oDir)/strong_components.o: strong_components.cpp strong_components.h
	$(CC) $(C_FLAGS) $(incDirs) -c -o $@ $<

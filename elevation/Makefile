TARGET  = elevation
PICTURES = $(TARGET)-ru $(TARGET)-en $(TARGET)-cu

TARGET_BW = $(TARGET)-bw
PICTURES_BW = $(TARGET_BW)-ru $(TARGET_BW)-en $(TARGET_BW)-cu

XELATEX = TEXINPUTS=.:../lib:$(TEXINPUTS) xelatex -halt-on-error

.SUFFIXES: .tex .pdf


all: $(TARGET:=.pdf)

$(TARGET:=.pdf): $(PICTURES:=.pdf) ../lib/cards.tex ../lib/kondakia.sty
	$(XELATEX) -jobname $(TARGET) "\input{cards}"


bw: $(TARGET_BW:=.pdf)

$(TARGET_BW:=.pdf): $(PICTURES_BW:=.pdf) ../lib/cards.tex ../lib/kondakia.sty
	$(XELATEX) -jobname $(TARGET_BW) "\def\forcebw{}\input{cards}"


clean:
	rm -f *.aux *.log *.pdf

install: all bw
	mkdir -p ../docs/files/
	cp *.pdf ../docs/files/

$(TARGET)-ru.pdf: $(TARGET)-ru.tex ../lib/kondakia.sty
	$(XELATEX) $<

$(TARGET)-en.pdf: $(TARGET)-en.tex ../lib/kondakia.sty
	$(XELATEX) $<

$(TARGET)-cu.pdf: $(TARGET)-cu.tex ../lib/kondakia.sty
	$(XELATEX) $<

$(TARGET_BW)-ru.pdf: $(TARGET)-ru.tex ../lib/kondakia.sty
	$(XELATEX) -jobname $(TARGET_BW)-ru "\def\forcebw{}\input{$(TARGET)-ru}"

$(TARGET_BW)-en.pdf: $(TARGET)-en.tex ../lib/kondakia.sty
	$(XELATEX) -jobname $(TARGET_BW)-en "\def\forcebw{}\input{$(TARGET)-en}"

$(TARGET_BW)-cu.pdf: $(TARGET)-cu.tex ../lib/kondakia.sty
	$(XELATEX) -jobname $(TARGET_BW)-cu "\def\forcebw{}\input{$(TARGET)-cu}"

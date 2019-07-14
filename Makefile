# Copyright 2019 Manuel Schmidt 
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Published at https://github.com/mschmnet/awk-slides/

MARP=./node_modules/.bin/marp

FILES:=$(patsubst %.md, %, $(wildcard *.md))
FILES:=$(filter-out README, $(FILES))

all: pdf html

pdf: $(patsubst %,pdf/%.pdf,$(FILES))

html: $(patsubst %,html/%.htm,$(FILES))

pdf/%.pdf: %.md
	$(MAKE) $(MARP)
	@echo "Generating pdf slides..."
	$(MARP) $< --output $@	

html/%.htm: %.md
	$(MAKE) $(MARP)
	@echo "Generating html slides..."
	$(MARP) $< --output $@	

$(MARP):
	npm install --save-dev @marp-team/marp-cli	

clean:
	rm pdf/*.pdf
	rm html/*.htm

help: list

list:
	@echo "make [all]: Generates html and pdf slides"
	@echo "make html: Generates html slides"
	@echo "make pdf: Generates pdf slides"
	@echo "make clean: Remove all generated files"


.PHONY: pdf html help list clean


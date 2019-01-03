1. brew install python, python@2
2. sudo easy_install pip, pip3
which pip, which pip3
---
Here are some stand-alone linters categorized with brief descriptions:

Linter	          Category	                                      Description
Pylint	         Logical & Stylistic	    Checks for errors, tries to enforce a coding standard, looks for code smells
PyFlakes	       Logical	                Analyzes programs and detects various errors
pycodestyle	     Stylistic	              Checks against some of the style conventions in PEP 8
pydocstyle	     Stylistic	              Checks compliance with Python docstring conventions
Bandit	         Logical	                Analyzes code to find common security issues
MyPy	           Logical	                Checks for optionally-enforced static types

And here are some code analysis and formatting tools:

Tool	            Category	                                      Description
Mccabe	         Analytical	               Checks McCabe complexity
Radon	           Analytical	               Analyzes code for various metrics (lines of code, complexity, and so on)
Black	           Formatter	               Formats Python code without compromise
Isort	           Formatter	               Formats imports by sorting alphabetically and separating into sections

3. pip or (pip3) install pycodestyle, pep8, pyflakes, flake8, hacking, pylint
---
Usage: 
pycodestyle -h (help)
pycodestyle <filename>
---
pycodestyle --show-source ./<script.py>
---
flake8 ./test2.py
together with hacking pakage that's been installed it's very handy
----

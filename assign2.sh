#!/bin/bash
chmod +x percent-india.sh
jupyter-nbconvert --ExecutePreprocessor.timeout='None' --execute --clear-output Q1.ipynb
chmod +x gender-india.sh
jupyter-nbconvert --ExecutePreprocessor.timeout='None' --execute --clear-output Q2.ipynb
chmod +x geography-india.sh
jupyter-nbconvert --ExecutePreprocessor.timeout='None' --execute --clear-output Q3.ipynb
chmod +x 3-to-2-ratio.sh
jupyter-nbconvert --ExecutePreprocessor.timeout='None' --execute --clear-output Q4a.ipynb
chmod +x 2-to-1-ratio.sh
jupyter-nbconvert --ExecutePreprocessor.timeout='None' --execute --clear-output Q4b.ipynb
chmod +x age-india.sh
jupyter-nbconvert --ExecutePreprocessor.timeout='None' --execute --clear-output Q5.ipynb
chmod +x literacy-india.sh
jupyter-nbconvert --ExecutePreprocessor.timeout='None' --execute --clear-output Q6.ipynb
chmod +x region-india.sh
jupyter-nbconvert --ExecutePreprocessor.timeout='None' --execute --clear-output Q7.ipynb
chmod +x age-gender.sh
jupyter-nbconvert --ExecutePreprocessor.timeout='None' --execute --clear-output Q8.ipynb
chmod +x literacy-gender.sh
jupyter-nbconvert --ExecutePreprocessor.timeout='None' --execute --clear-output Q9.ipynb

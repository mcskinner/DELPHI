FROM python:3.6

RUN pip install --upgrade pip

ADD requirements.txt .
RUN pip install -r requirements.txt

ADD DELPHI_*.py /code/
ENTRYPOINT [ "python", "/code/DELPHI_model.py" ]

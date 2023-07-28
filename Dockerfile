FROM python:3.11-alpine

COPY ./stocks_products ./stocks_products

WORKDIR /stocks_products

RUN python -m pip install --upgrade pip && pip install -r requirements.txt

RUN chmod +x ./stocks_products/entrypoint.sh

ENTRYPOINT ["./stocks_products/entrypoint.sh"]

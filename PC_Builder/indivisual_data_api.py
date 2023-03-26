import pymysql
from flask import Flask
from flask_restful import Resource, Api, reqparse
from flask_cors import CORS
import requests
import ip_env

app = Flask(__name__)
CORS(app)
api = Api(app)
con = pymysql.connect(host="localhost", user="root", password="", db="zozo_hub")
cur = con.cursor()


class Indivisual(Resource):
    def get(self):
        name = ""
        image = ""
        details = ""
        parser = reqparse.RequestParser()
        parser.add_argument('component', required=True)
        component = parser.parse_args()['component']
        parser.add_argument('unique_name', required=True)
        unique_name = parser.parse_args()['unique_name']
        page = requests.get("http://"+ip_env.IP_ADDRESS+":5000/compatibility-check?psu=&pc_case=&cpu_cooler=&storage=&memory=&cpu=&graphics_card=&motherboard=&search="+component)
        for x in page.json():
            if ''.join(x["name"].splitlines()) == unique_name:
                name = x["name"]
                image = x["image"]
                details = x["details"]
                break
        query = "SELECT `id`,`price` FROM "+component+" WHERE `name`='"+unique_name+"'"
        cur.execute(query)
        if cur.rowcount != 0:
            row_data=cur.fetchone()
            product_id = row_data[0]
            price = row_data[1]
        else:
            product_id = None
            price = None

        if component == "cpu":
            comp_id = 1
        elif component == "cpu_cooler":
            comp_id = 2
        elif component == "graphics_card":
            comp_id = 3
        elif component == "memory":
            comp_id = 4
        elif component == "motherboard":
            comp_id = 5
        elif component == "pc_case":
            comp_id = 6
        elif component == "psu":
            comp_id = 7
        elif component == "storage":
            comp_id = 8
        return [{"id": product_id, "name": name, "image": image, "details": details, "price": price, "comp_id":comp_id}]


api.add_resource(Indivisual, '/indivisual-data')

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5051)

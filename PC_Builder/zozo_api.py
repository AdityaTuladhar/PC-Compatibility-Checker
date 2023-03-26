import pymysql
from flask import Flask
from flask_restful import Resource, Api, reqparse
from flask_cors import CORS


app = Flask(__name__)
CORS(app)
api = Api(app)
con = pymysql.connect(host="localhost", user="root", password="", db="zozo_hub")
cur = con.cursor()


class Zozo(Resource):
    def get(self):
        return_dict = []
        parser = reqparse.RequestParser()
        parser.add_argument('search', required=True)
        search = parser.parse_args()['search']
        query = "SELECT * FROM "+search
        cur.execute(query)
        if search == "cpu":
            comp_id = 1
        elif search == "cpu_cooler":
            comp_id = 2
        elif search == "graphics_card":
            comp_id = 3
        elif search == "memory":
            comp_id = 4
        elif search == "motherboard":
            comp_id = 5
        elif search == "pc_case":
            comp_id = 6
        elif search == "psu":
            comp_id = 7
        elif search == "storage":
            comp_id = 8

        for row in cur:
            return_dict.append({"id": row[0], "name": row[2], "image": row[1], "details": row[4], "price": row[3], "comp_id":comp_id})
        return return_dict


api.add_resource(Zozo, '/zozo-hub')

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5050)

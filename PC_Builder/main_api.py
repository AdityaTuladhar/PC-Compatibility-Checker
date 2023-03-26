import main
from flask import Flask
from flask_restful import Resource, Api, reqparse
from flask_cors import CORS
import requests
import ip_env

app = Flask(__name__)
CORS(app)
api = Api(app)


class CompatibilityCheck(Resource):
    def get(self):
        parser = reqparse.RequestParser()

        parser.add_argument('psu', required=True)
        parser.add_argument('pc_case', required=True)
        parser.add_argument('cpu_cooler', required=True)
        parser.add_argument('storage', required=True)
        parser.add_argument('memory', required=True)
        parser.add_argument('cpu', required=True)
        parser.add_argument('graphics_card', required=True)
        parser.add_argument('motherboard', required=True)

        relation = parser.parse_args()
        parser.add_argument('search', required=True)
        search = parser.parse_args()['search']
        page = requests.get("http://"+ip_env.IP_ADDRESS+":5050/zozo-hub?search=" + search)
        temp_list = {}
        temp_list2 = {}
        for x in page.json():
            temp_list[x['name']] = x['id']
            temp_list2[x['name']] = x['price']

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

        return_result = main.check(search, relation)
        for res in return_result:
            res['comp_id'] = comp_id
            if res['name'] in temp_list.keys():
                res['id'] = temp_list[res['name']]
                res['isAvailable'] = True
                res['price'] = temp_list2[res['name']]
            else:
                res['isAvailable'] = False
        return return_result

api.add_resource(CompatibilityCheck, '/compatibility-check')

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5000)

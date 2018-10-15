from flask import Flask, request
from flask_restplus import Resource, Api, fields

app = Flask(__name__)
api = Api(app)

food_model = api.model('Food', {'food' : fields.String('Name of a food')})

foods = []
pizza = {'food' : 'pizza'}
foods.append(pizza)

@api.route('/food')
class Food(Resource):
    def get(self):
        return foods

    @api.expect(food_model)
    def post(self):
        foods.append(api.payload)
        return {'result' : 'Food added to menu'}, 201

if __name__ == '__main__':
    app.run(debug=True)
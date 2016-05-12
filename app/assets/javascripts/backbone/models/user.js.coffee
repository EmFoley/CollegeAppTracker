class Collegeapptracker.Models.User extends Backbone.Model
  paramRoot: 'user'

  defaults:
    first_name: null
    last_name: null
    email: null

class Collegeapptracker.Collections.UsersCollection extends Backbone.Collection
  model: Collegeapptracker.Models.User
  url: '/users'

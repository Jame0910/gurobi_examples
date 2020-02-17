#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Feb  6 22:04:49 2020

@author: yj
"""

# This example formulates and solves the following simple MIP model:
#  maximize
#        x +   y + 2 z
#  subject to
#        x + 2 y + 3 z <= 4
#        x +   y       >= 1
#        x, y, z binary


import gurobipy as gp
from gurobipy import GRB


try:
    
    # Create a new model
    m = gp.Model("mip1")
    
    # Create variables
    x = m.addVar(vtype=GRB.BINARY, name='x')
    y = m.addVar(vtype=GRB.BINARY, name='y')
    z = m.addVar(vtype=GRB.BINARY, name='z')
    
    # Set objective
    m.setObjective(x + 2 * y + 3 * z, GRB.MAXIMIZE)
    
    # Add constraints
    m.addConstr(x + 2 * y + 3 * z <= 4)
    m.addConstr(x + y >= 1)
    
    # Optimize model
    m.optimize()
    
    for v in m.getVars():
        print('%s=%g' % (v.varName, v.x))
    
    print('Obj: %g' % m.objVal)

except gp.GurobiError as e:
    print('Error code' + str(e.errno) + ':' + str(e))
    
except AttributeError:
    print('Encountered an attribute error.')
    
    
    
    
    
    
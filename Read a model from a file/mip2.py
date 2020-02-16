#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Feb  6 16:50:29 2020

@author: yj
"""

import sys
import gurobipy as gp
from gurobipy import GRB

#%%
if len(sys.argv) < 2:
    print('Usage: mip2.py filename')
    quit()

# Read and solve model

model = gp.read(sys.argv[1])

#%%
if model.isMIP == 0:
    print("Model is not a MIP")
    sys.exit()

model.optimize()

if model.status == GRB.OPTIMAL:
    print('Optimal objective: %g' % model.objVal)
elif model.status == GRB.INF_OR_UNBD:
    print('Model is infeasible or unbounded')
    sys.exit(0)
elif model.status == GRB.INFEASIBLE:
    print('Model is infeasible')
    sys.exit()
elif model.status == GRB.UNBOUNDED:
    print('Model is unbounded')
    sys.exit()
else:
    print('Optimization ended with status %d' % model.status)
    sys.exit(0)

# Iterate over the solutions and compute the objectives
model.Params.outputFlag = 0
print('')
for k in range(model.solCount):
    model.Params.solutionNumber = k
    objn = 0
    for v in model.getVars():
        objn += v.obj * v.xn
    print('Solution %d havs objective %g' % (k, objn))
print('')
model.Params.outputFlag = 1

fixed = model.fixed()
fixed.Params.presolve = 0
fixed.optimize()

if fixed.status != GRB.OPTIMAL:
    print('Error: fixed model isn\'t optimal')
    sys.exit(1)
    
diff = model.objVal - fixed.objVal

if abs(diff) > 1e-6 * (1.0 + abs(model.objVal)):
    print('Error: objective values are different')
    sys.exit()

# Print values of nonzero variables
for v in fixed.getVars():
    if v.x != 0:
        print('%s %g' % (v.varName, v.x))
















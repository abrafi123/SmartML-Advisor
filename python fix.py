with open('routers/routes.py', 'r', encoding='utf-8') as f:
    content = f.read()

content = content.replace('algo.table.columns', 'algo._table_.columns')
content = content.replace('profile.table.columns', 'profile._table_.columns')

with open('routers/routes.py', 'w', encoding='utf-8') as f:
    f.write(content)

print('Done!')
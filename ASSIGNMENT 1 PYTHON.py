#!/usr/bin/env python
# coding: utf-8

# In[1]:


Meals=['Pizza','Noodle','Burger','Meatballs','Sandwich']


# In[2]:


Meals[:3]


# In[3]:


Meals.append('Tomatosoup')


# In[4]:


Meals


# In[5]:


for x in Meals:
    print(x);


# In[6]:


for x in Meals:
    if x!='Tomatosoup':
        print(x)
    else:
        print ()


# In[7]:


countries={'India':'NewDelhi','canada':'ottawa','srilank':'columbo','norway':'oslo','southafrica':'pretoria'}


# In[8]:


countries['Newzealand']='wellington'
print(countries);


# In[9]:


for x in countries:
    print (x);


# In[10]:


for x in countries:
    print(countries[x]);


# In[11]:


for x in countries:
    print (x +" => " + countries[x])


# In[ ]:





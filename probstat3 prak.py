#!/usr/bin/env python
# coding: utf-8

# In[15]:


import numpy as np
from scipy.stats import multinomial

# Definisikan parameter distribusi Multinomial
n_trials_Rafael = 10  # Jumlah percobaan
probabilities_Rafael = [0.2, 0.3, 0.5]  # Probabilitas untuk masing-masing kategori

# Buat objek distribusi Multinomial
multinom_dist_Rafael = multinomial(n_trials_Rafael, probabilities_Rafael)

# Generate sampel dari distribusi Multinomial
sample_Rafael = multinom_dist_Rafael.rvs()
print("Sampel hasil percobaan:")
print(sample_Rafael)

# Hitung probabilitas massa dari sampel yang dihasilkan
pmf_sample_Rafael = multinom_dist_Rafael.pmf(sample_Rafael)
print("\nProbabilitas massa dari sampel yang dihasilkan:", pmf_sample_Rafael)


# In[3]:


from scipy.stats import multinomial

# Parameter
n_trials = 20
probabilities = [8/20, 6/20, 6/20] # Probabilitas nasi goreng, mie goreng, dan ayam goreng

# Buat objek distribusi Multinomial
multinom_dist = multinomial(n_trials, probabilities)

# Hitung probabilitas massa outcome = [8, 6, 6] # Jumlah pelanggan yang memilih masing-masing makanan 
outcome = [8, 6, 6]
pmf_outcome = multinom_dist.pmf(outcome)
print("Probabilitas massa:", pmf_outcome)


# In[6]:


import numpy as np
from scipy.stats import hypergeom

# Definisikan parameter distribusi Hipergeometrik
N = 50  # Jumlah total elemen dalam populasi
K = 20  # Jumlah elemen yang dianggap sukses dalam populasi
n = 10  # Jumlah pengambilan sampel tanpa pengembalian
k = 5   # Jumlah sukses yang ingin diperoleh dalam sampel

# Buat objek distribusi Hipergeometrik
hypergeom_dist = hypergeom(N, K, n)

# Hitung probabilitas massa dari k sukses dalam n pengambilan sampel
pmf_value = hypergeom_dist.pmf(k)
print("Probabilitas massa:", pmf_value)


# In[7]:


from scipy.stats import hypergeom

# Parameter
N = 30  # Jumlah total bola dalam kotak
K = 10  # Jumlah bola berwarna merah
n = 8   # Jumlah bola yang diambil secara acak tanpa pengembalian
k1 = 3  # Jumlah bola yang diambil secara acak tanpa pengembalian
k2 = 2  # Jumlah bola berwarna merah yang diinginkan
k3 = 3  # Jumlah bola berwarna biru yang diinginkan

# Buat objek distribusi Hipergeometrik
hypergeom_dist = hypergeom(N, K, n)

# Hitung probabilitas massa
pmf_value = hypergeom_dist.pmf([k1, k2, k3])
print("Probabilitas massa:", pmf_value)


# In[8]:


import numpy as np
from scipy.stats import poisson

# Definisikan parameter distribusi Poisson
mu = 2  # Parameter lambda (tingkat kejadian)

# Buat objek distribusi Poisson
poisson_dist = poisson(mu)

# Generate sampel dari distribusi Poisson
sample = poisson_dist.rvs(size=10)  # Menghasilkan 10 sampel acak dari distribusi
print("Sampel hasil distribusi Poisson:")
print(sample)

# Hitung probabilitas massa dari sampel yang dihasilkan
pmf_sample = poisson_dist.pmf(sample)
print("\nProbabilitas massa dari sampel yang dihasilkan:", pmf_sample)


# In[9]:


from scipy.stats import poisson

# Parameter distribusi Poisson
mu = 4  # Tingkat kejadian (rata-rata paket per jam)

# Mencari probabilitas massa untuk tepat 6 paket
prob_tepat_6 = poisson.pmf(6, mu)
print("Peluang bahwa akan tiba tepat 6 paket dalam jam berikutnya:", prob_tepat_6)


# In[ ]:





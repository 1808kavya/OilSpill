
% Calcolo dei parametri basati sulla Matrice di 
% co-occorrenza dei livelli di grigio

function [homogeneity, contrast, entropy, correlation, dissimilarity]= spilltexture(img)
glcm = graycomatrix(img);

% Codice base di Matlab
% stats = graycoprops(glcm);
% stats.Homogeneity

% Le features sono state calcolate utilizzando
% uno script esterno

features = glcmfeatures( glcm, 0 );

% 1. Homogeneity
homogeneity = features.homom;

% 2. Contrast
contrast = features.contr;

% 3. Entropy
entropy = features.entro;

% 4. Correlation
correlation = features.corrm;

% 5. Dissimilarity
dissimilarity = features.dissi;

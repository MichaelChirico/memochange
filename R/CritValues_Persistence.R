#' function to extract critical values. For internal use only.
#' @keywords internal
getCV<-function(){
b<-matrix(c(0.239, 0.408, 0.308, 0.237, 0.409, 0.311, 0.290, 0.470, 0.376,
            0.293, 0.480, 0.383, 0.290, 0.481, 0.382, 0.336, 0.538, 0.446,
            0.389, 0.635, 0.548, 0.392, 0.632, 0.542, 0.431, 0.696, 0.609,
            0.511, 1.062, 0.805, 0.497, 1.014, 0.771, 0.579, 1.189, 0.904,
            0.595, 1.248, 0.953, 0.577, 1.187, 0.899, 0.658, 1.367, 1.046,
            0.773, 1.699, 1.325, 0.714, 1.538, 1.186, 0.812, 1.738, 1.371),ncol=9,nrow=6,byrow = TRUE)
rownames(b)<-c("Mean 10%","Mean 5%","Mean 1%","Trend 10%","Trend 5%","Trend 1%")
colnames(b)<-c("MSm","MEm","MXm","MSmR","MEmR","MXmR","MSmM","MEmM","MXmM")

b_min<-matrix(c(1.408, 2.162,1.722,1.390,2.187,1.746,2.115,3.118,2.617,
            2.070,3.060,2.570,2.119,3.120,2.623,2.969,4.197,3.647,
            4.255,5.779,5.216,4.350,6.073,5.482,5.694,7.667,7.053,
            2.696,5.028,3.893,2.669,4.967,3.803,3.918,6.991,5.497,
            3.845,6.847,5.408,3.828,6.738,5.271,5.285,9.182,7.399,
            7.640,12.865,10.473,7.311,12.133,9.984,9.774,15.864,13.359),ncol=9,nrow=6,byrow = TRUE)
rownames(b_min)<-c("Mean 10%","Mean 5%","Mean 1%","Trend 10%","Trend 5%","Trend 1%")
colnames(b_min)<-c("MSm","MEm","MXm","MSmR","MEmR","MXmR","MSmM","MEmM","MXmM")

cv_ratio_test<-matrix(c(3.56,	3.48,	12.91,	3.56,	3.48,	12.88,	4.66,	5.23,	17.00,
4.67,	5.31,	17.24,	4.64,	5.25,	17.00,	5.91,	7.38,	21.72,
7.75,	11.02,	29.38,	7.67,	10.49,	28.37,	9.26,	13.34,	34.31,
3.55,	3.48,	13.16,	3.55,	3.46,	13.15,	4.67,	5.23,	17.40,
4.66,	5.29,	17.48,	4.68,	5.27,	17.51,	5.92,	7.40,	22.16,
7.72,	10.43,	28.73,	7.73,	10.89,	29.55,	9.22,	13.30,	34.67,
3.51,	3.36,	13.14,	3.54,	3.47,	13.37,	4.62,	5.11,	17.31,
4.58,	5.06,	17.18,	4.68,	5.27,	17.65,	5.85,	7.24,	22.06,
7.56,	10.21,	28.58,	7.82,	10.69,	29.64,	9.21,	13.20,	34.82,
3.52,	3.41,	13.37,	3.59,	3.44,	13.41,	4.63,	5.11,	17.56,
4.62,	5.14,	17.64,	4.63,	5.17,	17.73,	5.80,	7.21,	22.27,
7.59,	10.37,	29.06,	7.65,	10.44,	29.40,	9.24,	13.21,	34.96,
3.51,	3.35,	13.42,	3.53,	3.46,	13.70,	4.60,	5.07,	17.69,
4.60,	5.12,	17.80,	4.60,	5.11,	17.85,	5.79,	7.10,	22.36,
7.52,	10.37,	29.75,	7.42,	10.29,	29.36,	8.94,	12.93,	35.06,
3.51,	3.41,	13.81,	3.51,	3.41,	13.81,	4.63,	5.16,	18.15,
4.61,	5.21,	18.34,	4.61,	5.21,	18.34,	5.88,	7.28,	23.15,
7.69,	10.56,	30.34,	7.69,	10.56,	30.34,	9.24,	13.14,	35.71,
2.38,	1.55,	6.71,	2.38,	1.53,	6.66,	2.91,	2.01,	8.28,
2.91,	2.02,	8.39,	2.90,	2.02,	8.28,	3.48,	2.61,	10.04,
4.28,	3.50,	12.52,	4.24,	3.49,	12.66,	4.87,	4.29,	14.50,
2.38,	1.52,	6.70,	2.37,	1.53,	6.73,	2.92,	1.98,	8.31,
2.92,	2.00,	8.30,	2.92,	1.99,	8.40,	3.47,	2.54,	10.01,
4.23,	3.43,	12.54,	4.23,	3.42,	12.46,	4.88,	4.29,	14.73,
2.35,	1.50,	6.75,	2.37,	1.51,	6.72,	2.88,	1.96,	8.34,
2.87,	1.96,	8.37,	2.90,	1.98,	8.40,	3.43,	2.50,	10.07,
4.18,	3.33,	12.46,	4.22,	3.41,	12.59,	4.80,	4.10,	14.53,
2.35,	1.50,	6.83,	2.37,	1.51,	6.86,	2.88,	1.96,	8.42,
2.89,	1.95,	8.40,	2.88,	1.98,	8.55,	3.40,	2.50,	10.23,
4.13,	3.31,	12.54,	4.17,	3.47,	12.79,	4.77,	4.09,	14.64,
2.35,	1.50,	6.89,	2.37,	1.50,	6.91,	2.87,	1.95,	8.50,
2.87,	1.96,	8.58,	2.88,	1.96,	8.51,	3.42,	2.47,	10.26,
4.20,	3.32,	12.69,	4.21,	3.36,	12.72,	4.79,	4.08,	14.59,
2.36,	1.50,	6.98,	2.36,	1.50,	6.98,	2.86,	1.95,	8.57,
2.86,	1.96,	8.62,	2.86,	1.96,	8.62,	3.42,	2.49,	10.33,
4.20,	3.30,	12.77,	4.20,	3.30,	12.77,	4.79,	4.14,	14.77),ncol=9,nrow=36,byrow=TRUE)
colnames(cv_ratio_test)<-c("MS","ME","MX","MSR","MER","MXR","MSM","MEM","MXM")
rownames(cv_ratio_test)<-c(rep(c(rep(100,3),rep(150,3),rep(200,3),rep(300,3),rep(500,3),rep(1000,3)),2))


cv_lbi_test<-matrix(c(0.729,0.987,1.590,0.297 ,0.373, 0.563,
                      0.374,0.505,0.822,0.151 ,0.193, 0.297,
                      1.224 ,1.586, 2.529,0.690 ,0.897, 1.443,
                      0.729,0.987,1.590,0.297 ,0.373, 0.563,
                      0.374,0.505,0.822,0.151 ,0.193, 0.297,
                      1.224 ,1.586, 2.529,0.690 ,0.897, 1.443,
                      0.913 ,1.214, 1.787,0.354, 0.439, 0.638,
                      0.473,0.631,0.940, 0.182, 0.227, 0.335,
                      1.561, 1.974, 2.939, 0.866, 1.120, 1.650),ncol=9,nrow=6)
rownames(cv_lbi_test)<-c("Mean 10%","Mean 5%","Mean 1%","Trend 10%","Trend 5%","Trend 1%")
colnames(cv_lbi_test)<-c("MS","ME","MX","MSR","MER","MXR","MSM","MEM","MXM")

cv_cusum_test<-matrix(c(0.16,	0.28,	0.37,	2.70,	3.62,	6.24,
0.14,		0.25,	0.34,	2.86,	3.90,		6.92,
0.13,		0.24,	0.33,	2.97,	4.16,		7.61,
0.13,		0.24,	0.33,	3.01,	4.20,		7.77,
0.12,		0.23,	0.32,	3.09,	4.32,		8.01,
0.34,		0.47,	0.56,	1.78,	2.11,		2.89,
0.30,		0.43,	0.52,	1.93,	2.34,		3.29,
0.27,		0.40,	0.49,	2.03,	2.48,		3.69,
0.26,		0.39,	0.48,	2.09,	2.58,		3.76,
0.25,		0.38,	0.47,	2.13,	2.67,		4.00),nrow=10,ncol=6,byrow=TRUE)
colnames(cv_cusum_test)<-c("1%","5%","10%","90%","95%","99%")
rownames(cv_cusum_test)<-c(rep(c(50,100,250,500,1000),2))


respcurve<-matrix(c(1.063,0,0,0,-41.002,133.627,-183.98,131.206,-47.89,7.102,
1.601,0,-7.486,9.449,0,0,-17.596,25.299,-13.724,2.688,
-221.524,2316.11,-10522.512,27414.943,-45191.318,48907.541,-34769.527,15666.998,-4062.561,462.173,
5145.518,-54469.126,252323.451,-671384.183,1131196.84,-1252080.53,910897.739,-420239.255,111628.329,-13015.697,
10493.76,-110784.01,511682.48,-1357262,2279365.93,-2514370.73,1822761.11,-837851.29,221721.78,-25752.77,
-1174.527,0,58540.259,-312952.617,792898.52,-1170633.31,1062803.45,-586254.848,180679.152,-23898.266,
1.051,0,0,-4.815,0,18.496,-25.406,13.556,-2.63,0,
1.151,0,0,-9.281,21.702,-21.366,9.999,-1.824,0,0,
-0.455,0,53.424,-234.177,459.766,-499.311,310.551,-103.809,14.485,0,
1.054,0,0,0,3.328,-3.117,0.868,0,0,0,
1.008,0,0,0,8.274,-13.18,8.509,-1.971,0,0,
1.187,0,0,0,6.272,-5.03,1.557,0,0,0),nrow=12,ncol=10,byrow=TRUE)

cv_LKSN_test<-matrix(c(-2.95,-3.26,-2.72,-3.02,-2.53,-2.83,-2.41,-2.72,-2.40,-2.70,
                       -2.95,-3.26,-2.72,-3.02,-2.53,-2.83,-2.41,-2.72,-2.40,-2.70,
                        -3.23,-3.51,-3.00,-3.27,-2.81,-3.07,-2.71,-2.96,-2.69,-2.95,
                        -3.59,-3.93,-3.43,-3.72,-3.32,-3.59,-3.31,-3.58,-3.27,-3.55,
                       -3.59,-3.93,-3.43,-3.72,-3.32,-3.59,-3.31,-3.58,-3.27,-3.55,
                        -3.92,-4.23,-3.71,-3.98,-3.59,-3.86,-3.57,-3.81,-3.54,-3.78),ncol=10,nrow=6,byrow=TRUE)
rownames(cv_LKSN_test)<-rep(c("F","R","M"),2)
colnames(cv_LKSN_test)<-c(rep(c(100,200,500,1000,2000),each=2))


cv_MR_test<-matrix(c(-2.398,-1.815,-1.476,-2.403,-1.829,-1.530,-2.452,-1.835,-1.515,-2.319,-1.643,-1.279,
-2.562,-2.009,-1.682,-2.649,-2.046,-1.738,-2.638,-2.080,-1.768,-2.587,-1.913,-1.580,
-2.660,-2.189,-1.914,-2.751,-2.224,-1.951,-2.774,-2.250,-2.703,-2.106,-1.796,-1.967,
-2.382,-1.856,-1.509,-2.398,-1.860,-1.532,-2.437,-1.875,-1.561,-2.289,-1.693,-1.336,
-2.538,-1.943,-1.645,-2.500,-1.958,-1.677,-2.581,-2.001,-1.692,-2.492,-1.855,-1.524,
-2.620,-2.167,-1.898,-2.632,-2.169,-1.913,-2.781,-2.213,-2.606,-2.053,-1.775,-1.937,
-2.400,-1.866,-1.552,-2.404,-1.876,-1.577,-2.460,-1.905,-1.591,-2.426,-1.776,-1.435,
-2.406,-1.918,-1.623,-2.506,-1.946,-1.651,-2.500,-1.942,-1.658,-2.497,-1.888,-1.578,
-2.613,-2.143,-1.890,-2.684,-2.165,-1.912,-2.680,-2.183,-1.919,-2.696,-2.140,-1.838,
-2.454,-1.918,-1.605,-2.471,-1.920,-1.618,-2.434,-1.897,-1.592,-2.438,-1.856,-1.538,
-2.470,-1.927,-1.618,-2.491,-1.910,-1.619,-2.523,-1.953,-1.661,-2.487,-1.894,-1.601,
-2.646,-2.174,-1.919,-2.698,-2.171,-1.912,-2.639,-2.172,-1.928,-2.699,-2.132,-1.872,
-2.465,-1.935,-1.615,-2.452,-1.922,-1.617,-2.469,-1.890,-1.620,-2.508,-1.960,-1.634,
-2.453,-1.942,-1.654,-2.461,-1.917,-1.629,-2.491,-1.938,-1.630,-2.556,-1.961,-1.634,
-2.662,-2.190,-1.932,-2.656,-2.175,-1.918,-2.700,-2.191,-1.910,-2.777,-2.230,-1.956,
-2.517,-1.962,-1.669,-2.474,-1.924,-1.626,-2.490,-1.927,-1.624,-2.589,-2.030,-1.739,
-2.428,-1.959,-1.642,-2.478,-1.880,-1.598,-2.490,-1.959,-1.642,-2.679,-2.083,-1.758,
-2.630,-2.201,-1.956,-2.631,-2.176,-1.900,-2.686,-2.202,-1.940,-2.870,-2.343,-2.050,
-2.533,-1.980,-1.676,-2.545,-1.929,-1.641,-2.540,-1.928,-1.628,-2.747,-2.157,-1.856,
-2.469,-1.969,-1.675,-2.460,-1.930,-1.610,-2.516,-1.925,-1.631,-2.794,-2.187,-1.846,
-2.657,-2.207,-1.967,-2.724,-2.174,-1.927,-2.766,-2.192,-1.922,-3.011,-2.439,-2.167,
-2.493,-1.978,-1.693,-2.441,-1.900,-1.625,-2.548,-1.922,-1.642,-2.805,-2.251,-1.937,
-2.531,-2.020,-1.731,-2.503,-1.919,-1.632,-2.532,-1.967,-1.659,-2.825,-2.266,-1.951,
-2.694,-2.230,-1.989,-2.645,-2.157,-1.909,-2.760,-2.218,-1.938,-3.014,-2.486,-2.252,
-2.503,-2.010,-1.724,-2.479,-1.897,-1.612,-2.519,-1.945,-1.656,-2.945,-2.337,-2.036,
-2.562,-2.056,-1.789,-2.511,-1.943,-1.634,-2.507,-1.961,-1.667,-2.973,-2.405,-2.095,
-2.695,-2.271,-2.032,-2.683,-2.197,-1.919,-2.756,-2.220,-1.951,-3.156,-2.649,-2.368,
-2.513,-2.019,-1.735,-2.519,-1.916,-1.614,-2.547,-1.994,-1.675,-3.051,-2.477,-2.175,
-2.623,-2.151,-1.857,-2.510,-1.968,-1.682,-2.549,-1.987,-1.710,-3.116,-2.479,-2.206,
-2.748,-2.344,-2.081,-2.689,-2.210,-1.943,-2.763,-2.260,-1.987,-3.319,-2.746,-2.473,
-2.621,-2.069,-1.784,-2.467,-1.952,-1.641,-2.566,-1.984,-1.680,-3.211,-2.621,-2.307,
-2.714,-2.206,-1.933,-2.572,-2.019,-1.743,-2.660,-2.066,-1.788,-3.245,-2.682,-2.412,
-2.827,-2.371,-2.147,-2.736,-2.233,-1.986,-2.836,-2.311,-2.024,-3.441,-2.910,-2.645),nrow=33,ncol=12,byrow=TRUE)
rownames(cv_MR_test)<-rep(seq(-0.5,0.5,by=0.1),each=3)
colnames(cv_MR_test)<-c(rep(100,3),rep(250,3),rep(500,3),rep(750,3))

cv_MR_test_squared<-matrix(c(8.493,11.640,20.349,6.989,9.426,16.127,6.406,8.636,14.343,8.497,10.931,16.906,
8.104,12.351,23.399,5.490,7.477,14.414,5.015,6.387,10.580,6.717,8.710,14.343,
9.865,13.669,24.088,7.810,10.347,17.562,7.127,9.282,14.948,9.431,11.929,17.884,
7.043,9.636,17.753,5.406,7.114,12.250,4.964,6.370,10.225,6.578,8.207,12.187,
7.040,10.588,21.642,4.824,6.374,12.572,4.491,5.697,8.991,5.762,7.200,11.596,
8.441,11.795,21.874,6.336,8.175,13.801,5.773,7.331,11.255,7.544,9.179,13.455,
6.119,8.107,14.796,4.670,5.959,9.348,4.433,5.622,8.617,5.553,6.831,10.032,
6.263,8.861,17.844,4.682,6.104,10.146,4.293,5.365,8.351,5.272,6.661,9.831,
7.432,10.094,18.449,5.723,7.162,11.262,5.305,6.616,9.981,6.590,7.928,11.315,
5.640,7.379,12.717,4.490,5.735,8.853,4.203,5.215,7.686,4.974,6.181,8.774,
5.919,7.928,13.888,4.493,5.914,9.764,4.200,5.317,8.122,4.931,6.178,9.062,
6.845,8.941,15.019,5.533,6.955,10.576,5.089,6.234,8.910,6.054,7.212,10.051,
5.381,7.099,11.846,4.351,5.416,8.178,4.046,5.133,7.619,4.529,5.602,8.412,
5.686,7.491,13.976,4.482,5.701,8.857,4.118,5.217,7.723,4.658,5.741,8.501,
6.638,8.484,14.783,5.362,6.609,9.427,5.047,6.072,8.579,5.574,6.746,9.514,
5.143,6.519,10.833,4.353,5.560,8.553,3.987,4.997,7.525,4.433,5.576,8.002,
5.246,6.767,11.776,4.345,5.613,8.617,4.205,5.247,7.841,4.470,5.582,8.182,
6.201,7.668,12.589,5.359,6.549,9.684,4.984,6.110,8.686,5.488,6.547,9.208,
5.007,6.465,10.121,4.374,5.631,9.064,4.076,5.278,8.077,4.425,5.551,8.443,
5.009,6.358,10.341,4.317,5.486,8.971,4.062,5.183,7.726,4.416,5.457,8.275,
6.065,7.418,11.660,5.326,6.693,10.036,5.046,6.182,8.898,5.412,6.568,9.689,
4.817,6.088,9.257,4.430,5.610,8.952,4.124,5.191,7.815,4.411,5.499,8.173,
4.707,5.862,8.798,4.268,5.373,8.606,4.034,5.049,7.567,4.388,5.555,8.262,
5.726,6.895,10.498,5.251,6.545,10.310,4.956,6.035,8.741,5.441,6.537,9.226,
4.559,5.582,7.991,4.535,5.834,8.821,4.142,5.175,7.830,4.548,5.690,8.747,
4.386,5.361,7.583,4.136,5.211,7.794,3.923,4.887,7.322,4.699,5.971,8.895,
5.386,6.429,8.507,5.315,6.557,9.558,4.901,5.981,8.572,5.768,7.118,10.057,
4.399,5.463,7.673,4.497,5.845,9.205,4.300,5.401,8.076,4.926,6.247,9.283,
4.167,5.159,7.250,3.953,4.977,7.450,3.803,4.795,6.934,4.943,6.198,9.706,
5.238,6.242,8.326,5.229,6.506,9.588,4.985,6.040,8.720,6.153,7.562,10.948,
4.136,5.107,7.485,4.576,5.959,9.468,4.217,5.400,8.259,5.403,6.968,10.306,
4.166,5.153,7.478,3.900,4.901,7.431,3.781,4.859,7.216,5.831,7.220,10.506,
5.035,6.077,8.284,5.303,6.553,9.978,4.987,6.169,8.990,7.021,8.474,11.835),nrow=33,ncol=12,byrow=TRUE)
rownames(cv_MR_test_squared)<-rep(seq(-0.5,0.5,by=0.1),each=3)
colnames(cv_MR_test_squared)<-c(rep(100,3),rep(250,3),rep(500,3),rep(750,3))


Critical_values<-list(b=b,b_min=b_min,cv_ratio_test=cv_ratio_test,cv_lbi_test=cv_lbi_test,cv_cusum_test=cv_cusum_test,respcurve=respcurve,cv_LKSN_test=cv_LKSN_test,
                      cv_MR_test=cv_MR_test,cv_MR_test_squared=cv_MR_test_squared)
return(Critical_values)
}

#' function to generate critical values. For internal use only.
#' @keywords internal
CV<-function(x,statistic,trend,type,m=0,M,d=0,tau,serial=FALSE,lmax=0){
  T<-length(x)
  if(trend=="linear"){
    index<-1:T
    trend_coef<-stats::coef(stats::lm(x~index))[2]
    tre<-index*trend_coef}
  else{tre<-0}
  if(type=="LT" | type=="BT" | type=="HLT" | type=="HLTmin"){
    M_N<-rep(NA,M)
    M_R<-rep(NA,M)
    M_M<-rep(NA,M)
    if(statistic=="mean"){
      for(l in 1:M){
        tstat_sim<-BT(stats::rnorm(length(x))+tre,trend=trend,tau=tau)
        M_N[l]<-mean(tstat_sim)
        M_R[l]<-mean(1/tstat_sim)
        M_M[l]<-max(M_N[l],M_R[l])
      }
    }
    if(statistic=="max"){
      for(l in 1:M){
        tstat_sim<-BT(stats::rnorm(length(x))+tre,trend=trend,tau=tau)
        M_N[l]<-max(tstat_sim)
        M_R[l]<-max(1/tstat_sim)
        M_M[l]<-max(M_N[l],M_R[l])
      }
    }
    if(statistic=="exp"){
      for(l in 1:M){
        tstat_sim<-BT(stats::rnorm(length(x))+tre,trend=trend,tau=tau)
        M_N[l]<-log(mean(exp(.5*tstat_sim)))
        M_R[l]<-log(mean(exp(.5/tstat_sim)))
        M_M[l]<-max(M_N[l],M_R[l])
      }
    }
    crit<-matrix(c(stats::quantile(M_N,c(0.9,.95,.99)),stats::quantile(M_R,c(0.9,.95,.99)),stats::quantile(M_M,c(0.9,.95,.99))),nrow=3,ncol=3,byrow=TRUE)
  }
  if(type=="cusum"){
    tstat_sim<-rep(NA,M)
    for(l in 1:M){tstat_sim[l]<-cusum(cumsum(stats::rnorm(length(x)))+tre,trend=trend,tau=tau,m=m)$tstat}
    crit<-matrix(c(stats::quantile(tstat_sim,c(0.01,0.05,0.1,.99,.95,.9))),ncol=2,nrow=3)
  }
  if(type=="cusum_SK"){
    tstat_sim<-rep(NA,M)
    for(l in 1:M){tstat_sim[l]<-cusum(LongMemoryTS::FI.sim(length(x),1,0,d)+tre,trend=trend,tau=tau,m=m)$tstat}
    crit<-matrix(c(stats::quantile(tstat_sim,c(0.01,0.05,0.1,.99,.95,.9))),ncol=2,nrow=3)
  }
  if(type=="MR"){
    tstat_sim<-rep(NA,M)
    M_N<-rep(NA,M)
    M_R<-rep(NA,M)
    M_M<-rep(NA,M)
    if(statistic=="standard"){
      for(l in 1:M){
        tstat_sim<-MR(LongMemoryTS::FI.sim(length(x),1,0,d)+tre,trend=trend,tau=tau,serial=serial)
        M_N[l]<-min(tstat_sim$tstat1)
        M_R[l]<-min(tstat_sim$tstat2)
        M_M[l]<-min(M_N[l],M_R[l])
      }
    }
    else{
      for(l in 1:M){
        tstat_sim<-MR(LongMemoryTS::FI.sim(length(x),1,0,d)+tre,trend=trend,tau=tau,serial=serial)
        M_N[l]<-max(tstat_sim$tstat1^2)
        M_R[l]<-max(tstat_sim$tstat2^2)
        M_M[l]<-max(M_N[l],M_R[l])
      }
    }
    if(statistic=="standard") crit<-matrix(c(stats::quantile(M_N,c(0.01,.05,.1)),stats::quantile(M_R,c(0.01,.05,.1)),stats::quantile(M_M,c(0.01,.05,.1))),nrow=3,ncol=3,byrow=TRUE)
    if(statistic=="squared") crit<-matrix(c(stats::quantile(M_N,c(0.9,.95,.99)),stats::quantile(M_R,c(0.9,.95,.99)),stats::quantile(M_M,c(0.9,.95,.99))),nrow=3,ncol=3,byrow=TRUE)
  }
  if(type=="LBI")
  {
    M_N<-rep(NA,M)
    M_R<-rep(NA,M)
    M_M<-rep(NA,M)
    if(statistic=="mean"){
      for(l in 1:M){
        tstat_sim<-LBI(stats::rnorm(length(x))+tre,trend=trend,tau=tau)
        M_N[l]<-mean(tstat_sim$tstat1)
        M_R[l]<-mean(tstat_sim$tstat2)
        M_M[l]<-max(M_N[l],M_R[l])
      }
    }
    if(statistic=="exp"){
      for(l in 1:M){
        tstat_sim<-LBI(stats::rnorm(length(x))+tre,trend=trend,tau=tau)
        M_N[l]<-log(mean(exp(.5*tstat_sim$tstat1)))
        M_R[l]<-log(mean(exp(.5*tstat_sim$tstat2)))
        M_M[l]<-max(M_N[l],M_R[l])
      }
    }
    if(statistic=="max"){
      for(l in 1:M){
        tstat_sim<-LBI(stats::rnorm(length(x))+tre,trend=trend,tau=tau)
        M_N[l]<-max(tstat_sim$tstat1)
        M_R[l]<-max(tstat_sim$tstat2)
        M_M[l]<-max(M_N[l],M_R[l])
      }
    }
    crit<-matrix(c(stats::quantile(M_N,c(0.9,.95,.99)),stats::quantile(M_R,c(0.9,.95,.99)),stats::quantile(M_M,c(0.9,.95,.99))),nrow=3,ncol=3,byrow=TRUE)
  }
  #  if(type=="NM")
  #  {
  #    M_N<-rep(NA,M)
  #    M_R<-rep(NA,M)
  #    if(statistic=="mean"){
  #      for(l in 1:M){
  #        tstat_sim<-NM(stats::rnorm(length(x)),trend=trend,tau=tau)
  #        M_N[l]<-mean(tstat_sim$tstat1)
  #        M_R[l]<-mean(tstat_sim$tstat2)
  #      }
  #    }
  #    if(statistic=="exp"){
  #      for(l in 1:M){
  #        tstat_sim<-NM(stats::rnorm(length(x)),trend=trend,tau=tau)
  #        M_N[l]<-log(mean(exp(.5*tstat_sim$tstat1)))
  #        M_R[l]<-log(mean(exp(.5*tstat_sim$tstat2)))
  #      }
  #    }
  #    if(statistic=="max"){
  #      for(l in 1:M){
  #        tstat_sim<-NM(stats::rnorm(length(x)),trend=trend,m=m,tau=tau)
  #        M_N[l]<-max(tstat_sim$tstat1)
  #        M_R[l]<-max(tstat_sim$tstat2)
  #      }
  #    }
  #    crit<-matrix(c(stats::quantile(M_N,c(0.9,.95,.99)),stats::quantile(M_R,c(0.9,.95,.99))),nrow=2,ncol=3,byrow=TRUE)
  #  }
  if(type=="LKSN"){
    M_N<-rep(NA,M)
    M_R<-rep(NA,M)
    M_M<-rep(NA,M)
    for(l in 1:M){
      tstat_sim<-LKSN(cumsum(stats::rnorm(length(x)))+tre,trend=trend,tau=tau,lmax=lmax)
      M_N[l]<-min(tstat_sim$tstat1)
      M_R[l]<-min(tstat_sim$tstat2)
      M_M[l]<-min(M_N[l],M_R[l])
    }
    crit<-matrix(c(stats::quantile(M_N,c(0.1,.05)),stats::quantile(M_R,c(0.1,.05)),stats::quantile(M_M,c(0.1,.05))),nrow=3,ncol=2,byrow=TRUE)
  }
  return(crit)
}

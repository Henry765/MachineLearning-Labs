function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returs the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);    %m is a single data point

% You need to return the following variables correctly.
centroids = zeros(K, n);

K = size(centroids, 1); %return centroids


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%
idxTemp = zeros(size(X,1), 1);


numExamplePerCentriod = 0;
%for i=1:K
%   for x=1:size(X,1)
%       
%        if idx(x) == i
%            idxTemp(x)=i;
%            numExamplePerCentriod=numExamplePerCentriod+1;
%            centroids(i,:) = (1/size(X(i,:)))'*(sum(X(i,:)));
%        end
%   end  
%   numExamplePerCentriod = 0;

%end

%while != jkjk
%for i=1:K
%    for x=1:size(X,1)
%        if idxTemp(x) ~= 0
%            centroids(k) = (1/length())*sum(X);
%        end
%    end
%end
    
    
    %centroids(k) = (1/length(findClosestCentroids(X, k)))*sum(X);

    %centroidsCount = zeros(K,1);
centroidsCount = zeros(K,1);
for k = 1:K
    for mcounter =1:m
        if (idx(mcounter) == k)
            centroidsCount(k) = centroidsCount(k) + 1;            
            centroids(k, :) = centroids(k, :) + X(mcounter, :);
        end
    end
end

for k =1:K
    centroids(k, :) = (1./centroidsCount(k))*centroids(k, :);
end
% =============================================================


end


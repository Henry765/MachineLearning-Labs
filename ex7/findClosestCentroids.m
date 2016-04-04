function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%
		%dist = (centroids(j, :) - x_row) * (centroids(j, :) - x_row)';
            %dist = sum((X(i,:)-centroid).^2);

sizeX = size(X,1);
for i = 1:sizeX
    x = X(i,:)'; %row vector example
    temp = 0;
    currentMinDistance = Inf;
    for j = 1:K
        centroid = centroids(j,:)';   %row vector centroids
        if currentMinDistance > sqrt(sum((x-centroid).^2))
            currentMinDistance = sqrt(sum((x-centroid).^2));
            temp = j;
            %j=i;
        end
    end
    idx(i) = temp;
    %idx(i) = j;
end

%Initializecentroids
%centroids = kMeansInitCentroids(X, K);
%for iter = 1:iterations
    %Clusterassignmentstep:Assigneachdatapointtothe
    %closestcentroid.idx(i)correspondstocˆ(i),theindex
    %ofthecentroidassignedtoexamplei
%    idx = findClosestCentroids(X, centroids);
    %Movecentroidstep:Computemeansbasedoncentroid
    %assignments
%    centroids = computeMeans(X, idx, K);
%end




% =============================================================

end


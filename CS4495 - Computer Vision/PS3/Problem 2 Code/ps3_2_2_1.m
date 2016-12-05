coordsA = dlmread('pts2d-pic_a.txt');
coordsB = dlmread('pts2d-pic_b.txt');
F = SVDFundamental(coordsA, coordsB)
for i = 1 : size_rA
    check = [coordsA(i,:), 1] * F * [transpose(coordsB(i,:)); 1]
end
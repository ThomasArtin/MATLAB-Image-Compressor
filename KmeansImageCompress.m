## Copyright (C) 2020 Thomas Joseph
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} KmeansImageCompress (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Thomas Joseph <Thomas Joseph@DESKTOP-77GTTL0>
## Created: 2020-08-14

function compressedImage = KmeansImageCompress (Image, K)
  uncompressed = double(imread(Image));
  uncompressed = uncompressed/  255;
  im_size = size(uncompressed);
  X = reshape(uncompressed,im_size(1)*  im_size(2),3);
  [idx,centroids] = kmeans(X,K);
  compressedImage = centroids(idx,:);
  compressedImage = reshape(compressedImage,im_size(1),im_size(2),3);
endfunction

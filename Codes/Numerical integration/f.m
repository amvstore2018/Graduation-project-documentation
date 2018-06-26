function dy = f( t,y )
  dy = zeros(2,1);
  dy(1) = y(2);
  dy(2) = 2*y(2)./t - 2*y(1)./(t.^2) + t.*log(t);
end
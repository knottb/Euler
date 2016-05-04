x = 10000;

for i = 100:999,
    for j = 100:999,
        m = i*j;
        
        if(m <= x) continue; end;
        if(m < 100000),
            if(floor(m/10000) == floor(mod(m,10))),
             if(floor(mod(m/1000,10)) == floor(mod(m/10,10)))
                    x = m;
             end
            end
        else,
            if(floor(m/100000) == floor(mod(m,10))),
             if(floor(mod(m/10000,10)) == floor(mod(m/10,10))),
              if(floor(mod(m/1000,10)) == floor(mod(m/100,10))),
                  
                  x = m;
              end
             end
            end
            
        end
        
        
    end
end

disp(x);
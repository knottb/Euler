function x = isFlush(suits)
   x = 0;
   if(all(suits == 'H')), x = 1; return; end;
   if(all(suits == 'S')), x = 1; return; end;
   if(all(suits == 'D')), x = 1; return; end;
   if(all(suits == 'C')), x = 1; return; end;
end
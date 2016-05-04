function x = isStraight(nums)

    x = 0;
    nums = sort(nums);
    if(nums(2)-nums(1) ~= 1), return; end;
    if(nums(3)-nums(2) ~= 1), return; end;
    if(nums(4)-nums(3) ~= 1), return; end;
    if(nums(5)-nums(4) ~= 1), return; end;
    x = nums(5);
end
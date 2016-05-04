function x = is3(nums)


    x = 0;
    if(sum(nums == nums(1)) == 3),
        x = nums(1);
        return;
    end
    
    if(sum(nums == nums(2)) == 3),
        x = nums(2);
        return;
    end
    
    if(sum(nums == nums(3)) == 3),
        x = nums(3);
    end
end
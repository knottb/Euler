function x = is4(nums),

    x = 0;
    if(sum(nums == nums(1)) == 4),
        x = nums(1);
        return;
    end
    
    if(sum(nums == nums(2)) == 4),
        x = nums(2);
        return;
    end
end
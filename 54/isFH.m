function x = isFH(nums)

    x = 0;
    nums = sort(nums);
    if(nums(1) == nums(2))
        if(nums(1) == nums(3)),
            if (nums(4) == nums(5)),
                x = nums(1);
                return;
            end
        else
            if(nums(3) == nums(4)),
                if(nums(4) == nums(5)),
                    x = nums(3);
                end
            end
        end
    end
end
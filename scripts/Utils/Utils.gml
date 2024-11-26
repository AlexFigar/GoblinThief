function keyboard_check_axis(positve, negative)
{
	return (keyboard_check(positve) - keyboard_check(negative))
	
}


function move_towards(start, target, amount){
	if(start > target){
		return clamp(start - amount, target, start);
	}
	
	if(target < start){
		return clamp(start + amount, start, target);
	}
	
	return target;
}

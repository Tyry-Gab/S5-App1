function velocity = Velocity(time)
t1=18.877;
t2=71.13;
t3=18.877;

max_velocity=111.111;
accel = 5.886;

    if (time >= 0 && time <= t1)
        velocity = accel*time;
    elseif (time >= t1 && time <= (t1+t2))
        velocity = max_velocity;
    elseif (time >= (t1+t2) && time <= (t1+t2+t3))
        velocity = -accel.*(time-(t1+t2)) + max_velocity;
    else
        velocity = 0;
    end  
end


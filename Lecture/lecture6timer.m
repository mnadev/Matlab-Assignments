for counter1 = 0:1:60
    for counter2 = 0:1:59
        seconds = num2str(counter2);
        minutes = num2str(counter1);
        message = [minutes ' minutes and ' seconds ' seconds have passed'];
        disp(message)
        pause(1) % pauses for 1 second
    end
end

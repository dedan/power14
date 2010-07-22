
% open connection to power
res=MATCED32('cedOpenX',0);  % v3+ can specify 1401
if (res < 0)
   disp(['1401 not opened, error number ' int2str(res)]);
   return;
end %opened OK if we continue  

% reset the power thing
res=MATCED32('cedResetX');
if (res < 0)
   disp(['could not reset, error number ' int2str(res)]);
   return;
end %opened OK if we continue  

% needed with latest version of the dll (mex file)
res=MATCED32('cedWorkingSet',400,4000);
if (res > 0)
    disp('error with call to cedWorkingSet - try commenting it out');
    return
end    

% next line needs v3 or later of matced32.dll
MATCED32('cedSendString','DIG,O,1,8;');
%pause(5)
MATCED32('cedSendString','DIG,O,0,8;');

res=MATCED32('cedCloseX');
if (res < 0)
   disp(['could not close, error number ' int2str(res)]);
   return;
end 
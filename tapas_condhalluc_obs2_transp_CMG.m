function [pvec, pstruct] = tapas_condhalluc_obs2_transp_CMG(r, ptrans)
% --------------------------------------------------------------------------------------------------
% Copyright (C) 2016 Christoph Mathys, TNU, UZH & ETHZ
%
% This file is part of the HGF toolbox, which is released under the terms of the GNU General Public
% Licence (GPL), version 3. You can redistribute it and/or modify it under the terms of the GPL
% (either version 3 or, at your option, any later version). For further details, see the file
% COPYING or <http://www.gnu.org/licenses/>.

pvec    = NaN(1,length(ptrans));
pstruct = struct;

pvec(1)    = exp(ptrans(1));         % be
pstruct.be = pvec(1);

pvec(2)    = exp(ptrans(2));         % nu
pstruct.nu = pvec(2);

pvec(3)    = 1*(exp(ptrans(3)) + (.75/(1 - .75))) / (exp(ptrans(3)) + (.75/(1-.75) + 1));         % high intensity saliency
pstruct.h_intensity_sal = pvec(3);

pvec(4)    = .25*(exp(ptrans(4)) + (0/(.25 - 0))) / (exp(ptrans(4)) + (0/(.25-0) + 1));
pstruct.l_intensity_conf = pvec(4);

return;

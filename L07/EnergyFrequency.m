function [En, wn] = EnergyFrequency(meff, L, n)
    load('constance.mat');
    En_J = (hbar * pi * n / (L * 1e-9)).^2./(2 * meff * m0);
    En = En_J * J2eV * 1e3;
    wn = En_J / hbar;
    fprintf('For an electron meff = %.2f, in L = %.2d nm\n', meff, L)
    fprintf('E%1i = %3i meV; w%1i = %1.0e rad/s\n',[n; round(En); n; wn])
end

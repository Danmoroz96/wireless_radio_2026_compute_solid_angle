# wireless_radio_2026_compute_solid_angle
The objective of this task is to develop a MATLAB-based tool that calculates the Beam Solid Angle of an antenna. The script performs numerical integration of a user-defined power pattern over a specific spherical region. 

This process is essential for determining how "concentrated" an antenna's radiation is, which directly relates to its directivity and efficiency.

The program is designed to:Accept angular bounds for elevation and azimuth.
Process user-defined mathematical expressions for field and power patterns.
Execute a discrete double summation (numerical integration) over a meshgrid to find the total steradians.

This MATLAB script computes the Beam Area (also known as the Beam Solid Angle) for any given antenna radiation pattern. 
By integrating the power pattern over a sphere (or a specific portion of it), the script provides the solid angle in steradians (sr).

The beam solid angle is defined by the integral of the normalized power pattern over a sphere of 4pi steradians

Usage InstructionsRun the script: 
Open the file in MATLAB and press F5 or click Run.
Define Bounds: Enter the lower and upper limits for theta (0° to 180°) and phi (0° to 360°) when prompted.
Input Patterns:

Field Pattern: e.g., cos(THETA).

Power Pattern: e.g., cos(THETA).^2.

Note: Use element-wise operators (like .^) for the power pattern.
Expected Outputs

The script will display the formatted input parameters followed by the calculated Beam Area:

Full Sphere (0-180°): Using P_n = cos^2 theta, the result is 4.20 sr.

Hemisphere (0-90°): Using P_n = cos^2 theta, the result is 2.10 sr.

The code and output are in files!!!!

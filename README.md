# README (mfx-submission-install-utilities)

[![GitHub release](https://img.shields.io/github/release/danielrherber/mfx-submission-install-utilities.svg)](https://github.com/danielrherber/mfx-submission-install-utilities/releases/latest)
[![](https://img.shields.io/badge/language-matlab-EF963C.svg)](https://www.mathworks.com/products/matlab.html)
[![](https://img.shields.io/github/issues-raw/danielrherber/mfx-submission-install-utilities.svg)](https://github.com/danielrherber/mfx-submission-install-utilities/issues)
[![GitHub contributors](https://img.shields.io/github/contributors/danielrherber/mfx-submission-install-utilities.svg)](https://github.com/danielrherber/mfx-submission-install-utilities/graphs/contributors)

[![license](https://img.shields.io/github/license/danielrherber/mfx-submission-install-utilities.svg)](https://github.com/danielrherber/mfx-submission-install-utilities/blob/master/License)

Create straightforward, easy to use INSTALL files for your MATLAB project with the included INSTALL file template and utilities. Users will only need to run the INSTALL file to get the project up and running.

![readme_image.svg](http://www.danielherber.com/img/projects/mfx-submission-install-utilities/readme_image.svg)

---
## Usage
- Download the [project files](https://github.com/danielrherber/mfx-submission-install-utilities/archive/master.zip)
- Open the template [INSTALL file](src/INSTALL_Submission.m)
- Modify the contents of the INSTALL file to suit your project's needs
- See the following for more details:
	- Wiki entries for each utility, [link](https://github.com/danielrherber/mfx-submission-install-utilities/wiki)
	- Example included in this project, [link](examples/example1/INSTALL_Example1.m)
	- INSTALL files from other projects, [link](examples/examples.md)
	- Test functions, [link](tests)

---
## Functionality
The goal of this project is to make it as simple as possible for a user to get your project code up and running. This means automating adding the files to your path, downloading dependencies from the web, opening specific files, and closing the INSTALL file when it has completed. Since no two projects are the same, the INSTALL file can be customized.

### Included Utilities
Below is a list of the included utilities. This functions should be directly included  as a subfunction in the INSTALL file.
- [AddSubmissionContents](src/funcs/AddSubmissionContents.m): Adds all the contents of the current folder and subfolders relative to the file the function is called from
- [OpenThisFile](src/funcs/OpenThisFile.m): Opens a specified m file
- [CloseThisFile](src/funcs/CloseThisFile.m): Closes a specified m file
- [RequiredWebFiles](src/funcs/RequiredWebFiles.m) and [DownloadWebFiles](src/funcs/DownloadWebFiles.m): Downloads files from the web to specified location
- [RequiredWebZips](src/funcs/RequiredWebZips.m) and [DownloadWebZips](src/funcs/DownloadWebZips.m): Downloads and extracts zips files from the web to specified location
	- You no longer need to directly include required MFX and GitHub projects!

### Custom INSTALL tasks

- Check if your Python environment and packages are installed and working (see [link()])
- [TODO] Check to make sure the version of MATLAB is appropriate
- [TODO] Check if the required toolboxes are installed
- [TODO] Run a specific file

---
## Similar Projects

---
## General Information

### Contributors
- [Daniel R. Herber](https://github.com/danielrherber)

### Project Links
- [https://github.com/danielrherber/mfx-submission-install-utilities](https://github.com/danielrherber/mfx-submission-install-utilities)
- [http://www.mathworks.com/matlabcentral/fileexchange/XXXXX](http://www.mathworks.com/matlabcentral/fileexchange/XXXXX)
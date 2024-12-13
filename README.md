# Agri-Energy Connect

## Version 2.0

Author: Alec Cowan - ST10049180

---

## Description

Agri-Energy Connect is a web application developed using ASP.NET Core (Model-View-Controller) in Visual Studio. The platform serves as a marketplace for farmers to share their products, browse offerings from other farmers, and establish contact if interested. The application stores all data in a local SQL database, providing a reliable and efficient means of data storage.

The core functionalities include product listing, product browsing, and farmer contact features, all facilitated through a user-friendly web interface. New farmers must be accepted by the company to ensure the platform's exclusivity before they can access the platform.

---

## Features

- **Web Application:** Agri-Energy Connect is accessible via an internet browser, making it available to farmers on any device.
- **Local Database:** The application uses a local SQL Server database to store all data.
- **Product Listing:** Farmers can add their products to the marketplace.
- **Product Browsing:** Farmers can browse products listed by other farmers.
- **Contact Farmers:** Farmers can contact other farmers by getting their contact email

---

Baseline System Requirements:

To ensure optimal performance, your system should meet the following minimum hardware requirements:

- 4GB of RAM or more
- Dual-core processor clocked at 2GHz or higher
- 250GB HDD or SSD with available space
- Google Chrome or Microsoft Edge internet browser (Firefox not supported yet!)

The software is compatible with Windows 10 and later operating systems.

## Installation Requirements

### Prerequisites

- Visual Studio 2022 or later
- .NET 8.0 SDK
- SQL Server Management Studio (SSMS)

### Installation Steps

1. **Clone the repository**
    - https://github.com/VCWVL/prog7311---programming-3a---part-2-Aleccowan.git

2. **Open the project in Visual Studio**
    - Launch Visual Studio.
    - Open the `PROG7311_P2_ST10049180_ALEC.sln` solution file.

3. **Set up the SQL Server database**
    - Open SQL Server Management Studio (SSMS).
    - Connect to your local SQL Server instance.
    - Run the SQL scripts located in the `DatabaseScripts` folder to create the database and tables.
    - If all else fails, open the Tools on Visual Studio, Nuget Package Manager and select Packaage Manager console
    - From there run "Update-Database"
    - IF YOU HAVE TO USE THE METHOD ABOVE, WHEN YOU REGISTER, YOU WILL HAVE TO GO INTO THE SQL EXPLORER IN VISUAL STUDIO AND CHANGE THE NEW ADMIN ACCOUNT PhoneNumberConfirmed to True and EmailConfirmed to TRUE

4. **Update the connection string**
    - Open `appsettings.json` in the root of the project.
    - Update the `ConnectionStrings:DefaultConnection` to point to your local SQL Server instance.

    ```json
    {
        "ConnectionStrings": {
            "DefaultConnection": "Server=your_server_name;Database=AgriEnergyConnectDb;Trusted_Connection=True;"
        }
    }
    ```

5. **Run the application**
    - In Visual Studio, set the run to "https"
    - Press `F5` to run the application.

---

## Usage

### Product Management

1. **Register**: New farmers can create an account, but their access will be pending until approved by the company to ensure the platform's exclusivity.
2. **Login**: Once approved, farmers can log in to access their accounts.
3. **List Products**: Approved farmers can add new products to the marketplace.
4. **Browse Products**: View products listed by other farmers.
5. **Contact**: Get in touch with other farmers via provided contact information.

---

## Frequently Asked Questions

**Q) Can I access my data from multiple devices?**

A) No, the data is stored locally on the device where the SQL Server instance is hosted. Access is restricted to this device.

**Q) Is my data safe and secure in the local database?**

A) Absolutely. Ensure that your SQL Server instance has proper security measures in place, such as authentication and access controls.

**Q) How do I list a new product?**

A) After logging in, navigate to the "Add Products" section, fill in the product details, and save the product.

**Q) Why can't I log in immediately after registering?**

A) New registrations require approval from the company to ensure the exclusivity of the platform. Once your account is approved, you will be able to log in and access the platform.

---

## Change Log

**Version 2.0 **

- Changed minor details like Register to Request to join

**Version 1.0 (Initial Release)**

- Developed Agri-Energy Connect as a web application using ASP.NET Core.
- Implemented product listing, browsing, and contact functionalities.
- Set up local SQL database for data storage.
- Added farmer registration with pending approval process to ensure platform exclusivity.

---

-- Github Link: https://github.com/VCWVL/prog7311---programming-3a---poe-Aleccowan.git

-- REFERENCED FROM: Farrell, J. 2011. Microsoft Visual C# 2010: an introduction to object-oriented programming. Mason, (OH): South-Western

   and

   Pro C# 9 with .NET 5: Foundational Principles and Practices in Programming, by Andrew Troelsen and Phillip Japikse, Tenth Edition

   and

   https://learn.microsoft.com/en-us/aspnet/core/security/authentication/identity?view=aspnetcore-8.0&tabs=visual-studio
   (For the implementation of Authentication such as Login and Register through Identity)

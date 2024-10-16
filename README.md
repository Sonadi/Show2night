# Show2Night - Online Movie and TV Series Browsing System

## Project Overview

**Show2Night** is an online platform designed for browsing a wide range of movies and TV series, catering to all tastes and preferences. From action-packed films to heartwarming dramas, Show2Night makes it easy for users to search, filter, and find content. The system provides premium features such as movie purchases for premium members, along with subscription options. Users can sign up, log in, and manage their profiles, while administrators handle user account management and content updates.

### Key Features

- **User Registration & Login**: Users can easily register and log in to access the system. The system validates credentials and prompts users to retry in case of incorrect entries.
- **Movie and TV Series Search**: Users can filter search results by movie type, release year, and language.
- **Premium Membership**: Exclusive content is available for premium members, who can choose between monthly and annual subscriptions.
- **Movie Purchase**: Premium users can buy movies using various payment methods, such as Visa, American Express, or Mastercard.
- **User Profile Management**: Users can update their profiles and manage their accounts as needed.
- **Admin Management**: Admins oversee user accounts and content. Inactive accounts for over three years may be removed, and admins ensure the movie database is up-to-date and accurate.

---

## Installation Guide

### Prerequisites

- **Java Development Kit (JDK)**: Ensure that Java 8 or later is installed.
- **Apache Tomcat 9**: The application runs on Apache Tomcat 9.
- **Eclipse IDE**: Use Eclipse for Java EE Developers to manage and deploy the project.
- **MySQL**: Use MySQL for the database.

### Steps to Install and Run

1. **Clone the Repository**

   Open a terminal and clone the repository:

   ```bash
   git clone https://github.com/yourusername/show2night.git
   ```

2. **Import the Project into Eclipse**

   - Open Eclipse and select `File` > `Import`.
   - Select `Existing Projects into Workspace` under the `General` section.
   - Browse to the cloned `show2night` folder and import the project.

3. **Configure Apache Tomcat 9**

   - In Eclipse, go to `Window` > `Preferences`.
   - Expand `Server` and click on `Runtime Environments`.
   - Click `Add`, then select `Apache Tomcat v9.0`.
   - Browse to the Tomcat installation directory and click `Finish`.

4. **Set Up the Database**

   - Install and run MySQL. Create a new database:
   
   ```sql
   CREATE DATABASE show2night_db;
   ```
   - In the `src/main/resources` directory, edit the `database.properties` file to configure the database connection:

   ```properties
   jdbc.url=jdbc:mysql://localhost:3306/show2night_db
   jdbc.username=your-username
   jdbc.password=your-password
   ```

5. **Deploy the Application on Tomcat**

   - Right-click on the project in the Eclipse `Project Explorer`.
   - Select `Run As` > `Run on Server` and choose Apache Tomcat 9.
   - Click `Finish`. The server will start, and the application will be deployed.

6. **Access the Application**

   Once deployed, open your browser and navigate to:

   ```
   http://localhost:8080/show2night
   ```

7. **Building and Running**

   If the project doesn't auto-build:
   - In Eclipse, go to `Project` and select `Build Project`.
   - Then deploy again on Tomcat.

---

## Contributors

The following individuals have made significant contributions to the development of **Show2Night**:

| Contributor | GitHub Profile | Roles |
|-------------|----------------|-------|
| **Vidura**  | [vidura-12](https://github.com/vidura-12) | Project Owner, Lead Developer |
| **Sonadi** | [Sonadi](https://github.com/Sonadi) | QA Engineer, Testing and Bug Fixing |

Thank you to both contributors for their hard work and commitment to building and improving this platform.

---

## Premium Membership and Movie Purchase Flow

- **Getting a Membership**: Users can select between annual and monthly subscriptions by clicking on the "Get Membership" button.
- **Purchasing Movies**: Premium members can choose movies to purchase. Supported payment methods include Visa, American Express, and Mastercard.
- **Secure Payment**: After selecting a movie, users are prompted to provide their payment details for secure processing.

---

## Feedback and User Experience

The system values user feedback and offers a feedback form for users to provide their opinions on the services and features offered. This feedback is crucial for improving the platform and enhancing the user experience.

---

## Admin Role

The admin is responsible for:
- Managing user accounts (including removal of inactive accounts after three years).
- Ensuring the accuracy of movie content.
- Uploading the latest movie and TV series data.

Regular updates to the movie database ensure that users always have access to the most up-to-date and relevant content.

---

Thank you for using **Show2Night** – your ultimate destination for movies and TV series!
```

This version includes specific instructions for deploying the project using **Apache Tomcat 9** and **Eclipse** as a Dynamic Web Project, along with database configuration and running the project locally.

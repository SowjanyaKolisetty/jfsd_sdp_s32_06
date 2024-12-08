<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Donor</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        .form-container {
            width: 60%;
            max-width: 600px;
            background-color: #ffffff;
            box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            padding: 20px;
            margin: 0 auto;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        h3 {
            text-align: center;
            color: #2c3e50;
            font-weight: bold;
            margin-bottom: 15px;
            position: relative;
            display: inline-block;
        }

        h3::after {
            content: '';
            position: absolute;
            width: 100%;
            height: 3px;
            background-color: #3498db;
            bottom: -5px;
            left: 0;
        }

        form {
            width: 100%;
            display: flex;
            flex-direction: column;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        td {
            padding: 8px;
            text-align: left;
            font-size: 14px;
        }

        input[type="text"], input[type="email"], input[type="password"], input[type="date"], input[type="number"], textarea {
            width: 100%;
            padding: 5px;
            margin: 4px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
            transition: box-shadow 0.3s ease-in-out;
        }

        input[type="text"]:focus, input[type="email"]:focus, input[type="password"]:focus, input[type="date"]:focus, input[type="number"]:focus, textarea:focus {
            box-shadow: 0 0 8px rgba(52, 152, 219, 1);
            border-color: #3498db;
            outline: none;
        }

        input[type="radio"] {
            margin-right: 6px;
        }

        .button-container {
            display: flex;
            justify-content: space-between;
            width: 100%;
            margin-top: 15px;
        }

        input[type="submit"], input[type="reset"] {
            background-color: #3498db;
            color: white;
            padding: 8px 14px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 14px;
            transition: background-color 0.3s, box-shadow 0.3s ease-in-out;
        }

        input[type="submit"]:hover, input[type="reset"]:hover {
            background-color: #1a252f;
            box-shadow: 0 0 8px rgba(52, 152, 219, 1);
        }

        label {
            font-size: 14px;
            font-weight: bold;
            color: #34495e;
        }

        @media screen and (max-width: 768px) {
            .form-container {
                width: 90%;
            }
        }
    </style>
</head>
<body>
    <div class="main-content">
        <div class="form-container" align="center">
            <form method="post" action="insertdonor">
                <h3>Add Donor</h3>
                <table>
                    <tr>
                        <td><label for="name">Enter Name</label></td>
                        <td>
                            <input type="text" id="name" name="name" required pattern="[A-Za-z\s]+" 
                                   title="Name can only contain alphabets and spaces." />
                        </td>
                    </tr>
                    <tr>
                        <td><label>Select Gender</label></td>
                        <td>
                            <input type="radio" id="male" name="gender" value="MALE" required />
                            <label for="male">Male</label>
                            <input type="radio" id="female" name="gender" value="FEMALE" required />
                            <label for="female">Female</label>
                            <input type="radio" id="others" name="gender" value="OTHERS" required />
                            <label for="others">Others</label>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="dob">Enter Date of Birth</label></td>
                        <td>
                            <input type="date" id="dob" name="dob" required 
                                   max="2024-12-07" title="Date cannot be in the future." />
                        </td>
                    </tr>
                    <tr>
                        <td><label for="email">Enter Email ID</label></td>
                        <td>
                            <input type="email" id="email" name="email" required />
                        </td>
                    </tr>
                    <tr>
                        <td><label for="pwd">Enter Password</label></td>
                        <td>
                            <input type="password" id="pwd" name="pwd" required 
                                   pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=]).{8,}" 
                                   title="Password must be at least 8 characters long, include uppercase, lowercase, a number, and a special character." />
                        </td>
                    </tr>
                    <tr>
                        <td><label for="contact">Enter Contact</label></td>
                        <td>
                            <input type="number" id="contact" name="contact" required 
                                   pattern="[6-9][0-9]{9}" title="Enter a valid 10-digit mobile number." />
                        </td>
                    </tr>
                    <tr>
                        <td><label for="address">Enter Address</label></td>
                        <td>
                            <textarea id="address" name="address" rows="3" required 
                                      maxlength="200" title="Address should not exceed 200 characters."></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="button-container">
                            <input type="submit" value="Register" />
                            <input type="reset" value="Clear" />
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</body>
</html>
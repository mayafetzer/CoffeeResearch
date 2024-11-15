import numpy as np
from scipy.integrate import quad
import csv

def read_data(file_name):
    """A function that reads a .csv file and returns a dictionary
        where the keys are the row number and the values are the
        remaining values across the row.
    Parameters:
        file_name - a string, the name of the .csv file
    Returns:
        data_dict - a dictionary with all of the data in it
            keys - an integer, the row number of the line of data
            values - a list of strings, the data values in the corresponding row of the .csv
    """
    data_dict = {}
    try:
        with open(file_name, 'r', encoding='utf-8') as textFile:
            for row_number, line in enumerate(textFile, 1):
                if row_number == 1:  # Skip the first row
                    continue
                try:
                    values = line.strip().split(',')  # Split the line by comma
                    data = values[1:]  # Elements are the list of values
                    data_dict[row_number] = data
                except IndexError:
                    print(f"Error processing line {row_number}: Insufficient data")
        return data_dict
    except FileNotFoundError:
        print(f"File '{file_name}' not found.")

def organize_data(data_dict):
    """A function that organizes the dictionary of data into three lists:
        - the amount of insecticide
        - the days paralyzed
        - the days alive
    Parameters:
        data_dict -         data_dict - a dictionary with all of the data in it
            keys - an integer, the row number of the line of data
            values - a list, the data values in the corresponding row of the .csv
    Returns:
        data_list - a list of floats with the organized data
    """
    assert data_dict != {}
    assert type(data_dict) == dict
    # a is amplitude
    # b is position
    # c is width * 0.6006
    print(data_dict)
    a_low_index = 9
    a_med_index = 10
    a_high_index = 11
    b_low_index = 3
    b_med_index = 4
    b_high_index = 5
    c_low_index = 6
    c_med_index = 7
    c_high_index = 8
    a_low = []
    b_low = []
    c_low = []
    a_med = []
    b_med = []
    c_med = []
    a_high = []
    b_high = []
    c_high = []
    try:
        for key in data_dict:
            print(key)
            data_list = data_dict[key]
            if data_list[0] == '':
                continue
            # The authors of the dataset used '.' to denote an empty set, remove empty datalines
            a_low.append(float(data_list[a_low_index]))
            b_low.append(float(data_list[b_low_index]))
            c_low.append(float(data_list[c_low_index]))
            a_med.append(float(data_list[a_med_index]))
            b_med.append(float(data_list[b_med_index]))
            c_med.append(float(data_list[c_med_index]))
            a_high.append(float(data_list[a_high_index]))
            b_high.append(float(data_list[b_high_index]))
            c_high.append(float(data_list[c_high_index]))
        return a_low,a_med,a_high,b_low,b_med,b_high,c_low,c_med,c_high
    except:
        print('Error in indexing data')

def gaussian(x, a, b, c):
    return a * np.exp(-((x - b) / c)**2)

def integrate_gaussian(a, b, c):
    integrals = []
    for i in range(len(a)):
        integral, _ = quad(gaussian, -np.inf, np.inf, args=(a[i], b[i], c[i]))
        integrals.append(integral)
    return integrals



def export_to_csv(filename, data_lists, headers=None):
    """
    Export data_lists to a CSV file.

    Parameters:
        filename (str): Name of the CSV file to export.
        data_lists (list of lists): List of lists containing the data to be exported.
        headers (list, optional): List of header strings. Default is None.
    """
    with open(filename, 'w', newline='') as csvfile:
        writer = csv.writer(csvfile)
        if headers:
            writer.writerow(headers)
        for row in data_lists:
            writer.writerow(row)

def main():
    data_dict = read_data('Organized Grinder Statistics 05.01.2024.csv')
    a_low,a_med,a_high,b_low,b_med,b_high,c_low,c_med,c_high = organize_data(data_dict)
    integrals_low = integrate_gaussian(a_low,b_low,c_low)
    integrals_med = integrate_gaussian(a_med,b_med,c_med)
    integrals_high = integrate_gaussian(a_high,b_high,c_high)
    print("Integrals Low:", integrals_low)
    print("Integrals Med:", integrals_med)
    print("Integrals High:", integrals_high)
    headers = ['Integrals Low:', 'Integrals Med:', 'Integrals High:']
    data_lists = [integrals_low,integrals_med,integrals_high]
    export_to_csv('output.csv', data_lists, headers)
    
main()

import pandas as pd
import numpy as np
import argparse as argparse


def compute_average(data):
    """Compute the average of csv file in a df format."""
    return np.sum(data['order_amount']) / np.sum(data['total_items'])

def main():

    # parse to argument to get the csv file path
    parser = argparse.ArgumentParser()
    parser.add_argument('--csv', type=str, required=True)
    args = parser.parse_args()
    csv_file = args.csv

    # open the csv file and compute the AOV
    with open(csv_file, 'r') as csv_file:
        df = pd.read_csv(csv_file)
        # mean = df['order_amount'].mean()
        print(compute_average(df))



if __name__ == "__main__":
    main()
